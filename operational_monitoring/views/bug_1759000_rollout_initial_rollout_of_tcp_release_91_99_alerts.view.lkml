
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: bug_1759000_rollout_initial_rollout_of_tcp_release_91_99_alerts {
  derived_table: {
    sql: SELECT *
FROM `moz-fx-data-shared-prod.operational_monitoring.bug_1759000_rollout_initial_rollout_of_tcp_release_91_99_alerts` ;;
  }

  dimension: build_id {
    type: date
    sql: PARSE_DATE('%Y%m%d', CAST(${TABLE}.build_id AS STRING)) ;;
  }

  dimension: branch {
    sql: ${TABLE}.branch ;;
    type: string
  }

  dimension: message {
    sql: ${TABLE}.message ;;
    type: string
  }

  dimension: percentile {
    sql: ${TABLE}.percentile ;;
    type: number
  }

  dimension: probe {
    sql: ${TABLE}.probe ;;
    type: string
  }

  dimension: submission {
    sql: ${TABLE}.submission_date ;;
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
    ]
    convert_tz: no
    datatype: date
  }

  parameter: percentile_conf {
    type: number
    label: "Percentile"
    default_value: "50.0"
  }
}