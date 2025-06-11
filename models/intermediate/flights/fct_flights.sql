{{
  config(
    materialized = 'table'
    )
}}

select 
    flight_id, 
   {{ dbt_utils.generate_surrogate_key(['flight_no']) }} surrogat_k, 
    flight_no
    scheduled_departure, 
    scheduled_arrival,
    departure_airport,
    arrival_airport,
    status,
    aircraft_code,
    actual_departure, 
    actual_arrival
    
from {{ ref('src_flights__flights') }}

