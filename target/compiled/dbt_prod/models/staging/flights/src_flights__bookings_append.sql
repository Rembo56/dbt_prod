

 select 
  
    ('0x' || book_ref)::bigint
 as book_ref,
  book_date,
  
    
        
        
        
    
    (total_amount / 100)::numeric(16, -2)
 as total_amount
  
  
  from "dbt_course"."demo_src"."bookings"

 

  
    where 
      ('0x' || book_ref)::bigint > (SELECT MAX(('0x' || book_ref)::bigint) FROM "dbt_course"."bookings_dbt"."src_flights__bookings_append")

  

    



  
    -- src_flights__flights_append
    -- ---------------
    -- {'macros': ['macro.dbt.is_incremental', 'macro.dbt_prod.check_dependencies'], 'nodes': ['source.dbt_prod.demo_src.flights']}
    
  
    -- src_flights__bookings_append
    -- ---------------
    -- {'macros': ['macro.dbt_prod.bookref_to_bigint', 'macro.dbt_prod.kopeck_to_ruble', 'macro.dbt.is_incremental', 'macro.dbt_prod.check_dependencies'], 'nodes': ['source.dbt_prod.demo_src.bookings']}
    
  
    -- stg_flights__aircrafts_backup
    -- ---------------
    -- {'macros': ['macro.dbt_prod.check_dependencies'], 'nodes': ['source.dbt_prod.demo_src.aircrafts']}
    
  
    -- src_flights__bookings_merge
    -- ---------------
    -- {'macros': ['macro.dbt.is_incremental', 'macro.dbt_prod.check_dependencies'], 'nodes': ['source.dbt_prod.demo_src.bookings']}
    
  
    -- src_flights__bookings
    -- ---------------
    -- {'macros': ['macro.dbt_prod.limit_data_dev', 'macro.dbt_prod.check_dependencies'], 'nodes': ['source.dbt_prod.demo_src.bookings']}
    
  
    -- src_flights__boarding_passes
    -- ---------------
    -- {'macros': ['macro.dbt_prod.check_dependencies'], 'nodes': ['source.dbt_prod.demo_src.boarding_passes']}
    
  
    -- stg_flights__tickets
    -- ---------------
    -- {'macros': ['macro.dbt_prod.check_dependencies'], 'nodes': ['source.dbt_prod.demo_src.tickets']}
    
  
    -- stg_flights__ticket_flights
    -- ---------------
    -- {'macros': ['macro.dbt_prod.check_dependencies'], 'nodes': ['source.dbt_prod.demo_src.ticket_flights']}
    
  
    -- stg_flights__seats
    -- ---------------
    -- {'macros': ['macro.dbt_prod.check_dependencies'], 'nodes': ['source.dbt_prod.demo_src.seats']}
    
  
    -- stg_flights__aircrafts
    -- ---------------
    -- {'macros': ['macro.dbt_prod.check_dependencies'], 'nodes': ['source.dbt_prod.demo_src.aircrafts']}
    
  
    -- src_flights__bookings_delete_insert
    -- ---------------
    -- {'macros': ['macro.dbt.is_incremental', 'macro.dbt_prod.check_dependencies'], 'nodes': ['source.dbt_prod.demo_src.bookings']}
    
  
    -- src_flights__flights
    -- ---------------
    -- {'macros': ['macro.dbt_prod.check_dependencies'], 'nodes': ['source.dbt_prod.demo_src.flights']}
    
  
    -- src_flights__airports
    -- ---------------
    -- {'macros': ['macro.dbt_prod.check_dependencies'], 'nodes': ['source.dbt_prod.demo_src.airports']}
    
  
    -- src_flights__flights_merge
    -- ---------------
    -- {'macros': ['macro.dbt.is_incremental', 'macro.dbt_prod.check_dependencies'], 'nodes': ['source.dbt_prod.demo_src.flights']}
    
  
    -- stg_dict_indentificat_passenger
    -- ---------------
    -- {'macros': ['macro.dbt_prod.check_dependencies'], 'nodes': ['seed.dbt_prod.indentificat_passenger']}
    
  
    -- stg_dict_sity_region
    -- ---------------
    -- {'macros': ['macro.dbt_prod.check_dependencies'], 'nodes': ['seed.dbt_prod.city_region']}
    
  
    -- fct_bookings
    -- ---------------
    -- {'macros': ['macro.dbt_prod.show_columns_relation', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_prod.src_flights__bookings']}
    
  
    -- fct_tickets
    -- ---------------
    -- {'macros': ['macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_prod.stg_flights__tickets', 'seed.dbt_prod.indentificat_passenger']}
    
  
    -- fct_ticket_flights
    -- ---------------
    -- {'macros': ['macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_prod.stg_flights__ticket_flights']}
    
  
    -- fct_flights
    -- ---------------
    -- {'macros': ['macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_prod.src_flights__flights']}
    
  
  
  
  
  
  
  
  
  
  
  
    -- indentificat_passenger
    -- ---------------
    -- {'macros': []}
    
  
    -- city_region
    -- ---------------
    -- {'macros': []}
    
  
  
