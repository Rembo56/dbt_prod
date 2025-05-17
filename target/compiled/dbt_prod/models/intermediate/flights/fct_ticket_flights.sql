

select
  ticket_no, 
   flight_id, 
   fare_conditions, 
   amount
from "dbt_course"."bookings_dbt"."stg_flights__ ticket_flights"

where passenger_id not in (select passenger_id from "dbt_course"."bookings_dbt"."indentificat_passenger")