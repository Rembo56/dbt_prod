{{
      config(
        materialized = 'table'
        )
}}


select

    passenger_id
   
from {{ ref('indentificat_passenger') }}

