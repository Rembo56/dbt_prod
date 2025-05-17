

 select 
  book_ref,
  book_date, 
  total_amount
  
  from "dbt_course"."demo_src"."bookings"

  
    where 
      book_ref > (select max(book_ref) from "dbt_course"."bookings_dbt"."src_flights__bookings_delete_insert")
  