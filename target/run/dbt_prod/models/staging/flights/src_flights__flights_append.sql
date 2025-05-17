
      insert into "dbt_course"."bookings_dbt"."src_flights__flights_append" ("flight_id", "flight_no", "scheduled_departure", "scheduled_arrival", "departure_airport", "arrival_airport", "status", "aircraft_code", "actual_departure", "actual_arrival")
    (
        select "flight_id", "flight_no", "scheduled_departure", "scheduled_arrival", "departure_airport", "arrival_airport", "status", "aircraft_code", "actual_departure", "actual_arrival"
        from "src_flights__flights_append__dbt_tmp104525983300"
    )


  