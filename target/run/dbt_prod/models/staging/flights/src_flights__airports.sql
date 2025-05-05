
  
    

  create  table "dbt_course"."bookings_dbt"."src_flights__airports__dbt_tmp"
  
  
    as
  
  (
    

 select 
  airport_code,
  airport_name, 
  city, 
  coordinates, 
  timezone
  from "dbt_course"."demo_src"."airports"
  );
  