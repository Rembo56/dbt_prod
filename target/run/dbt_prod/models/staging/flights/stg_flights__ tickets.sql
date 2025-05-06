
  
    

  create  table "dbt_course"."bookings_dbt"."stg_flights__ tickets__dbt_tmp"
  
  
    as
  
  (
    


select
    ticket_no, 
    book_ref, 
    passenger_id, 
    passenger_name, 
    contact_data
from "dbt_course"."demo_src"."tickets"
  );
  