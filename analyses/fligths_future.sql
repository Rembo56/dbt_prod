{% set current_date_str = run_started_at | string | truncate(10, True, "") %}

{% set flights_query %}
SELECT
 count(*) as future_flights_count,
 '{{ current_date_str }}' as calculation_date
FROM
 {{ ref('fct_flights') }}
WHERE
 scheduled_departure >= '{{ current_date_str }}'
{% endset %}

{% set result = run_query(flights_query) %}

{% if execute %}
 {% set count = result.columns[0].values()[0] %}
 {% set date = result.columns[1].values()[0] %}
{% else %}
 {% set count = 0 %}
 {% set date = null %}
{% endif %}

SELECT
 {{ count }} as future_flights_count,
 {{ date }} as calculation_date