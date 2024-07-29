
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: metric_definitions_events {
  derived_table: {
    sql: SELECT
                COALESCE(LOGICAL_OR(            event_method = 'open_management'
            AND event_category = 'pwmgr'
         ), FALSE) AS view_about_logins,
COALESCE(LOGICAL_OR(            event_method = 'show'
            AND event_object = 'protection_report'
         ), FALSE) AS view_about_protections,
COALESCE(LOGICAL_OR(            event_method = 'connect'
            AND event_object = 'account'
         ), FALSE) AS connect_fxa,

                
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
                        events.*,
                        
                    FROM
                    (
            SELECT
                *
            FROM
                mozdata.telemetry.events
            ) AS events
        
                    WHERE 
                    events.submission_date
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

  dimension: view_about_logins {
    group_label: "Metrics"
    label: "about:logins viewers"
    description: "    Counts the number of clients that viewed about:logins.
"
    type: number
    sql: ${TABLE}.view_about_logins ;;
  }

  dimension: view_about_protections {
    group_label: "Metrics"
    label: "about:protections viewers"
    description: "    Counts the number of clients that viewed about:protections.
"
    type: number
    sql: ${TABLE}.view_about_protections ;;
  }

  dimension: connect_fxa {
    group_label: "Metrics"
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
    fields: [view_about_logins, view_about_protections, connect_fxa]
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