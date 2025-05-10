select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select "total_amount"
from "dbt_course"."bookings_dbt"."fct_bookings_v1"
where "total_amount" is null



      
    ) dbt_internal_test