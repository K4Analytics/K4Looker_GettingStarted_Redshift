connection: "k4_db_gettingstarted_redshift"

# include all the views
include: "/views/**/*.view"

datagroup: k4_gettingstarted_redshift_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: k4_gettingstarted_redshift_default_datagroup

explore: k4v_pnl_budget {}

explore: pnl_budget {}
