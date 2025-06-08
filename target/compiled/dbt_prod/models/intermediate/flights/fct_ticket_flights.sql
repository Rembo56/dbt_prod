

select
  ticket_no, 
   flight_id, 
   fare_conditions, 
   amount
from "dbt_course"."bookings_dbt"."stg_flights__ticket_flights"