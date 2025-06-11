
  
    

  create  table "dbt_course"."bookings_dbt"."fct_flights__dbt_tmp"
  
  
    as
  
  (
    

select 
    flight_id, 
   md5(cast(coalesce(cast(flight_no as TEXT), '_dbt_utils_surrogate_key_null_') as TEXT)) surrogat_k, 
    flight_no
    scheduled_departure, 
    scheduled_arrival,
    departure_airport,
    arrival_airport,
    status,
    aircraft_code,
    actual_departure, 
    actual_arrival
    
from "dbt_course"."bookings_dbt"."src_flights__flights"
  );
  