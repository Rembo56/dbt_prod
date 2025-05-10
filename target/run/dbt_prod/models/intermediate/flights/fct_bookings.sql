
  
    

  create  table "dbt_course"."bookings_dbt"."fct_bookings_v1__dbt_tmp"
  
  
    
  
  (
    book_ref bpchar(6) not null,
    book_date timestamptz,
    "total_amount" numeric(10, 2) check (total_amount > 0)
    
    )
 ;
    insert into "dbt_course"."bookings_dbt"."fct_bookings_v1__dbt_tmp" (
      book_ref, book_date, "total_amount"
    )
  
  (
    
    select book_ref, book_date, "total_amount"
    from (
        

select
  book_ref,
  book_date, 
  total_amount
from "dbt_course"."bookings_dbt"."src_flights__bookings"
    ) as model_subq
  );
  