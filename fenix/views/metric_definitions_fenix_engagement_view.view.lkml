
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: metric_definitions_fenix_engagement_view {
  derived_table: {
    sql: SELECT
                SUM(dau) / SUM(mau) AS engagement_rate_v1,

                fenix_engagement_view_adjust_ad_group,
fenix_engagement_view_adjust_campaign,
fenix_engagement_view_adjust_creative,
fenix_engagement_view_adjust_network,
fenix_engagement_view_app_name,
fenix_engagement_view_app_version,
fenix_engagement_view_country,
fenix_engagement_view_dau,
fenix_engagement_view_install_source,
fenix_engagement_view_is_mobile,
fenix_engagement_view_lifecycle_stage,
fenix_engagement_view_locale,
fenix_engagement_view_mau,
fenix_engagement_view_meta_attribution_app,
fenix_engagement_view_normalized_channel,
fenix_engagement_view_paid_vs_organic,
fenix_engagement_view_play_store_attribution_campaign,
fenix_engagement_view_play_store_attribution_medium,
fenix_engagement_view_play_store_attribution_source,
fenix_engagement_view_wau,

                NULL AS client_id,
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
                        fenix_engagement_view.*,
                        fenix_engagement_view.adjust_ad_group AS fenix_engagement_view_adjust_ad_group,
fenix_engagement_view.adjust_campaign AS fenix_engagement_view_adjust_campaign,
fenix_engagement_view.adjust_creative AS fenix_engagement_view_adjust_creative,
fenix_engagement_view.adjust_network AS fenix_engagement_view_adjust_network,
fenix_engagement_view.app_name AS fenix_engagement_view_app_name,
fenix_engagement_view.app_version AS fenix_engagement_view_app_version,
fenix_engagement_view.country AS fenix_engagement_view_country,
fenix_engagement_view.dau AS fenix_engagement_view_dau,
fenix_engagement_view.install_source AS fenix_engagement_view_install_source,
fenix_engagement_view.is_mobile AS fenix_engagement_view_is_mobile,
fenix_engagement_view.lifecycle_stage AS fenix_engagement_view_lifecycle_stage,
fenix_engagement_view.locale AS fenix_engagement_view_locale,
fenix_engagement_view.mau AS fenix_engagement_view_mau,
fenix_engagement_view.meta_attribution_app AS fenix_engagement_view_meta_attribution_app,
fenix_engagement_view.normalized_channel AS fenix_engagement_view_normalized_channel,
fenix_engagement_view.paid_vs_organic AS fenix_engagement_view_paid_vs_organic,
fenix_engagement_view.play_store_attribution_campaign AS fenix_engagement_view_play_store_attribution_campaign,
fenix_engagement_view.play_store_attribution_medium AS fenix_engagement_view_play_store_attribution_medium,
fenix_engagement_view.play_store_attribution_source AS fenix_engagement_view_play_store_attribution_source,
fenix_engagement_view.wau AS fenix_engagement_view_wau,

                    FROM
                    (
            SELECT
                *
            FROM
                (
    SELECT *
     FROM `moz-fx-data-shared-prod.fenix.engagement`
    WHERE is_mobile
)
            ) AS fenix_engagement_view
        
                    WHERE 
                    fenix_engagement_view.submission_date
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
                fenix_engagement_view_adjust_ad_group,
fenix_engagement_view_adjust_campaign,
fenix_engagement_view_adjust_creative,
fenix_engagement_view_adjust_network,
fenix_engagement_view_app_name,
fenix_engagement_view_app_version,
fenix_engagement_view_country,
fenix_engagement_view_dau,
fenix_engagement_view_install_source,
fenix_engagement_view_is_mobile,
fenix_engagement_view_lifecycle_stage,
fenix_engagement_view_locale,
fenix_engagement_view_mau,
fenix_engagement_view_meta_attribution_app,
fenix_engagement_view_normalized_channel,
fenix_engagement_view_paid_vs_organic,
fenix_engagement_view_play_store_attribution_campaign,
fenix_engagement_view_play_store_attribution_medium,
fenix_engagement_view_play_store_attribution_source,
fenix_engagement_view_wau,

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

  dimension: engagement_rate_v1 {
    group_label: "Metrics"
    label: "Fenix Engagement Rate"
    description: "    The Engagement Rate is calculated as the ratio between DAU and MAU. For each day, we use the single-day DAU number and divide
    it by the MAU corresponding to the 28-day period ending on that day. For OKR reporting, we then calculate a 
    28-day moving average of this number. More information is provided on the
    [New Profiles, Retention and Engagement Rate Confluence Page](https://mozilla-hub.atlassian.net/wiki/spaces/DATA/pages/814481685/Firefox+New+Profiles+Retention+and+Engagement#Engagement-Rate).
"
    type: number
    sql: ${TABLE}.engagement_rate_v1 ;;
  }

  dimension: adjust_ad_group {
    sql: ${TABLE}.fenix_engagement_view_adjust_ad_group ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: adjust_campaign {
    sql: ${TABLE}.fenix_engagement_view_adjust_campaign ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: adjust_creative {
    sql: ${TABLE}.fenix_engagement_view_adjust_creative ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: adjust_network {
    sql: ${TABLE}.fenix_engagement_view_adjust_network ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: app_name {
    sql: ${TABLE}.fenix_engagement_view_app_name ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: app_version {
    sql: ${TABLE}.fenix_engagement_view_app_version ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: country {
    sql: ${TABLE}.fenix_engagement_view_country ;;
    type: string
    map_layer_name: countries
    group_label: "Base Fields"
  }

  dimension: dau {
    sql: ${TABLE}.fenix_engagement_view_dau ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: install_source {
    sql: ${TABLE}.fenix_engagement_view_install_source ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: is_mobile {
    sql: ${TABLE}.fenix_engagement_view_is_mobile ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: lifecycle_stage {
    sql: ${TABLE}.fenix_engagement_view_lifecycle_stage ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: locale {
    sql: ${TABLE}.fenix_engagement_view_locale ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: mau {
    sql: ${TABLE}.fenix_engagement_view_mau ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: meta_attribution_app {
    sql: ${TABLE}.fenix_engagement_view_meta_attribution_app ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: normalized_channel {
    sql: ${TABLE}.fenix_engagement_view_normalized_channel ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: paid_vs_organic {
    sql: ${TABLE}.fenix_engagement_view_paid_vs_organic ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: play_store_attribution_campaign {
    sql: ${TABLE}.fenix_engagement_view_play_store_attribution_campaign ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: play_store_attribution_medium {
    sql: ${TABLE}.fenix_engagement_view_play_store_attribution_medium ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: play_store_attribution_source {
    sql: ${TABLE}.fenix_engagement_view_play_store_attribution_source ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: wau {
    sql: ${TABLE}.fenix_engagement_view_wau ;;
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
    fields: [engagement_rate_v1]
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