
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: metric_definitions_focus_android_active_users_aggregates_view {
  derived_table: {
    sql: SELECT
                SUM(dau) AS daily_active_users_v2,

                focus_android_active_users_aggregates_view_adjust_network,
focus_android_active_users_aggregates_view_app_name,
focus_android_active_users_aggregates_view_app_version,
focus_android_active_users_aggregates_view_app_version_is_major_release,
focus_android_active_users_aggregates_view_app_version_major,
focus_android_active_users_aggregates_view_app_version_minor,
focus_android_active_users_aggregates_view_app_version_patch_revision,
focus_android_active_users_aggregates_view_attributed,
focus_android_active_users_aggregates_view_attribution_medium,
focus_android_active_users_aggregates_view_attribution_source,
focus_android_active_users_aggregates_view_channel,
focus_android_active_users_aggregates_view_city,
focus_android_active_users_aggregates_view_country,
focus_android_active_users_aggregates_view_daily_users,
focus_android_active_users_aggregates_view_dau,
focus_android_active_users_aggregates_view_distribution_id,
focus_android_active_users_aggregates_view_first_seen_year,
focus_android_active_users_aggregates_view_install_source,
focus_android_active_users_aggregates_view_is_default_browser,
focus_android_active_users_aggregates_view_locale,
focus_android_active_users_aggregates_view_mau,
focus_android_active_users_aggregates_view_monthly_users,
focus_android_active_users_aggregates_view_os,
focus_android_active_users_aggregates_view_os_grouped,
focus_android_active_users_aggregates_view_os_version,
focus_android_active_users_aggregates_view_os_version_major,
focus_android_active_users_aggregates_view_os_version_minor,
focus_android_active_users_aggregates_view_segment,
focus_android_active_users_aggregates_view_wau,
focus_android_active_users_aggregates_view_weekly_users,

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
                        focus_android_active_users_aggregates_view.*,
                        focus_android_active_users_aggregates_view.adjust_network AS focus_android_active_users_aggregates_view_adjust_network,
focus_android_active_users_aggregates_view.app_name AS focus_android_active_users_aggregates_view_app_name,
focus_android_active_users_aggregates_view.app_version AS focus_android_active_users_aggregates_view_app_version,
focus_android_active_users_aggregates_view.app_version_is_major_release AS focus_android_active_users_aggregates_view_app_version_is_major_release,
focus_android_active_users_aggregates_view.app_version_major AS focus_android_active_users_aggregates_view_app_version_major,
focus_android_active_users_aggregates_view.app_version_minor AS focus_android_active_users_aggregates_view_app_version_minor,
focus_android_active_users_aggregates_view.app_version_patch_revision AS focus_android_active_users_aggregates_view_app_version_patch_revision,
focus_android_active_users_aggregates_view.attributed AS focus_android_active_users_aggregates_view_attributed,
focus_android_active_users_aggregates_view.attribution_medium AS focus_android_active_users_aggregates_view_attribution_medium,
focus_android_active_users_aggregates_view.attribution_source AS focus_android_active_users_aggregates_view_attribution_source,
focus_android_active_users_aggregates_view.channel AS focus_android_active_users_aggregates_view_channel,
focus_android_active_users_aggregates_view.city AS focus_android_active_users_aggregates_view_city,
focus_android_active_users_aggregates_view.country AS focus_android_active_users_aggregates_view_country,
focus_android_active_users_aggregates_view.daily_users AS focus_android_active_users_aggregates_view_daily_users,
focus_android_active_users_aggregates_view.dau AS focus_android_active_users_aggregates_view_dau,
focus_android_active_users_aggregates_view.distribution_id AS focus_android_active_users_aggregates_view_distribution_id,
focus_android_active_users_aggregates_view.first_seen_year AS focus_android_active_users_aggregates_view_first_seen_year,
focus_android_active_users_aggregates_view.install_source AS focus_android_active_users_aggregates_view_install_source,
focus_android_active_users_aggregates_view.is_default_browser AS focus_android_active_users_aggregates_view_is_default_browser,
focus_android_active_users_aggregates_view.locale AS focus_android_active_users_aggregates_view_locale,
focus_android_active_users_aggregates_view.mau AS focus_android_active_users_aggregates_view_mau,
focus_android_active_users_aggregates_view.monthly_users AS focus_android_active_users_aggregates_view_monthly_users,
focus_android_active_users_aggregates_view.os AS focus_android_active_users_aggregates_view_os,
focus_android_active_users_aggregates_view.os_grouped AS focus_android_active_users_aggregates_view_os_grouped,
focus_android_active_users_aggregates_view.os_version AS focus_android_active_users_aggregates_view_os_version,
focus_android_active_users_aggregates_view.os_version_major AS focus_android_active_users_aggregates_view_os_version_major,
focus_android_active_users_aggregates_view.os_version_minor AS focus_android_active_users_aggregates_view_os_version_minor,
focus_android_active_users_aggregates_view.segment AS focus_android_active_users_aggregates_view_segment,
focus_android_active_users_aggregates_view.wau AS focus_android_active_users_aggregates_view_wau,
focus_android_active_users_aggregates_view.weekly_users AS focus_android_active_users_aggregates_view_weekly_users,

                    FROM
                    (
            SELECT
                *
            FROM
                (
    SELECT *
     FROM `moz-fx-data-shared-prod.telemetry.active_users_aggregates`
    WHERE app_name = 'Focus Android'
)
            ) AS focus_android_active_users_aggregates_view
        
                    WHERE 
                    focus_android_active_users_aggregates_view.submission_date
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
                focus_android_active_users_aggregates_view_adjust_network,
focus_android_active_users_aggregates_view_app_name,
focus_android_active_users_aggregates_view_app_version,
focus_android_active_users_aggregates_view_app_version_is_major_release,
focus_android_active_users_aggregates_view_app_version_major,
focus_android_active_users_aggregates_view_app_version_minor,
focus_android_active_users_aggregates_view_app_version_patch_revision,
focus_android_active_users_aggregates_view_attributed,
focus_android_active_users_aggregates_view_attribution_medium,
focus_android_active_users_aggregates_view_attribution_source,
focus_android_active_users_aggregates_view_channel,
focus_android_active_users_aggregates_view_city,
focus_android_active_users_aggregates_view_country,
focus_android_active_users_aggregates_view_daily_users,
focus_android_active_users_aggregates_view_dau,
focus_android_active_users_aggregates_view_distribution_id,
focus_android_active_users_aggregates_view_first_seen_year,
focus_android_active_users_aggregates_view_install_source,
focus_android_active_users_aggregates_view_is_default_browser,
focus_android_active_users_aggregates_view_locale,
focus_android_active_users_aggregates_view_mau,
focus_android_active_users_aggregates_view_monthly_users,
focus_android_active_users_aggregates_view_os,
focus_android_active_users_aggregates_view_os_grouped,
focus_android_active_users_aggregates_view_os_version,
focus_android_active_users_aggregates_view_os_version_major,
focus_android_active_users_aggregates_view_os_version_minor,
focus_android_active_users_aggregates_view_segment,
focus_android_active_users_aggregates_view_wau,
focus_android_active_users_aggregates_view_weekly_users,

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

  dimension: daily_active_users_v2 {
    group_label: "Metrics"
    label: "Focus Android DAU"
    description: "    This is the official DAU reporting definition. The logic is
    [detailed on the Confluence DAU page](https://mozilla-hub.atlassian.net/wiki/spaces/DATA/pages/314704478/Daily+Active+Users+DAU+Metric)
    and is automatically cross-checked, actively monitored, and change controlled.
    Whenever possible, this is the preferred DAU reporting definition to use for Focus Android.
    This metric needs to be aggregated by `submission_date`. If it is not aggregated by `submission_date`,
    it is similar to a \"days of use\" metric, and not DAU.
    
    For more information, refer to [the DAU description in Confluence](https://mozilla-hub.atlassian.net/wiki/spaces/DATA/pages/314704478/Daily+Active+Users+DAU+Metric).
    For questions please contact bochocki@mozilla.com or firefox-kpi@mozilla.com.
"
    type: number
    sql: ${TABLE}.daily_active_users_v2 ;;
  }

  dimension: adjust_network {
    sql: ${TABLE}.focus_android_active_users_aggregates_view_adjust_network ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: app_name {
    sql: ${TABLE}.focus_android_active_users_aggregates_view_app_name ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: app_version {
    sql: ${TABLE}.focus_android_active_users_aggregates_view_app_version ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: app_version_is_major_release {
    sql: ${TABLE}.focus_android_active_users_aggregates_view_app_version_is_major_release ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: app_version_major {
    sql: ${TABLE}.focus_android_active_users_aggregates_view_app_version_major ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: app_version_minor {
    sql: ${TABLE}.focus_android_active_users_aggregates_view_app_version_minor ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: app_version_patch_revision {
    sql: ${TABLE}.focus_android_active_users_aggregates_view_app_version_patch_revision ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: attributed {
    sql: ${TABLE}.focus_android_active_users_aggregates_view_attributed ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: attribution_medium {
    sql: ${TABLE}.focus_android_active_users_aggregates_view_attribution_medium ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: attribution_source {
    sql: ${TABLE}.focus_android_active_users_aggregates_view_attribution_source ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: channel {
    sql: ${TABLE}.focus_android_active_users_aggregates_view_channel ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: city {
    sql: ${TABLE}.focus_android_active_users_aggregates_view_city ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: country {
    sql: ${TABLE}.focus_android_active_users_aggregates_view_country ;;
    type: string
    map_layer_name: countries
    group_label: "Base Fields"
  }

  dimension: daily_users {
    sql: ${TABLE}.focus_android_active_users_aggregates_view_daily_users ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: dau {
    sql: ${TABLE}.focus_android_active_users_aggregates_view_dau ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: distribution_id {
    sql: ${TABLE}.focus_android_active_users_aggregates_view_distribution_id ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: first_seen_year {
    sql: ${TABLE}.focus_android_active_users_aggregates_view_first_seen_year ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: install_source {
    sql: ${TABLE}.focus_android_active_users_aggregates_view_install_source ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: is_default_browser {
    sql: ${TABLE}.focus_android_active_users_aggregates_view_is_default_browser ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: locale {
    sql: ${TABLE}.focus_android_active_users_aggregates_view_locale ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: mau {
    sql: ${TABLE}.focus_android_active_users_aggregates_view_mau ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: monthly_users {
    sql: ${TABLE}.focus_android_active_users_aggregates_view_monthly_users ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: os {
    sql: ${TABLE}.focus_android_active_users_aggregates_view_os ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: os_grouped {
    sql: ${TABLE}.focus_android_active_users_aggregates_view_os_grouped ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: os_version {
    sql: ${TABLE}.focus_android_active_users_aggregates_view_os_version ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: os_version_major {
    sql: ${TABLE}.focus_android_active_users_aggregates_view_os_version_major ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: os_version_minor {
    sql: ${TABLE}.focus_android_active_users_aggregates_view_os_version_minor ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: segment {
    sql: ${TABLE}.focus_android_active_users_aggregates_view_segment ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: wau {
    sql: ${TABLE}.focus_android_active_users_aggregates_view_wau ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: weekly_users {
    sql: ${TABLE}.focus_android_active_users_aggregates_view_weekly_users ;;
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
    fields: [daily_active_users_v2]
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