
      -- back compat for old kwarg name
  
  
        
            
                
                
            
        
    

    

    merge into "dbt_course"."bookings_dbt"."src_flights__bookings_merge" as DBT_INTERNAL_DEST
        using "src_flights__bookings_merge__dbt_tmp171844186668" as DBT_INTERNAL_SOURCE
        on (
                    DBT_INTERNAL_SOURCE.book_ref = DBT_INTERNAL_DEST.book_ref
                )

    
    when matched then update set
        total_amount = DBT_INTERNAL_SOURCE.total_amount
    

    when not matched then insert
        ("book_ref", "book_date", "total_amount")
    values
        ("book_ref", "book_date", "total_amount")


  