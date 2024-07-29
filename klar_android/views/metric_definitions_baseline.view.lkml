
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: metric_definitions_baseline {
  derived_table: {
    sql: SELECT
                COUNT(document_id) AS baseline_ping_count,
MIN(client_info.first_run_date) AS first_run_date,
COALESCE(SUM(metrics.timespan.glean_baseline_duration.value), 0) / 3600.0 AS active_hours,
COUNT(DISTINCT DATE(submission_timestamp)) AS days_of_use,

                
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
                        baseline.*,
                        
                    FROM
                    (
            SELECT
                *
            FROM
                (
    SELECT
        p.*,
        DATE(p.submission_timestamp) AS submission_date
    FROM `moz-fx-data-shared-prod.klar_android.baseline` p
)
            ) AS baseline
        
                    WHERE 
                    baseline.submission_date
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

  dimension: baseline_ping_count {
    group_label: "Metrics"
    label: "Baseline pings"
    description: "Counts the number of `baseline` pings received from each client."
    type: number
    sql: ${TABLE}.baseline_ping_count ;;
  }

  dimension: first_run_date {
    group_label: "Metrics"
    label: "First run date"
    description: "The earliest first-run date reported by each client."
    type: number
    sql: ${TABLE}.first_run_date ;;
  }

  dimension: active_hours {
    group_label: "Metrics"
    label: "Active Hours"
    description: "Total time Firefox was active"
    type: number
    sql: ${TABLE}.active_hours ;;
  }

  dimension: days_of_use {
    group_label: "Metrics"
    label: "Days of use"
    description: "The number of days in an observation window that clients used the browser."
    type: number
    sql: ${TABLE}.days_of_use ;;
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
    fields: [baseline_ping_count, first_run_date, active_hours, days_of_use]
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