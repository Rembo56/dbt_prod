{% set flight_statuses = dbt_utils.get_column_values(
    table=ref('fct_flights'), 
    column='status'
) %}

{% for status in flight_statuses %}
    {{ log("СТАТУС: " ~ status, info=True) }}
{% endfor %}