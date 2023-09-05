
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: metric_definitions_sponsored_tiles_clients_daily {
  derived_table: {
    sql: SELECT
                COALESCE(LOGICAL_OR(sponsored_tiles_disable_count > 0), FALSE) AS sponsored_tiles_disabled,
                client_id AS client_id,
                submission_date AS submission_date
              FROM (
                (
    SELECT
        *
    FROM
        (mozdata.telemetry.sponsored_tiles_clients_daily)
    )
              )
              WHERE submission_date BETWEEN 
                SAFE_CAST({% date_start metric_definitions_firefox_desktop.date %} AS DATE) AND 
                SAFE_CAST({% date_end metric_definitions_firefox_desktop.date %} AS DATE)
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

  dimension: sponsored_tiles_disabled {
    label: "Sponsored Tiles Disabled Event"
    description: "Boolean that identifies clients that disabled sponsored tiles during experiment"
    type: number
    sql: ${TABLE}.sponsored_tiles_disabled ;;
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
    fields: [sponsored_tiles_disabled]
  }
}