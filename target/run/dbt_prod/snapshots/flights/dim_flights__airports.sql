
      update "dbt_course"."snapshot"."dim_flights__airports"
    set dbt_effective_date_to = DBT_INTERNAL_SOURCE.dbt_effective_date_to
    from "dim_flights__airports__dbt_tmp175736216659" as DBT_INTERNAL_SOURCE
    where DBT_INTERNAL_SOURCE.dbt_scd_id::text = "dbt_course"."snapshot"."dim_flights__airports".dbt_scd_id::text
      and DBT_INTERNAL_SOURCE.dbt_change_type::text in ('update'::text, 'delete'::text)
      
        and ("dbt_course"."snapshot"."dim_flights__airports".dbt_effective_date_to = '9999-01-01'::date or "dbt_course"."snapshot"."dim_flights__airports".dbt_effective_date_to is null);
      


    insert into "dbt_course"."snapshot"."dim_flights__airports" ("airport_code", "airport_name", "city", "coordinates", "timezone", "dbt_updated_at", "dbt_effective_date_from", "dbt_effective_date_to", "dbt_scd_id")
    select DBT_INTERNAL_SOURCE."airport_code",DBT_INTERNAL_SOURCE."airport_name",DBT_INTERNAL_SOURCE."city",DBT_INTERNAL_SOURCE."coordinates",DBT_INTERNAL_SOURCE."timezone",DBT_INTERNAL_SOURCE."dbt_updated_at",DBT_INTERNAL_SOURCE."dbt_effective_date_from",DBT_INTERNAL_SOURCE."dbt_effective_date_to",DBT_INTERNAL_SOURCE."dbt_scd_id"
    from "dim_flights__airports__dbt_tmp175736216659" as DBT_INTERNAL_SOURCE
    where DBT_INTERNAL_SOURCE.dbt_change_type::text = 'insert'::text;

  