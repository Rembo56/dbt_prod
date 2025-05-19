
      
  
    

  create  table "dbt_course"."snapshot"."dim_flights__aircrafts"
  
  
    as
  
  (
    
    

    select *,
        md5(coalesce(cast(aircraft_code as varchar ), '')
         || '|' || coalesce(cast(now()::timestamp without time zone as varchar ), '')
        ) as dbt_scd_id,
        now()::timestamp without time zone as dbt_updated_at,
        now()::timestamp without time zone as dbt_effective_date_from,
        
  
  coalesce(nullif(now()::timestamp without time zone, now()::timestamp without time zone), '9999-01-01'::date)
  as dbt_effective_date_to
from (
        




select 
aircraft_code,
 model,
"range"

from "dbt_course"."bookings_dbt"."stg_flights__aircrafts"


    ) sbq



  );
  
  