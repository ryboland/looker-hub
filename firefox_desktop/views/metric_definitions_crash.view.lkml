
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: metric_definitions_crash {
  derived_table: {
    sql: SELECT
                SUM(IF(REGEXP_CONTAINS(payload.process_type, 'content') AND REGEXP_CONTAINS(payload.metadata.ipc_channel_error, 'ShutDownKill'), 1, 0)) AS content_shutdown_crashes,
SUM(IF(REGEXP_CONTAINS(payload.process_type, 'content') AND NOT REGEXP_CONTAINS(COALESCE(payload.metadata.ipc_channel_error, ''), 'ShutDownKill'), 1, 0)) AS content_crashes,
SUM(IF(payload.metadata.moz_crash_reason LIKE r'MOZ\_CRASH%', 1, 0)) AS shutdown_hangs,
SUM(IF(payload.metadata.oom_allocation_size IS NOT NULL, 1, 0)) AS oom_crashes,
SUM(IF(payload.process_type = 'main' OR payload.process_type IS NULL, 1, 0)) AS main_crashes,
SUM(IF(payload.metadata.startup_crash = '1', 1, 0)) AS startup_crashes,

                
                client_id AS client_id,
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
                        crash.*,
                        
                    FROM
                    (
            SELECT
                *
            FROM
                (
    SELECT
        *,
        DATE(submission_timestamp) AS submission_date,
        environment.experiments
    FROM mozdata.telemetry.crash
)
            ) AS crash
        
                    WHERE 
                    crash.submission_date
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

  dimension: content_shutdown_crashes {
    group_label: "Metrics"
    label: "Content Shutdown Crashes"
    description: "Number of Content Shutdown Crashes"
    type: number
    sql: ${TABLE}.content_shutdown_crashes ;;
  }

  dimension: content_crashes {
    group_label: "Metrics"
    label: "Content Crashes"
    description: "Number of Content Crashes"
    type: number
    sql: ${TABLE}.content_crashes ;;
  }

  dimension: shutdown_hangs {
    group_label: "Metrics"
    label: "Shutdown Hangs"
    description: "Number of Shutdown Hangs"
    type: number
    sql: ${TABLE}.shutdown_hangs ;;
  }

  dimension: oom_crashes {
    group_label: "Metrics"
    label: "OOM Crashes"
    description: "Number of Out of Memory Crashes"
    type: number
    sql: ${TABLE}.oom_crashes ;;
  }

  dimension: main_crashes {
    group_label: "Metrics"
    label: "Main Crashes"
    description: "Number of Main Crashes"
    type: number
    sql: ${TABLE}.main_crashes ;;
  }

  dimension: startup_crashes {
    group_label: "Metrics"
    label: "Startup Crashes"
    description: "Number of Startup Crashes"
    type: number
    sql: ${TABLE}.startup_crashes ;;
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
    fields: [
      content_shutdown_crashes,
      content_crashes,
      shutdown_hangs,
      oom_crashes,
      main_crashes,
      startup_crashes,
    ]
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