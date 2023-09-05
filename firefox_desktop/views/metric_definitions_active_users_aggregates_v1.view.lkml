
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: metric_definitions_active_users_aggregates_v1 {
  derived_table: {
    sql: SELECT
                SUM(dau) AS daily_active_users_v2,SUM(IF(FORMAT_DATE('%m-%d', submission_date) BETWEEN '11-18' AND '12-15', dau, 0)) / 28 AS desktop_dau_kpi_v2,
                NULL AS client_id,
                submission_date AS submission_date
              FROM (
                (
    SELECT
        *
    FROM
        ((
    SELECT *
     FROM `moz-fx-data-shared-prod.telemetry.active_users_aggregates`
    WHERE app_name = 'Firefox Desktop'
))
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

  dimension: daily_active_users_v2 {
    label: "Firefox Desktop DAU"
    description: "    This is the official DAU reporting definition. The logic is
    [defined in `bigquery-etl`](https://github.com/mozilla/bigquery-etl/blob/main/sql_generators/active_users/templates/desktop_query.sql)
    and is automatically cross-checked, actively monitored, and change controlled.
    Whenever possible, this is the preferred DAU reporting definition to use for Desktop.
    This metric needs to be aggregated by `submission_date`. If it is not aggregated by `submission_date`,
    it is similar to a \"days of use\" metric, and not DAU.
    
    For more information, refer to [the DAU description in the Mozilla Data Documentation](https://docs.telemetry.mozilla.org/concepts/terminology.html#dau).
    For questions please contact bochocki@mozilla.com or firefox-kpi@mozilla.com.
"
    type: number
    sql: ${TABLE}.daily_active_users_v2 ;;
  }

  dimension: desktop_dau_kpi_v2 {
    label: "Firefox Desktop DAU KPI"
    description: "    The average [Firefox Desktop DAU](https://mozilla.github.io/metric-hub/metrics/firefox_desktop/#daily_active_users_v2)
    in the 28-day period ending on December 15th. This is the official Desktop DAU KPI reporting definition. The logic for calculating DAU is
    [defined in `bigquery-etl`](https://github.com/mozilla/bigquery-etl/blob/main/sql_generators/active_users/templates/desktop_query.sql)
    and is automatically cross-checked, actively monitored, and change controlled.
    To reconstruct the annual Desktop DAU KPI, this metric needs to be aggregated by
    `EXTRACT(YEAR FROM submission_date)`.  

    For more information, refer to [the DAU description in the Mozilla Data Documentation](https://docs.telemetry.mozilla.org/concepts/terminology.html#dau).
    For questions please contact bochocki@mozilla.com or firefox-kpi@mozilla.com.
"
    type: number
    sql: ${TABLE}.desktop_dau_kpi_v2 ;;
  }

  dimension_group: submission {
    type: time
    sql: ${TABLE}.submission_date ;;
    label: "Submission Date"
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
    ]
  }

  measure: clients {
    type: count_distinct
    sql: ${client_id} ;;
  }
}