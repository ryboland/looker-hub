
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: metric_definitions_events_memory {
  derived_table: {
    sql: SELECT
                SUM(SAFE_CAST(SPLIT(event_string_value, ',')[OFFSET(1)] AS NUMERIC)) AS memory_pressure_count,
                client_id AS client_id,
                DATE(submission_date) AS submission_date
              FROM (
                (
    SELECT
        *
    FROM
        (    (
        SELECT
            *
        FROM `moz-fx-data-shared-prod.telemetry.events`
        WHERE 
            event_category = 'memory_watcher'
            AND event_method = 'on_high_memory'
            AND event_object = 'stats'
    )
)
    )
              )
              GROUP BY
                client_id,
                submission_date ;;
  }

  dimension: client_id {
    type: string
    sql: ${TABLE}.client_id ;;
    label: "Client ID"
    description: "Unique client identifier"
  }

  dimension: memory_pressure_count {
    label: "Memory Pressure Count"
    description: "Event memory pressure count"
    type: number
    sql: ${TABLE}.memory_pressure_count ;;
  }

  dimension_group: submission {
    type: time
    sql: CAST(${TABLE}.submission_date AS TIMESTAMP) ;;
    label: "Submission"
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
    ]
  }

  measure: total_clients {
    type: count_distinct
    sql: ${client_id} ;;
  }
}