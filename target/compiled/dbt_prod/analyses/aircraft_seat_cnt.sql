select
    aircraft_code,
    count(*)

from
    "dbt_course"."bookings_dbt"."stg_flights__seats"


group by aircraft_code