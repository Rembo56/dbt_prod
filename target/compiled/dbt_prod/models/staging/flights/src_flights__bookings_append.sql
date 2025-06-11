

 select 
  
    ('0x' || book_ref)::bigint
 as book_ref,
  book_date,
  
    
        
        
        
    
    (total_amount / 100)::numeric(16, -2)
 as total_amount
  
  
  from "dbt_course"."demo_src"."bookings"

 

  
    where 
      ('0x' || book_ref)::bigint > (SELECT MAX(('0x' || book_ref)::bigint) FROM "dbt_course"."bookings_dbt"."src_flights__bookings_append")

  

    



  
    -- stg_dict_indentificat_passenger
    -- ---------------
    -- {'macros': ['macro.dbt_prod.check_dependencies'], 'nodes': ['seed.dbt_prod.indentificat_passenger']}
    
  
    -- stg_dict_sity_region
    -- ---------------
    -- {'macros': ['macro.dbt_prod.check_dependencies'], 'nodes': ['seed.dbt_prod.city_region']}
    
  
  
  
    -- indentificat_passenger
    -- ---------------
    -- {'macros': []}
    
  
    -- city_region
    -- ---------------
    -- {'macros': []}
    
  
  
    -- stg_columns
    -- ---------------
    -- {'macros': ['macro.dbt_utils.union_relations', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.base_node_columns', 'model.dbt_project_evaluator.base_source_columns']}
    
  
    -- stg_nodes
    -- ---------------
    -- {'macros': ['macro.dbt_project_evaluator.type_string_dpe', 'macro.dbt.type_boolean', 'macro.dbt.type_int', 'macro.dbt.type_float', 'macro.dbt_project_evaluator.insert_resources_from_graph', 'macro.dbt_prod.check_dependencies'], 'nodes': []}
    
  
    -- stg_exposure_relationships
    -- ---------------
    -- {'macros': ['macro.dbt_utils.generate_surrogate_key', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.base_exposure_relationships']}
    
  
    -- stg_node_relationships
    -- ---------------
    -- {'macros': ['macro.dbt_utils.generate_surrogate_key', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.base_node_relationships']}
    
  
    -- stg_sources
    -- ---------------
    -- {'macros': ['macro.dbt_project_evaluator.type_string_dpe', 'macro.dbt.type_boolean', 'macro.dbt_project_evaluator.insert_resources_from_graph', 'macro.dbt_prod.check_dependencies'], 'nodes': []}
    
  
    -- stg_exposures
    -- ---------------
    -- {'macros': ['macro.dbt_project_evaluator.type_string_dpe', 'macro.dbt.type_boolean', 'macro.dbt_project_evaluator.insert_resources_from_graph', 'macro.dbt_prod.check_dependencies'], 'nodes': []}
    
  
    -- stg_metric_relationships
    -- ---------------
    -- {'macros': ['macro.dbt_utils.generate_surrogate_key', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.base_metric_relationships']}
    
  
    -- stg_metrics
    -- ---------------
    -- {'macros': ['macro.dbt_project_evaluator.type_string_dpe', 'macro.dbt.type_boolean', 'macro.dbt_project_evaluator.insert_resources_from_graph', 'macro.dbt_prod.check_dependencies'], 'nodes': []}
    
  
    -- base_node_relationships
    -- ---------------
    -- {'macros': ['macro.dbt_project_evaluator.type_string_dpe', 'macro.dbt.type_boolean', 'macro.dbt_project_evaluator.insert_resources_from_graph', 'macro.dbt_prod.check_dependencies'], 'nodes': []}
    
  
    -- base_source_columns
    -- ---------------
    -- {'macros': ['macro.dbt_project_evaluator.type_string_dpe', 'macro.dbt_project_evaluator.type_large_string', 'macro.dbt.type_int', 'macro.dbt_project_evaluator.insert_resources_from_graph', 'macro.dbt_prod.check_dependencies'], 'nodes': []}
    
  
    -- base_node_columns
    -- ---------------
    -- {'macros': ['macro.dbt_project_evaluator.type_string_dpe', 'macro.dbt_project_evaluator.type_large_string', 'macro.dbt.type_boolean', 'macro.dbt.type_int', 'macro.dbt_project_evaluator.insert_resources_from_graph', 'macro.dbt_prod.check_dependencies'], 'nodes': []}
    
  
    -- base_exposure_relationships
    -- ---------------
    -- {'macros': ['macro.dbt_project_evaluator.type_string_dpe', 'macro.dbt.type_boolean', 'macro.dbt_project_evaluator.insert_resources_from_graph', 'macro.dbt_prod.check_dependencies'], 'nodes': []}
    
  
    -- base_metric_relationships
    -- ---------------
    -- {'macros': ['macro.dbt_project_evaluator.type_string_dpe', 'macro.dbt.type_boolean', 'macro.dbt_project_evaluator.insert_resources_from_graph', 'macro.dbt_prod.check_dependencies'], 'nodes': []}
    
  
    -- stg_naming_convention_folders
    -- ---------------
    -- {'macros': ['macro.dbt_project_evaluator.loop_vars', 'macro.dbt_project_evaluator.wrap_string_with_quotes', 'macro.dbt.replace', 'macro.dbt_prod.check_dependencies'], 'nodes': []}
    
  
    -- stg_naming_convention_prefixes
    -- ---------------
    -- {'macros': ['macro.dbt_project_evaluator.loop_vars', 'macro.dbt_project_evaluator.wrap_string_with_quotes', 'macro.dbt.replace', 'macro.dbt_utils.generate_surrogate_key', 'macro.dbt_prod.check_dependencies'], 'nodes': []}
    
  
    -- fct_undocumented_models
    -- ---------------
    -- {'macros': ['macro.dbt_project_evaluator.filter_exceptions', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.int_all_graph_resources', 'seed.dbt_project_evaluator.dbt_project_evaluator_exceptions']}
    
  
    -- fct_documentation_coverage
    -- ---------------
    -- {'macros': ['macro.dbt.current_timestamp', 'macro.dbt.type_int', 'macro.dbt_utils.safe_divide', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.int_all_graph_resources']}
    
  
    -- fct_undocumented_sources
    -- ---------------
    -- {'macros': ['macro.dbt_project_evaluator.filter_exceptions', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.int_all_graph_resources', 'seed.dbt_project_evaluator.dbt_project_evaluator_exceptions']}
    
  
    -- fct_undocumented_source_tables
    -- ---------------
    -- {'macros': ['macro.dbt_project_evaluator.filter_exceptions', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.int_all_graph_resources', 'seed.dbt_project_evaluator.dbt_project_evaluator_exceptions']}
    
  
    -- int_direct_relationships
    -- ---------------
    -- {'macros': ['macro.dbt_utils.generate_surrogate_key', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.int_all_graph_resources', 'model.dbt_project_evaluator.stg_node_relationships', 'model.dbt_project_evaluator.stg_exposure_relationships', 'model.dbt_project_evaluator.stg_metric_relationships']}
    
  
    -- int_all_dag_relationships
    -- ---------------
    -- {'macros': ['macro.dbt_project_evaluator.recursive_dag', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.int_direct_relationships']}
    
  
    -- int_all_graph_resources
    -- ---------------
    -- {'macros': ['macro.dbt_project_evaluator.get_directory_pattern', 'macro.dbt_project_evaluator.wrap_string_with_quotes', 'macro.dbt_utils.union_relations', 'macro.dbt.concat', 'macro.dbt.split_part', 'macro.dbt_project_evaluator.get_dbtreplace_directory_pattern', 'macro.dbt_project_evaluator.get_regexp_directory_pattern', 'macro.dbt.position', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.stg_nodes', 'model.dbt_project_evaluator.stg_exposures', 'model.dbt_project_evaluator.stg_metrics', 'model.dbt_project_evaluator.stg_sources', 'model.dbt_project_evaluator.stg_naming_convention_prefixes', 'model.dbt_project_evaluator.stg_naming_convention_folders']}
    
  
    -- fct_multiple_sources_joined
    -- ---------------
    -- {'macros': ['macro.dbt.listagg', 'macro.dbt_project_evaluator.filter_exceptions', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.int_all_dag_relationships', 'seed.dbt_project_evaluator.dbt_project_evaluator_exceptions']}
    
  
    -- fct_root_models
    -- ---------------
    -- {'macros': ['macro.dbt_project_evaluator.filter_exceptions', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.int_all_dag_relationships', 'seed.dbt_project_evaluator.dbt_project_evaluator_exceptions']}
    
  
    -- fct_model_fanout
    -- ---------------
    -- {'macros': ['macro.dbt.listagg', 'macro.dbt_project_evaluator.filter_exceptions', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.int_all_dag_relationships', 'seed.dbt_project_evaluator.dbt_project_evaluator_exceptions']}
    
  
    -- fct_unused_sources
    -- ---------------
    -- {'macros': ['macro.dbt_project_evaluator.filter_exceptions', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.int_all_dag_relationships', 'seed.dbt_project_evaluator.dbt_project_evaluator_exceptions']}
    
  
    -- fct_duplicate_sources
    -- ---------------
    -- {'macros': ['macro.dbt.concat', 'macro.dbt.listagg', 'macro.dbt_project_evaluator.filter_exceptions', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.int_all_graph_resources', 'seed.dbt_project_evaluator.dbt_project_evaluator_exceptions']}
    
  
    -- fct_source_fanout
    -- ---------------
    -- {'macros': ['macro.dbt.listagg', 'macro.dbt_project_evaluator.filter_exceptions', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.int_all_dag_relationships', 'seed.dbt_project_evaluator.dbt_project_evaluator_exceptions']}
    
  
    -- fct_direct_join_to_source
    -- ---------------
    -- {'macros': ['macro.dbt_project_evaluator.filter_exceptions', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.int_all_dag_relationships', 'seed.dbt_project_evaluator.dbt_project_evaluator_exceptions']}
    
  
    -- fct_staging_dependent_on_staging
    -- ---------------
    -- {'macros': ['macro.dbt_project_evaluator.filter_exceptions', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.int_all_dag_relationships', 'seed.dbt_project_evaluator.dbt_project_evaluator_exceptions']}
    
  
    -- fct_too_many_joins
    -- ---------------
    -- {'macros': ['macro.dbt.type_int', 'macro.dbt_project_evaluator.filter_exceptions', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.int_all_dag_relationships', 'seed.dbt_project_evaluator.dbt_project_evaluator_exceptions']}
    
  
    -- fct_staging_dependent_on_marts_or_intermediate
    -- ---------------
    -- {'macros': ['macro.dbt_project_evaluator.filter_exceptions', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.int_all_dag_relationships', 'seed.dbt_project_evaluator.dbt_project_evaluator_exceptions']}
    
  
    -- fct_marts_or_intermediate_dependent_on_source
    -- ---------------
    -- {'macros': ['macro.dbt_project_evaluator.filter_exceptions', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.int_all_dag_relationships', 'seed.dbt_project_evaluator.dbt_project_evaluator_exceptions']}
    
  
    -- fct_hard_coded_references
    -- ---------------
    -- {'macros': ['macro.dbt_project_evaluator.filter_exceptions', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.int_all_graph_resources', 'seed.dbt_project_evaluator.dbt_project_evaluator_exceptions']}
    
  
    -- fct_rejoining_of_upstream_concepts
    -- ---------------
    -- {'macros': ['macro.dbt_project_evaluator.filter_exceptions', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.int_all_dag_relationships', 'seed.dbt_project_evaluator.dbt_project_evaluator_exceptions']}
    
  
    -- fct_missing_primary_key_tests
    -- ---------------
    -- {'macros': ['macro.dbt_project_evaluator.filter_exceptions', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.int_model_test_summary', 'seed.dbt_project_evaluator.dbt_project_evaluator_exceptions']}
    
  
    -- fct_sources_without_freshness
    -- ---------------
    -- {'macros': ['macro.dbt_project_evaluator.filter_exceptions', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.int_all_graph_resources', 'seed.dbt_project_evaluator.dbt_project_evaluator_exceptions']}
    
  
    -- fct_test_coverage
    -- ---------------
    -- {'macros': ['macro.dbt.type_boolean', 'macro.dbt.current_timestamp', 'macro.dbt.type_int', 'macro.dbt_utils.safe_divide', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.int_model_test_summary']}
    
  
    -- int_model_test_summary
    -- ---------------
    -- {'macros': ['macro.dbt.type_boolean', 'macro.dbt.type_int', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.int_all_graph_resources', 'model.dbt_project_evaluator.int_direct_relationships', 'model.dbt_project_evaluator.base_node_columns']}
    
  
    -- fct_undocumented_public_models
    -- ---------------
    -- {'macros': ['macro.dbt_project_evaluator.filter_exceptions', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.int_all_graph_resources', 'seed.dbt_project_evaluator.dbt_project_evaluator_exceptions']}
    
  
    -- fct_exposures_dependent_on_private_models
    -- ---------------
    -- {'macros': ['macro.dbt_project_evaluator.filter_exceptions', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.int_all_dag_relationships', 'seed.dbt_project_evaluator.dbt_project_evaluator_exceptions']}
    
  
    -- fct_public_models_without_contract
    -- ---------------
    -- {'macros': ['macro.dbt_project_evaluator.filter_exceptions', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.int_all_graph_resources', 'seed.dbt_project_evaluator.dbt_project_evaluator_exceptions']}
    
  
    -- fct_exposure_parents_materializations
    -- ---------------
    -- {'macros': ['macro.dbt_project_evaluator.filter_exceptions', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.int_all_dag_relationships', 'seed.dbt_project_evaluator.dbt_project_evaluator_exceptions']}
    
  
    -- fct_chained_views_dependencies
    -- ---------------
    -- {'macros': ['macro.dbt_project_evaluator.filter_exceptions', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.int_all_dag_relationships', 'seed.dbt_project_evaluator.dbt_project_evaluator_exceptions']}
    
  
    -- fct_source_directories
    -- ---------------
    -- {'macros': ['macro.dbt_project_evaluator.get_directory_pattern', 'macro.dbt_project_evaluator.filter_exceptions', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.int_all_graph_resources', 'seed.dbt_project_evaluator.dbt_project_evaluator_exceptions']}
    
  
    -- fct_test_directories
    -- ---------------
    -- {'macros': ['macro.dbt_project_evaluator.filter_exceptions', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.int_all_graph_resources', 'model.dbt_project_evaluator.int_direct_relationships', 'seed.dbt_project_evaluator.dbt_project_evaluator_exceptions']}
    
  
    -- fct_model_naming_conventions
    -- ---------------
    -- {'macros': ['macro.dbt.listagg', 'macro.dbt_project_evaluator.filter_exceptions', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.int_all_graph_resources', 'model.dbt_project_evaluator.stg_naming_convention_prefixes', 'seed.dbt_project_evaluator.dbt_project_evaluator_exceptions']}
    
  
    -- fct_model_directories
    -- ---------------
    -- {'macros': ['macro.dbt_project_evaluator.get_directory_pattern', 'macro.dbt_project_evaluator.filter_exceptions', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_project_evaluator.int_all_graph_resources', 'model.dbt_project_evaluator.stg_naming_convention_folders', 'model.dbt_project_evaluator.int_all_dag_relationships', 'seed.dbt_project_evaluator.dbt_project_evaluator_exceptions']}
    
  
    -- dbt_project_evaluator_exceptions
    -- ---------------
    -- {'macros': []}
    
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
    -- stg_demo_src__aircrafts
    -- ---------------
    -- {'macros': ['macro.dbt_prod.check_dependencies'], 'nodes': ['source.dbt_prod.demo_src.aircrafts']}
    
  
    -- stg_flights__aircrafts
    -- ---------------
    -- {'macros': ['macro.dbt_prod.check_dependencies'], 'nodes': ['source.dbt_prod.demo_src.aircrafts']}
    
  
    -- stg_flights__aircrafts_backup
    -- ---------------
    -- {'macros': ['macro.dbt_prod.check_dependencies'], 'nodes': ['source.dbt_prod.demo_src.aircrafts']}
    
  
    -- stg_flights__aircrafts_generated
    -- ---------------
    -- {'macros': ['macro.dbt_prod.check_dependencies'], 'nodes': ['source.dbt_prod.demo_src.aircrafts']}
    
  
    -- src_flights__airports
    -- ---------------
    -- {'macros': ['macro.dbt_prod.check_dependencies'], 'nodes': ['source.dbt_prod.demo_src.airports']}
    
  
    -- stg_demo_src__airports
    -- ---------------
    -- {'macros': ['macro.dbt_prod.check_dependencies'], 'nodes': ['source.dbt_prod.demo_src.airports']}
    
  
    -- stg_flights__seats
    -- ---------------
    -- {'macros': ['macro.dbt_prod.check_dependencies'], 'nodes': ['source.dbt_prod.demo_src.seats']}
    
  
    -- fct_bookings
    -- ---------------
    -- {'macros': ['macro.dbt_prod.show_columns_relation', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_prod.src_flights__bookings']}
    
  
    -- src_flights__bookings
    -- ---------------
    -- {'macros': ['macro.dbt_prod.limit_data_dev', 'macro.dbt_prod.check_dependencies'], 'nodes': ['source.dbt_prod.demo_src.bookings']}
    
  
    -- src_flights__bookings_append
    -- ---------------
    -- {'macros': ['macro.dbt_prod.bookref_to_bigint', 'macro.dbt_prod.kopeck_to_ruble', 'macro.dbt.is_incremental', 'macro.dbt_prod.check_dependencies'], 'nodes': ['source.dbt_prod.demo_src.bookings']}
    
  
    -- src_flights__bookings_delete_insert
    -- ---------------
    -- {'macros': ['macro.dbt.is_incremental', 'macro.dbt_prod.check_dependencies'], 'nodes': ['source.dbt_prod.demo_src.bookings']}
    
  
    -- src_flights__bookings_merge
    -- ---------------
    -- {'macros': ['macro.dbt.is_incremental', 'macro.dbt_prod.check_dependencies'], 'nodes': ['source.dbt_prod.demo_src.bookings']}
    
  
    -- src_flights__boarding_passes
    -- ---------------
    -- {'macros': ['macro.dbt_prod.check_dependencies'], 'nodes': ['source.dbt_prod.demo_src.boarding_passes']}
    
  
    -- fct_flights
    -- ---------------
    -- {'macros': ['macro.dbt_utils.generate_surrogate_key', 'macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_prod.src_flights__flights']}
    
  
    -- src_flights__flights
    -- ---------------
    -- {'macros': ['macro.dbt_prod.check_dependencies'], 'nodes': ['source.dbt_prod.demo_src.flights']}
    
  
    -- src_flights__flights_append
    -- ---------------
    -- {'macros': ['macro.dbt.is_incremental', 'macro.dbt_prod.check_dependencies'], 'nodes': ['source.dbt_prod.demo_src.flights']}
    
  
    -- src_flights__flights_merge
    -- ---------------
    -- {'macros': ['macro.dbt.is_incremental', 'macro.dbt_prod.check_dependencies'], 'nodes': ['source.dbt_prod.demo_src.flights']}
    
  
    -- fct_ticket_flights
    -- ---------------
    -- {'macros': ['macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_prod.stg_flights__ticket_flights']}
    
  
    -- stg_flights__ticket_flights
    -- ---------------
    -- {'macros': ['macro.dbt_prod.check_dependencies'], 'nodes': ['source.dbt_prod.demo_src.ticket_flights']}
    
  
    -- fct_tickets
    -- ---------------
    -- {'macros': ['macro.dbt_prod.check_dependencies'], 'nodes': ['model.dbt_prod.stg_flights__tickets', 'seed.dbt_prod.indentificat_passenger']}
    
  
    -- stg_flights__tickets
    -- ---------------
    -- {'macros': ['macro.dbt_prod.check_dependencies'], 'nodes': ['source.dbt_prod.demo_src.tickets']}
    
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
