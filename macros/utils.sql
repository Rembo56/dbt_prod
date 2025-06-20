{% macro drop_old_relations(dryrun=False) %}

    {% if execute %}
    
        {# находим все модели, seed, snapshot проекта dbt #}
        
        {% set current_models = [] %}
        
        {% for node in graph.nodes.values() | selectattr("resource_type", "in", ["model", "snapshot", "seed"]) %}
            {% do current_models.append(node.name) %}
        {% endfor %}
        
        {# формирование скрипта удаления всез таблиц и вьюх, которым не соответствует ни одна модель, сид и снэпшот #}
        
        {% set cleanup_query %}
        WITH MODELS_TO_DROP AS (
            SELECT
                CASE
                    WHEN TABLE_TYPE = 'BASE TABLE' THEN 'TABLE'
                    WHEN TABLE_TYPE = 'VIEW' THEN 'VIEW'
                END AS RELATION_TYPE,
                CONCAT_WS('.', TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME) as RELATION_NAME
            FROM
                {{ target.database }}.INFORMATION_SCHEMA.TABLES
            WHERE
                TABLE_SCHEMA = '{{ target.schema }}'
                AND UPPER(TABLE_NAME) NOT IN (
                    {%- for model in current_models -%}
                        '{{ model.upper() }}'
                        {%- if not loop.last -%}
                            ,
                        {%- endif %}
                    {%- endfor -%}
                )
        )
        SELECT
            'DROP ' || RELATION_TYPE || ' ' || RELATION_NAME || ';' as DROP_COMMANDS
        FROM
            MODELS_TO_DROP;
        {% endset %}
        
        {% do log(cleanup_query) %}
        
        {% set drop_commands = run_query(cleanup_query).columns[0].values() %}
        
        {# удаление лишних таблиц и вьюх / вывод скрипта удаления #}
        
        
        {% if drop_commands %}
            {% if dryrun | as_bool == False %}
                {% do log('Executing DROP commands ...', True) %}
            {% else %}
                {% do log('Printing DROP commands ...', True) %}
            {% endif %}
        
            {% for drop_command in drop_commands %}
                {% do log(drop_command, True) %}
                {% if  dryrun | as_bool == False %}
                    {% do run_query(drop_command) %}
                {% endif %}
            {% endfor %}
        {% else %}
             {% do log('No relations to clean', True) %}
        {% endif %}
    
    {% endif %}

{% endmacro %}
    


{% macro show_columns_relation(relation_name) %}
{%- set relation = ref(relation_name) -%}
{%- set columns = adapter.get_columns_in_relation(relation)-%}
{% for column in columns %}
    {{ column.name }}{% if not loop.last %}, {% endif %}
  {{ log("Column: " ~ column, info=true) }}
{% endfor %}

{% endmacro %}




{% macro check_dependencies() %}
  {% if execute %}
    {% for node in graph.nodes.values() %}
      {% if node.resource_type == 'model' %}
        {% if node.depends_on and node.depends_on.nodes | length > 1 %}
          {{ log("⚠️ Модель " ~ node.name ~ " зависит от " ~ node.depends_on.nodes | length ~ " объектов!", info=true) }}
        {% endif %}
      {% endif %}
    {% endfor %}
  {% endif %}
{% endmacro %}