

 select 
  book_ref,
  book_date, 
  total_amount
  
  from "dbt_course"."demo_src"."bookings"

  
    where 
      ('0x' || book_ref)::bigint > (SELECT MAX(('0x' || book_ref)::bigint) FROM "dbt_course"."bookings_dbt"."src_flights__bookings_append")

  