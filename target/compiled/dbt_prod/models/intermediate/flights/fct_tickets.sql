

select
  ticket_no, 
    book_ref, 
    passenger_id, 
    passenger_name, 
    contact_data
from "dbt_course"."bookings_dbt"."stg_flights__ tickets"

where passenger_id in (select passenger_id from "dbt_course"."bookings_dbt"."indentificat_passenger")