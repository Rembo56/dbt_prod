
      -- back compat for old kwarg name
  
  
        
            
                
                
            
        
    

    

    merge into "dbt_course"."bookings_dbt"."src_flights__flights_merge" as DBT_INTERNAL_DEST
        using "src_flights__flights_merge__dbt_tmp171845289801" as DBT_INTERNAL_SOURCE
        on (
                    DBT_INTERNAL_SOURCE.flight_id = DBT_INTERNAL_DEST.flight_id
                )

    
    when matched then update set
        "flight_id" = DBT_INTERNAL_SOURCE."flight_id","flight_no" = DBT_INTERNAL_SOURCE."flight_no","scheduled_departure" = DBT_INTERNAL_SOURCE."scheduled_departure","scheduled_arrival" = DBT_INTERNAL_SOURCE."scheduled_arrival","departure_airport" = DBT_INTERNAL_SOURCE."departure_airport","arrival_airport" = DBT_INTERNAL_SOURCE."arrival_airport","status" = DBT_INTERNAL_SOURCE."status","aircraft_code" = DBT_INTERNAL_SOURCE."aircraft_code","actual_departure" = DBT_INTERNAL_SOURCE."actual_departure","actual_arrival" = DBT_INTERNAL_SOURCE."actual_arrival"
    

    when not matched then insert
        ("flight_id", "flight_no", "scheduled_departure", "scheduled_arrival", "departure_airport", "arrival_airport", "status", "aircraft_code", "actual_departure", "actual_arrival")
    values
        ("flight_id", "flight_no", "scheduled_departure", "scheduled_arrival", "departure_airport", "arrival_airport", "status", "aircraft_code", "actual_departure", "actual_arrival")


  