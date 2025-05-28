
  
    

  create  table "dbt_course"."bookings_dbt"."fct_bookings__dbt_tmp"
  
  
    as
  
  (
    

select
  book_ref,
  book_date, 
  total_amount
from "dbt_course"."bookings_dbt"."src_flights__bookings"
  );
  