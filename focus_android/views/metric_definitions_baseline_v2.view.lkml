
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: metric_definitions_baseline_v2 {
  derived_table: {
    sql: SELECT
                COUNT(DISTINCT CASE WHEN LOWER(metadata.isp.name) != 'browserstack' THEN client_info.client_id ELSE NULL END) AS daily_active_users,
COUNT(DISTINCT CASE WHEN LOWER(metadata.isp.name) != 'browserstack' THEN client_info.client_id ELSE NULL END) AS client_level_daily_active_users_v1,
    COUNT(DISTINCT CASE WHEN metrics.timespan.glean_baseline_duration.value > 0
                         AND LOWER(metadata.isp.name) != 'browserstack'
                        THEN client_info.client_id
                        ELSE NULL END) AS client_level_daily_active_users_v2,

                
                client_info.client_id AS client_id,
                {% if aggregate_metrics_by._parameter_value == 'day' %}
                submission_date AS analysis_basis
                {% elsif aggregate_metrics_by._parameter_value == 'week'  %}
                (FORMAT_DATE(
                    '%F',
                    DATE_TRUNC(submission_date,
                    WEEK(MONDAY)))
                ) AS analysis_basis
                {% elsif aggregate_metrics_by._parameter_value == 'month'  %}
                (FORMAT_DATE(
                    '%Y-%m',
                    submission_date)
                ) AS analysis_basis
                {% elsif aggregate_metrics_by._parameter_value == 'quarter'  %}
                (FORMAT_DATE(
                    '%Y-%m',
                    DATE_TRUNC(submission_date,
                    QUARTER))
                ) AS analysis_basis
                {% elsif aggregate_metrics_by._parameter_value == 'year'  %}
                (EXTRACT(
                    YEAR FROM submission_date)
                ) AS analysis_basis
                {% else %}
                NULL as analysis_basis
                {% endif %}
            FROM
                (
                    SELECT
                        baseline_v2.*,
                        
                    FROM
                    (
SELECT
    *
FROM
    (
            SELECT
                *
            FROM
                (
    SELECT
        p.*,
        DATE(p.submission_timestamp) AS submission_date
    FROM `moz-fx-data-shared-prod.focus_android.baseline` p
)
            ) AS baseline_v2
        
)
                    WHERE 
                    baseline_v2.submission_date
                    BETWEEN
                    COALESCE(
                        SAFE_CAST(
                            {% date_start submission_date %} AS DATE
                        ), CURRENT_DATE()) AND
                    COALESCE(
                        SAFE_CAST(
                            {% date_end submission_date %} AS DATE
                        ), CURRENT_DATE())
                
                )
            GROUP BY
                
                client_id,
                analysis_basis ;;
  }

  dimension: client_id {
    type: string
    sql: SAFE_CAST(${TABLE}.client_id AS STRING) ;;
    label: "Client ID"
    primary_key: yes
    group_label: "Base Fields"
    description: "Unique client identifier"
  }

  dimension: daily_active_users {
    group_label: "Metrics"
    label: "DAU"
    description: "    The number of unique clients that we received a baseline ping from each day, excluding
    pings originating from BrowserStack. To be comparable to DAU used for KPI tracking,
    this metric needs to be aggregated by `submission_date`. If the metric is NOT
    aggregated by `submission_date`, the metric is similar to a \"days of use\" metric. Note
    that data retention on `focus_android.baseline` has [historically been only 180 days](https://bugzilla.mozilla.org/show_bug.cgi?id=1828666),
    which is shorter than other mobile `baseline` tables. For more details, refer to
    [the DAU description in the Mozilla Data Documentation](https://docs.telemetry.mozilla.org/concepts/terminology.html#dau).

    For questions, please contact bochocki@mozilla.com or firefox-kpi@mozilla.com.
"
    type: number
    sql: ${TABLE}.daily_active_users ;;
  }

  dimension: client_level_daily_active_users_v1 {
    group_label: "Metrics"
    label: "Focus Android Client-Level DAU"
    description: "    This metric reports DAU values similar (but not necessarily identical)
    to the [official DAU reporting definition](https://mozilla.github.io/metric-hub/metrics/focus_android/#daily_active_users_v2).
    It's generally preferable to use the official DAU reporting definition when possible; this metric
    exists only for cases where reporting `client_id` is required (e.g. for experiments). This metric
    needs to be aggregated by `submission_date`. If it is not aggregated by `submission_date`, it is
    similar to a \"days of use\" metric, and not DAU.
    
    For more information, refer to [the DAU description in the Mozilla Data Documentation](https://docs.telemetry.mozilla.org/concepts/terminology.html#dau).
    For questions please contact bochocki@mozilla.com or firefox-kpi@mozilla.com.
"
    type: number
    sql: ${TABLE}.client_level_daily_active_users_v1 ;;
  }

  dimension: client_level_daily_active_users_v2 {
    group_label: "Metrics"
    label: "Focus Android Client-Level DAU"
    description: "    This metric reports DAU values similar (but not necessarily identical)
    to the [official DAU reporting definition](https://mozilla.github.io/metric-hub/metrics/focus_android/#daily_active_users_v2).
    It's generally preferable to use the official DAU reporting definition when possible; this metric
    exists only for cases where reporting `client_id` is required (e.g. for experiments). This metric
    needs to be aggregated by `submission_date`. If it is not aggregated by `submission_date`, it is
    similar to a \"days of use\" metric, and not DAU.

For more information, refer to [the DAU description in Confluence](https://mozilla-hub.atlassian.net/wiki/spaces/DATA/pages/314704478/Daily+Active+Users+DAU+Metric).
    For questions please contact bochocki@mozilla.com or firefox-kpi@mozilla.com.
"
    type: number
    sql: ${TABLE}.client_level_daily_active_users_v2 ;;
  }

  dimension_group: submission {
    type: time
    group_label: "Base Fields"
    sql: CAST(${TABLE}.analysis_basis AS TIMESTAMP) ;;
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

  set: metrics {
    fields: [daily_active_users, client_level_daily_active_users_v1, client_level_daily_active_users_v2]
  }

  parameter: aggregate_metrics_by {
    label: "Aggregate Client Metrics Per"
    type: unquoted
    default_value: "day"

    allowed_value: {
      label: "Per Day"
      value: "day"
    }

    allowed_value: {
      label: "Per Week"
      value: "week"
    }

    allowed_value: {
      label: "Per Month"
      value: "month"
    }

    allowed_value: {
      label: "Per Quarter"
      value: "quarter"
    }

    allowed_value: {
      label: "Per Year"
      value: "year"
    }

    allowed_value: {
      label: "Overall"
      value: "overall"
    }
  }

  parameter: sampling {
    label: "Sample of source data in %"
    type: unquoted
    default_value: "100"
    hidden: yes
  }
}