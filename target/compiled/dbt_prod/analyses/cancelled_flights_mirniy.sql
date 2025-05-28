select 
    scheduled_departure::date  as scheduled_departure,
    count(*) as cancelled_flights_cnt

from 
    "dbt_course"."bookings_dbt"."fct_flights"

where 
    departure_airport = 'MJZ' and status = 'Cancelled'

group by 
    scheduled_departure::date

--MJZ