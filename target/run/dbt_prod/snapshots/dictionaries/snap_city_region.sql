
      update "dbt_course"."snapshot"."snap_city_region"
    set dbt_valid_to = DBT_INTERNAL_SOURCE.dbt_valid_to
    from "snap_city_region__dbt_tmp171847895543" as DBT_INTERNAL_SOURCE
    where DBT_INTERNAL_SOURCE.dbt_scd_id::text = "dbt_course"."snapshot"."snap_city_region".dbt_scd_id::text
      and DBT_INTERNAL_SOURCE.dbt_change_type::text in ('update'::text, 'delete'::text)
      
        and ("dbt_course"."snapshot"."snap_city_region".dbt_valid_to = '9999-01-01'::date or "dbt_course"."snapshot"."snap_city_region".dbt_valid_to is null);
      


    insert into "dbt_course"."snapshot"."snap_city_region" ("city", "region", "updated_at", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id", "dbt_is_deleted")
    select DBT_INTERNAL_SOURCE."city",DBT_INTERNAL_SOURCE."region",DBT_INTERNAL_SOURCE."updated_at",DBT_INTERNAL_SOURCE."dbt_updated_at",DBT_INTERNAL_SOURCE."dbt_valid_from",DBT_INTERNAL_SOURCE."dbt_valid_to",DBT_INTERNAL_SOURCE."dbt_scd_id",DBT_INTERNAL_SOURCE."dbt_is_deleted"
    from "snap_city_region__dbt_tmp171847895543" as DBT_INTERNAL_SOURCE
    where DBT_INTERNAL_SOURCE.dbt_change_type::text = 'insert'::text;

  