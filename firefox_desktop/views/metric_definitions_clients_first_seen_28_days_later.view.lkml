
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: metric_definitions_clients_first_seen_28_days_later {
  derived_table: {
    sql: SELECT
                LOGICAL_OR(COALESCE(qualified_second_day, FALSE)) AS repeat_first_month_user,
LOGICAL_OR(COALESCE(qualified_week4, FALSE)) AS new_profile_retained_week4,

                
                client_id AS client_id,
                {% if aggregate_metrics_by._parameter_value == 'day' %}
                first_seen_date AS analysis_basis
                {% elsif aggregate_metrics_by._parameter_value == 'week'  %}
                (FORMAT_DATE(
                    '%F',
                    DATE_TRUNC(first_seen_date,
                    WEEK(MONDAY)))
                ) AS analysis_basis
                {% elsif aggregate_metrics_by._parameter_value == 'month'  %}
                (FORMAT_DATE(
                    '%Y-%m',
                    first_seen_date)
                ) AS analysis_basis
                {% elsif aggregate_metrics_by._parameter_value == 'quarter'  %}
                (FORMAT_DATE(
                    '%Y-%m',
                    DATE_TRUNC(first_seen_date,
                    QUARTER))
                ) AS analysis_basis
                {% elsif aggregate_metrics_by._parameter_value == 'year'  %}
                (EXTRACT(
                    YEAR FROM first_seen_date)
                ) AS analysis_basis
                {% else %}
                NULL as analysis_basis
                {% endif %}
            FROM
                (
                    SELECT
                        clients_first_seen_28_days_later.*,
                        
                    FROM
                    (
            SELECT
                *
            FROM
                `moz-fx-data-shared-prod.telemetry.clients_first_seen_28_days_later`
            ) AS clients_first_seen_28_days_later
        
                    WHERE 
                    clients_first_seen_28_days_later.first_seen_date
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

  dimension: repeat_first_month_user {
    group_label: "Metrics"
    label: "Repeat First Month Users"
    description: "Clients that were DAU at least once between their 2nd and 28th days, inclusive (first day = Day 1)."
    type: number
    sql: ${TABLE}.repeat_first_month_user ;;
  }

  dimension: new_profile_retained_week4 {
    group_label: "Metrics"
    label: "Week 4 Retained Users"
    description: "Clients that were DAU at least once between their 22nd and 28th days, inclusive (first day = Day 1)."
    type: number
    sql: ${TABLE}.new_profile_retained_week4 ;;
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
    fields: [repeat_first_month_user, new_profile_retained_week4]
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