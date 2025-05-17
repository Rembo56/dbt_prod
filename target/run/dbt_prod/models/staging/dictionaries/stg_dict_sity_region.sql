
  
    

  create  table "dbt_course"."bookings_dbt"."stg_dict_sity_region__dbt_tmp"
  
  
    as
  
  (
    


select
    city,
    region

from "dbt_course"."bookings_dbt"."city_region"
  );
  