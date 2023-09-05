
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: metric_definitions_browser_launched_to_handle_events {
  derived_table: {
    sql: SELECT
                COALESCE(LOGICAL_OR(    event_method = 'system_notification'
    AND event_object = 'toast'
    AND STARTS_WITH(mozfun.map.get_key(event_map_values, 'name'), '{experiment_slug}:')
     ), FALSE) AS notification_clicks,
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
    FROM `mozdata.telemetry.events`
    WHERE event_category = 'browser.launched_to_handle'
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

  dimension: notification_clicks {
    label: "System Notification Clicks"
    description: "    Counts the number of clients that launched Firefox to handle the notification corresponding to this experiment.
"
    type: number
    sql: ${TABLE}.notification_clicks ;;
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

  set: metrics {
    fields: [notification_clicks]
  }
}