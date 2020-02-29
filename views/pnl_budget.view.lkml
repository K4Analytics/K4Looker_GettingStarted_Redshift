view: pnl_budget {
  sql_table_name: public.pnl_budget ;;

  dimension: budget {
    type: number
    sql: ${TABLE}.budget ;;
  }

  dimension_group: k4_created {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.k4_created ;;
  }

  dimension_group: k4_modified {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.k4_modified ;;
  }

  dimension: k4_user {
    type: string
    sql: ${TABLE}.k4_user ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: reportingcode {
    type: string
    sql: ${TABLE}.reportingcode ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
