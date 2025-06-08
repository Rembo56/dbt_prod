
  
    

  create  table "dbt_course"."bookings_dbt"."fct_ticket_flights__dbt_tmp"
  
  
    
  
  (
    ticket_no bpchar(13),
    flight_id int4 not null,
    fare_conditions varchar(10),
    amount numeric(10, 2) check (amount > 0)
    
    )
 ;
    insert into "dbt_course"."bookings_dbt"."fct_ticket_flights__dbt_tmp" (
      ticket_no, flight_id, fare_conditions, amount
    )
  
  (
    
    select ticket_no, flight_id, fare_conditions, amount
    from (
        

select
  ticket_no, 
   flight_id, 
   fare_conditions, 
   amount
from "dbt_course"."bookings_dbt"."stg_flights__ticket_flights"
    ) as model_subq
  );
  