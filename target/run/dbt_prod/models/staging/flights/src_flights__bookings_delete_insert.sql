
      

    insert into "dbt_course"."bookings_dbt"."src_flights__bookings_delete_insert" ("book_ref", "book_date", "total_amount")
    (
        select "book_ref", "book_date", "total_amount"
        from "src_flights__bookings_delete_insert__dbt_tmp175734098429"
    )
  