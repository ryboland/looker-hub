view: experiment_enrollment_other_events_overall {
  dimension: branch {
    sql: ${TABLE}.branch ;;
    type: string
  }

  dimension: event {
    sql: ${TABLE}.event ;;
    type: string
  }

  dimension: experiment {
    sql: ${TABLE}.experiment ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }

  dimension_group: time {
    sql: ${TABLE}.time ;;
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
    ]
  }

  sql_table_name: `moz-fx-data-shared-prod.telemetry.experiment_enrollment_other_events_overall` ;;
}