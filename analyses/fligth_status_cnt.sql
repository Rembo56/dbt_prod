{% set status_query %}
select distinct 
    status
from 
    {{ ref('src_flights__flights') }}
{% endset %}

{% set status_query_result = run_query(status_query) %}
{% if execute %}
    {% set flght_statuses = status_query_result.columns[0].values() %}
{% else %}
    {% set flght_statuses = [] %}
{% endif %}

select
    {% for status in flght_statuses %}
   sum(case when status = '{{ status }}' then 1 else 0 end) as {{ 'status_' ~ status | replace(' ', '_') | lower }}
    {%- if not loop.last %},{% endif %}
    {%- endfor %}

from 
    {{ ref('src_flights__flights') }}
group by 1=1
