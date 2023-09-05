
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: metric_definitions_normandy_events {
  derived_table: {
    sql: SELECT
                COALESCE(LOGICAL_OR(        event_category = 'normandy'
        AND event_method = 'unenroll'
        AND event_string_value = '{experiment_slug}'
     ), FALSE) AS unenroll,
                client_id AS client_id,
                submission_date AS submission_date
              FROM (
                (
    SELECT
        *
    FROM
        ((
    SELECT
        *
    FROM mozdata.telemetry.events
    WHERE event_category = 'normandy'
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

  dimension: unenroll {
    label: "Unenrollments"
    description: "    Counts the number of clients with an experiment unenrollment event.
"
    type: number
    sql: ${TABLE}.unenroll ;;
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
}