{{
  config(
    materialized = 'table',
    meta = {
      'owner': 'sql_file_owner@mail.com'
    }
    )
}}

select {{ show_columns_relation('src_flights__bookings') }}
 
from {{ ref('src_flights__bookings')}}

