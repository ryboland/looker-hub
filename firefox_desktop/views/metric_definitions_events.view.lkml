
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: metric_definitions_events {
  derived_table: {
    sql: SELECT
                COALESCE(LOGICAL_OR(            event_method = 'open_management'
            AND event_category = 'pwmgr'
         ), FALSE) AS view_about_logins,COALESCE(LOGICAL_OR(            event_method = 'show'
            AND event_object = 'protection_report'
         ), FALSE) AS view_about_protections,COALESCE(LOGICAL_OR(            event_method = 'connect'
            AND event_object = 'account'
         ), FALSE) AS connect_fxa,
                client_id AS client_id,
                submission_date AS submission_date
              FROM (
                (
    SELECT
        *
    FROM
        (mozdata.telemetry.events)
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

  dimension: view_about_logins {
    label: "about:logins viewers"
    description: "    Counts the number of clients that viewed about:logins.
"
    type: number
    sql: ${TABLE}.view_about_logins ;;
  }

  dimension: view_about_protections {
    label: "about:protections viewers"
    description: "    Counts the number of clients that viewed about:protections.
"
    type: number
    sql: ${TABLE}.view_about_protections ;;
  }

  dimension: connect_fxa {
    label: "Connected FxA"
    description: "    Counts the number of clients that took action to connect to FxA.
    This does not include clients that were already connected to FxA at
    the start of the experiment and remained connected.
"
    type: number
    sql: ${TABLE}.connect_fxa ;;
  }

  dimension_group: submission {
    type: time
    sql: CAST(${TABLE}.submission_date AS TIMESTAMP) ;;
    label: "Submission"
    timeframes: [
      raw,
      day,
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