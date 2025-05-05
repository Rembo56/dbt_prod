
  
    

  create  table "dbt_course"."bookings_dbt"."stg_flights__aircrafts__dbt_tmp"
  
  
    as
  
  (
    


SELECT
   aircraft_code, model, "range"
FROM "dbt_course"."demo_src"."aircrafts"
  );
  