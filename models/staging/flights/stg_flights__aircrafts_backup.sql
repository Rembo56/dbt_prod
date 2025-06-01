{{
    config(
        materialized = 'table',
        alias = 'stg_flights__aircrafts_backup',
        pre_hook = "
            {% if execute %}
                {% set current_timestamp = modules.datetime.datetime.now().strftime('%Y_%m_%d_%H%M%S') %}
                {% set backup_relation = api.Relation.create(
                    database = 'intermediate',
                    schema = 'intermediate',
                    identifier = 'stg_flights__aircrafts_backup_' ~ current_timestamp,
                    type = 'table'
                ) %}
                
                {% if adapter.get_relation(this.database, this.schema, this.name) %}
                    {% do adapter.rename_relation(this, backup_relation) %}
                    {{ log('Renamed existing table to: ' ~ backup_relation, info=True) }}
                {% endif %}
            {% endif %}
        "
    )
}}

SELECT
    aircraft_code,
    model,
    "range"
FROM {{ source('demo_src', 'aircrafts') }}