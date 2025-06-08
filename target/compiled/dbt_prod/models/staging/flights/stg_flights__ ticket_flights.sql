


select
   ticket_no, 
   flight_id, 
   fare_conditions, 
   amount

from "dbt_course"."demo_src"."ticket_flights"
limit 100000
