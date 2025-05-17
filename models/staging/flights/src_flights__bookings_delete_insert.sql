{{
      config(
        materialized = 'incremental',
        incremental_strategy = 'delete+insert',
        tags = ['bookings']
        )
}}

 select 
  book_ref,
  book_date, 
  total_amount
  
  from {{ source('demo_src', 'bookings') }}

  {% if is_incremental() %}
    where 
      book_ref > (select max(book_ref) from {{ this }})
  {% endif %}

    