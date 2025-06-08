

 select 
  book_ref,
  book_date, 
  total_amount

  
  from "dbt_course"."demo_src"."bookings"

  
    where 
      book_date > (select max(book_date) from "dbt_course"."demo_src"."bookings") - interval '97 day'
  

  