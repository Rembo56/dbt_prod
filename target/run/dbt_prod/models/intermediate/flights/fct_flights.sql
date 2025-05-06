
  
    

  create  table "dbt_course"."bookings_dbt"."fct_flights__dbt_tmp"
  
  
    as
  
  (
    

select 
    flight_id, 
    flight_no, 
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
  