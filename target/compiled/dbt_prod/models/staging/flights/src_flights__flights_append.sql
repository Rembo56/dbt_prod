

select
   flight_id, 
   flight_no, 
   scheduled_departure, 
   scheduled_arrival,
   departure_airport,
   arrival_airport,
   status,
   aircraft_code,
   actual_departure, 
   actual_arrival
from "dbt_course"."demo_src"."flights"


    where 
      scheduled_departure = (select max(scheduled_departure) from "dbt_course"."demo_src"."flights") - interval '100 day'
  