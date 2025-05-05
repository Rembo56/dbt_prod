
  
    

  create  table "dbt_course"."bookings_dbt"."stg_flights__seats__dbt_tmp"
  
  
    as
  
  (
    


select
    aircraft_code, 
    seat_no, 
    fare_conditions
from "dbt_course"."demo_src"."seats"
  );
  