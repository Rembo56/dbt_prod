
  
    

  create  table "dbt_course"."bookings_dbt"."src_flights__boarding_passes__dbt_tmp"
  
  
    as
  
  (
    


select
   ticket_no, 
   flight_id, 
   boarding_no, 
   seat_no
from "dbt_course"."demo_src"."boarding_passes"
  );
  