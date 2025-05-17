
      insert into "dbt_course"."bookings_dbt"."src_flights__bookings_append" ("book_ref", "book_date", "total_amount")
    (
        select "book_ref", "book_date", "total_amount"
        from "src_flights__bookings_append__dbt_tmp143143505014"
    )


  