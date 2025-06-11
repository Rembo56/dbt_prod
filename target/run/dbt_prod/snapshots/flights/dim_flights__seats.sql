
      update "dbt_course"."snapshot"."dim_flights__seats"
    set dbt_effective_date_to = DBT_INTERNAL_SOURCE.dbt_effective_date_to
    from "dim_flights__seats__dbt_tmp171849145256" as DBT_INTERNAL_SOURCE
    where DBT_INTERNAL_SOURCE.dbt_scd_id::text = "dbt_course"."snapshot"."dim_flights__seats".dbt_scd_id::text
      and DBT_INTERNAL_SOURCE.dbt_change_type::text in ('update'::text, 'delete'::text)
      
        and ("dbt_course"."snapshot"."dim_flights__seats".dbt_effective_date_to = '9999-01-01'::date or "dbt_course"."snapshot"."dim_flights__seats".dbt_effective_date_to is null);
      


    insert into "dbt_course"."snapshot"."dim_flights__seats" ("aircraft_code", "seat_no", "fare_conditions", "dbt_updated_at", "dbt_effective_date_from", "dbt_effective_date_to", "dbt_scd_id")
    select DBT_INTERNAL_SOURCE."aircraft_code",DBT_INTERNAL_SOURCE."seat_no",DBT_INTERNAL_SOURCE."fare_conditions",DBT_INTERNAL_SOURCE."dbt_updated_at",DBT_INTERNAL_SOURCE."dbt_effective_date_from",DBT_INTERNAL_SOURCE."dbt_effective_date_to",DBT_INTERNAL_SOURCE."dbt_scd_id"
    from "dim_flights__seats__dbt_tmp171849145256" as DBT_INTERNAL_SOURCE
    where DBT_INTERNAL_SOURCE.dbt_change_type::text = 'insert'::text;

  