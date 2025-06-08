{{
      config(
        materialized = 'incremental',
        incremental_strategy = 'append',
        tags = ['bookings'],
        
        )
}}

 select 
  {{ bookref_to_bigint(book_ref='book_ref') }} as book_ref,
  book_date,
  {{ kopeck_to_ruble('total_amount', -2) }} as total_amount
  
  
  from {{ source('demo_src', 'bookings') }}

 

  {% if is_incremental() %}
    where 
      ('0x' || book_ref)::bigint > (SELECT MAX(('0x' || book_ref)::bigint) FROM {{ this }})

  {% endif %}

    

{% if execute %}

  {% for node in graph.nodes.values() -%}
    {% if node.resource_type == 'model' or node.resource_type == 'seed' %}
    -- {{ node.name }}
    -- ---------------
    -- {{ node.depends_on }}
    {% endif %}
  {% endfor %}
{% endif %}