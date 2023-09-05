
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: metric_definitions_crash {
  derived_table: {
    sql: SELECT
                SUM(IF(REGEXP_CONTAINS(payload.process_type, 'content') AND REGEXP_CONTAINS(payload.metadata.ipc_channel_error, 'ShutDownKill'), 1, 0)) AS content_shutdown_crashes,SUM(IF(REGEXP_CONTAINS(payload.process_type, 'content') AND NOT REGEXP_CONTAINS(COALESCE(payload.metadata.ipc_channel_error, ''), 'ShutDownKill'), 1, 0)) AS content_crashes,SUM(IF(payload.metadata.moz_crash_reason LIKE 'MOZ_CRASH%', 1, 0)) AS shutdown_hangs,SUM(IF(payload.metadata.oom_allocation_size IS NOT NULL, 1, 0)) AS oom_crashes,SUM(IF(payload.process_type = 'main' OR payload.process_type IS NULL, 1, 0)) AS main_crashes,SUM(IF(payload.metadata.startup_crash = '1', 1, 0)) AS startup_crashes,
                client_id AS client_id,
                submission_date AS submission_date
              FROM (
                (
    SELECT
        *
    FROM
        ((
    SELECT
        *,
        DATE(submission_timestamp) AS submission_date,
        environment.experiments
    FROM mozdata.telemetry.crash
))
    )
              )
              WHERE submission_date BETWEEN 
                SAFE_CAST({% date_start metric_definitions_firefox_desktop.date %}) AND 
                SAFE_CAST({% date_end metric_definitions_firefox_desktop.date %})
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

  dimension: content_shutdown_crashes {
    label: "Content Shutdown Crashes"
    description: "Number of Content Shutdown Crashes"
    type: number
    sql: ${TABLE}.content_shutdown_crashes ;;
  }

  dimension: content_crashes {
    label: "Content Crashes"
    description: "Number of Content Crashes"
    type: number
    sql: ${TABLE}.content_crashes ;;
  }

  dimension: shutdown_hangs {
    label: "Shutdown Hangs"
    description: "Number of Shutdown Hangs"
    type: number
    sql: ${TABLE}.shutdown_hangs ;;
  }

  dimension: oom_crashes {
    label: "OOM Crashes"
    description: "Number of Out of Memory Crashes"
    type: number
    sql: ${TABLE}.oom_crashes ;;
  }

  dimension: main_crashes {
    label: "Main Crashes"
    description: "Number of Main Crashes"
    type: number
    sql: ${TABLE}.main_crashes ;;
  }

  dimension: startup_crashes {
    label: "Startup Crashes"
    description: "Number of Startup Crashes"
    type: number
    sql: ${TABLE}.startup_crashes ;;
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

  filter: date {
    type: date
    description: "Date Range"
  }

  set: {
    metrics: {
      fields: [
        content_shutdown_crashes,
        content_crashes,
        shutdown_hangs,
        oom_crashes,
        main_crashes,
        startup_crashes,
      ]
    }
  }
}