{{
      config(
        materialized = 'table',
        tags = ['bookings']
        
        )
}}

 select 
  book_ref,
  book_date, 
  total_amount
  
  from {{ source('demo_src', 'bookings') }}
  {{ limit_data_dev('book_date', 3000) }}


  {% if execute %}
  {% set models_list =[] %}
  {% set seed_list = [] %}
  {% set snapshot_list = [] %}

  {% for node in graph.nodes.values() -%}
    {% if node.resource_type == 'model' %}
      {% do models_list.append(node) %}
    {% elif node.resource_type == 'seed' %}
       {% do seed_list.append(node) %}
    {% elif node.resource_type == 'snapshot' %}
       {% do snapshot_list.append(node) %}


    {% endif %}
  {% endfor %}
  -- Количесво моделей: {{ models_list | length }}
  -- Количесво seed : {{ seed_list | length }}
  -- Количесво snapshot: {{ snapshot_list | length }}
{% endif %}


    