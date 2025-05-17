select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select city
from "dbt_course"."bookings_dbt"."city_region"
where city is null



      
    ) dbt_internal_test