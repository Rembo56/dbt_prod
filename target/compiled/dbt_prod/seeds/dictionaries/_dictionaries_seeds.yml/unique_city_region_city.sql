
    
    

select
    city as unique_field,
    count(*) as n_records

from "dbt_course"."bookings_dbt_seeds"."city_region"
where city is not null
group by city
having count(*) > 1


