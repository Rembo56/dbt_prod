{% set current_date = run_started_at | string | truncate(10, True, "")   %}
{% set current_year = run_started_at | string | truncate(4, True, "") | int  %}
{% set prev_year = current_year - 10 %}

SELECT 
    COUNT(*) as {{ adapter.quote('select some data') }}
FROM
    {{ ref('fct_flights') }}
WHERE 

    scheduled_departure BETWEEN '{{ current_date }}' AND '{{ current_date | replace(current_year, prev_year) }}'



{% set relation = api.Relation.create(
      database="dbt_course",
      schema="bookings_dbt",
      identifier="fct_fligths",
      type="table"
    ) 
%}

{% for column in adapter.get_columns_in_relation(relation) -%}
  {{ "Column: " ~ column }}
{% endfor %}