
  
    

  create  table "dbt_course"."bookings_dbt"."src_flights__bookings__dbt_tmp"
  
  
    as
  
  (
    

 select 
  book_ref,
  book_date, 
  total_amount
  
  from "dbt_course"."demo_src"."bookings"
  );
  