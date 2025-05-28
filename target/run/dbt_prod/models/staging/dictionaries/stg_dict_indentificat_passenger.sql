
  
    

  create  table "dbt_course"."bookings_dbt"."stg_dict_indentificat_passenger__dbt_tmp"
  
  
    as
  
  (
    


select

    passenger_id
   
from "dbt_course"."bookings_dbt_seeds"."indentificat_passenger"
  );
  