
  
    

  create  table "dbt_course"."bookings_dbt"."fct_tickets__dbt_tmp"
  
  
    as
  
  (
    

select
  ticket_no, 
    book_ref, 
    passenger_id, 
    passenger_name, 
    contact_data
from "dbt_course"."bookings_dbt"."stg_flights__tickets"

where passenger_id in (select passenger_id from "dbt_course"."bookings_dbt_seeds"."indentificat_passenger")
  );
  