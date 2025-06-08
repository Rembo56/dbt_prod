{% macro safe_select(table_name = 'bookings_dbt.stg_flights__seats') %}
  {%- set relation = adapter.get_relation(
        database=target.database,
        schema=table_name.split('.')[0],
        identifier=table_name.split('.')[1]
      ) 
  -%}

  {%- if relation -%}
    {{ log("SELECT * FROM " ~ relation, info=true) }}
    SELECT * FROM {{ relation }}
  {%- else -%}
    {{ log("SELECT NULL AS result (table " ~ table_name ~ " does not exist)", info=true) }}
    SELECT NULL AS result
  {%- endif -%}
{% endmacro %}