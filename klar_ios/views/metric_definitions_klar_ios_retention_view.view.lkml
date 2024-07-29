
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: metric_definitions_klar_ios_retention_view {
  derived_table: {
    sql: SELECT
                SUM(retained_week_4) / SUM(active_metric_date) AS retention_rate_v1,
SUM(retained_week_4_new_profiles) / SUM(new_profiles_metric_date) AS new_profile_retention_rate_v1,

                klar_ios_retention_view_active_metric_date,
klar_ios_retention_view_app_name,
klar_ios_retention_view_app_version,
klar_ios_retention_view_country,
klar_ios_retention_view_is_mobile,
klar_ios_retention_view_lifecycle_stage,
klar_ios_retention_view_locale,
klar_ios_retention_view_new_profiles_metric_date,
klar_ios_retention_view_normalized_channel,
klar_ios_retention_view_paid_vs_organic,
klar_ios_retention_view_ping_sent_metric_date,
klar_ios_retention_view_ping_sent_week_4,
klar_ios_retention_view_repeat_profiles,
klar_ios_retention_view_retained_week_4,
klar_ios_retention_view_retained_week_4_new_profiles,

                NULL AS client_id,
                {% if aggregate_metrics_by._parameter_value == 'day' %}
                metric_date AS analysis_basis
                {% elsif aggregate_metrics_by._parameter_value == 'week'  %}
                (FORMAT_DATE(
                    '%F',
                    DATE_TRUNC(metric_date,
                    WEEK(MONDAY)))
                ) AS analysis_basis
                {% elsif aggregate_metrics_by._parameter_value == 'month'  %}
                (FORMAT_DATE(
                    '%Y-%m',
                    metric_date)
                ) AS analysis_basis
                {% elsif aggregate_metrics_by._parameter_value == 'quarter'  %}
                (FORMAT_DATE(
                    '%Y-%m',
                    DATE_TRUNC(metric_date,
                    QUARTER))
                ) AS analysis_basis
                {% elsif aggregate_metrics_by._parameter_value == 'year'  %}
                (EXTRACT(
                    YEAR FROM metric_date)
                ) AS analysis_basis
                {% else %}
                NULL as analysis_basis
                {% endif %}
            FROM
                (
                    SELECT
                        klar_ios_retention_view.*,
                        klar_ios_retention_view.active_metric_date AS klar_ios_retention_view_active_metric_date,
klar_ios_retention_view.app_name AS klar_ios_retention_view_app_name,
klar_ios_retention_view.app_version AS klar_ios_retention_view_app_version,
klar_ios_retention_view.country AS klar_ios_retention_view_country,
klar_ios_retention_view.is_mobile AS klar_ios_retention_view_is_mobile,
klar_ios_retention_view.lifecycle_stage AS klar_ios_retention_view_lifecycle_stage,
klar_ios_retention_view.locale AS klar_ios_retention_view_locale,
klar_ios_retention_view.new_profiles_metric_date AS klar_ios_retention_view_new_profiles_metric_date,
klar_ios_retention_view.normalized_channel AS klar_ios_retention_view_normalized_channel,
klar_ios_retention_view.paid_vs_organic AS klar_ios_retention_view_paid_vs_organic,
klar_ios_retention_view.ping_sent_metric_date AS klar_ios_retention_view_ping_sent_metric_date,
klar_ios_retention_view.ping_sent_week_4 AS klar_ios_retention_view_ping_sent_week_4,
klar_ios_retention_view.repeat_profiles AS klar_ios_retention_view_repeat_profiles,
klar_ios_retention_view.retained_week_4 AS klar_ios_retention_view_retained_week_4,
klar_ios_retention_view.retained_week_4_new_profiles AS klar_ios_retention_view_retained_week_4_new_profiles,

                    FROM
                    (
            SELECT
                *
            FROM
                (
    SELECT *
     FROM `moz-fx-data-shared-prod.klar_ios.retention`
    WHERE app_name = "Klar iOS"
)
            ) AS klar_ios_retention_view
        
                    WHERE 
                    klar_ios_retention_view.metric_date
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
                klar_ios_retention_view_active_metric_date,
klar_ios_retention_view_app_name,
klar_ios_retention_view_app_version,
klar_ios_retention_view_country,
klar_ios_retention_view_is_mobile,
klar_ios_retention_view_lifecycle_stage,
klar_ios_retention_view_locale,
klar_ios_retention_view_new_profiles_metric_date,
klar_ios_retention_view_normalized_channel,
klar_ios_retention_view_paid_vs_organic,
klar_ios_retention_view_ping_sent_metric_date,
klar_ios_retention_view_ping_sent_week_4,
klar_ios_retention_view_repeat_profiles,
klar_ios_retention_view_retained_week_4,
klar_ios_retention_view_retained_week_4_new_profiles,

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

  dimension: retention_rate_v1 {
    group_label: "Metrics"
    label: "Klar iOS Retention Rate"
    description: "    The Retention Rate is calculated as the proportion of clients that are active on the 4th week after the metric date.
"
    type: number
    sql: ${TABLE}.retention_rate_v1 ;;
  }

  dimension: new_profile_retention_rate_v1 {
    group_label: "Metrics"
    label: "Klar iOS New Proflie Retention Rate"
    description: "    The New Profile Retention Rate is calculated as the proportion of new profiles that are active on the 4th week after the metric date.
    More information is provided on the
    [New Profiles, Retention and Engagement Rate Confluence Page](https://mozilla-hub.atlassian.net/wiki/spaces/DATA/pages/814481685/Firefox+New+Profiles+Retention+and+Engagement#New-Profile-Retention).
"
    type: number
    sql: ${TABLE}.new_profile_retention_rate_v1 ;;
  }

  dimension: active_metric_date {
    sql: ${TABLE}.klar_ios_retention_view_active_metric_date ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: app_name {
    sql: ${TABLE}.klar_ios_retention_view_app_name ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: app_version {
    sql: ${TABLE}.klar_ios_retention_view_app_version ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: country {
    sql: ${TABLE}.klar_ios_retention_view_country ;;
    type: string
    map_layer_name: countries
    group_label: "Base Fields"
  }

  dimension: is_mobile {
    sql: ${TABLE}.klar_ios_retention_view_is_mobile ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: lifecycle_stage {
    sql: ${TABLE}.klar_ios_retention_view_lifecycle_stage ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: locale {
    sql: ${TABLE}.klar_ios_retention_view_locale ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: new_profiles_metric_date {
    sql: ${TABLE}.klar_ios_retention_view_new_profiles_metric_date ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: normalized_channel {
    sql: ${TABLE}.klar_ios_retention_view_normalized_channel ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: paid_vs_organic {
    sql: ${TABLE}.klar_ios_retention_view_paid_vs_organic ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: ping_sent_metric_date {
    sql: ${TABLE}.klar_ios_retention_view_ping_sent_metric_date ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: ping_sent_week_4 {
    sql: ${TABLE}.klar_ios_retention_view_ping_sent_week_4 ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: repeat_profiles {
    sql: ${TABLE}.klar_ios_retention_view_repeat_profiles ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: retained_week_4 {
    sql: ${TABLE}.klar_ios_retention_view_retained_week_4 ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: retained_week_4_new_profiles {
    sql: ${TABLE}.klar_ios_retention_view_retained_week_4_new_profiles ;;
    type: number
    group_label: "Base Fields"
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
    fields: [retention_rate_v1, new_profile_retention_rate_v1]
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