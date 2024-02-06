
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: metric_definitions_metrics {
  derived_table: {
    sql: SELECT
                    SUM(CASE WHEN metrics.boolean.metrics_default_browser THEN 1 ELSE 0 END) > 0 AS is_default_browser_v1,
COUNT(document_id) AS metric_ping_count,
ARRAY_AGG(metrics.timing_distribution.performance_pageload_load_time IGNORE NULLS) AS performance_pageload_load_time,
ARRAY_AGG(metrics.timing_distribution.performance_pageload_load_time_responsestart IGNORE NULLS) AS performance_pageload_load_time_responsestart,
ARRAY_AGG(metrics.timing_distribution.performance_page_non_blank_paint IGNORE NULLS) AS performance_page_non_blank_paint,
ARRAY_AGG(metrics.timing_distribution.performance_pageload_req_anim_frame_callback IGNORE NULLS) AS performance_pageload_req_anim_frame_callback,
ARRAY_AGG(metrics.timing_distribution.performance_pageload_dcl IGNORE NULLS) AS performance_pageload_dcl,
ARRAY_AGG(metrics.timing_distribution.performance_pageload_dcl_responsestart IGNORE NULLS) AS performance_pageload_dcl_responsestart,
ARRAY_AGG(metrics.timing_distribution.performance_pageload_fcp IGNORE NULLS) AS performance_pageload_fcp,
ARRAY_AGG(metrics.timing_distribution.performance_pageload_fcp_responsestart IGNORE NULLS) AS performance_pageload_fcp_responsestart,
ARRAY_AGG(metrics.timing_distribution.perf_startup_cold_main_app_to_first_frame IGNORE NULLS) AS perf_startup_cold_main_app_to_first_frame,
ARRAY_AGG(metrics.timing_distribution.perf_startup_cold_view_app_to_first_frame IGNORE NULLS) AS perf_startup_cold_view_app_to_first_frame,
ARRAY_AGG(metrics.memory_distribution.storage_stats_app_bytes IGNORE NULLS) AS storage_stats_app_bytes,
ARRAY_AGG(metrics.memory_distribution.storage_stats_cache_bytes IGNORE NULLS) AS storage_stats_cache_bytes,
ARRAY_AGG(metrics.memory_distribution.storage_stats_data_dir_bytes IGNORE NULLS) AS storage_stats_data_dir_bytes,
  COALESCE(MAX(
    CAST(
       metrics.boolean.customize_home_contile AS int )
  ),0) AS spoc_tiles_disable_rate,
MAX(IF(metrics.boolean.preferences_signed_in_sync, 1, 0)) AS fxa_sign_in,

      android_sdk_version,
      base.app_build,
      base.app_channel,
      base.app_display_version,
      base.architecture,
      base.city,
      base.country,
      base.days_seen_session_end_bits,
      base.days_seen_session_start_bits,
      base.device_manufacturer,
      base.device_model,
      base.durations,
      base.is_new_profile,
      base.isp,
      base.locale,
      base.normalized_app_id,
      base.normalized_channel,
      base.normalized_os,
      base.normalized_os_version,
      base.sample_id,
      base.telemetry_sdk_build,

      metrics_data_source.client_info.client_id AS client_id,
      {% if aggregate_metrics_by._parameter_value == 'day' %}
      metrics_data_source.submission_date AS analysis_basis,
      {% elsif aggregate_metrics_by._parameter_value == 'week'  %}
      (FORMAT_DATE('%F', DATE_TRUNC(metrics_data_source.submission_date, WEEK(MONDAY)))) AS analysis_basis,
      {% elsif aggregate_metrics_by._parameter_value == 'month'  %}
      (FORMAT_DATE('%Y-%m', metrics_data_source.submission_date)) AS analysis_basis,
      {% elsif aggregate_metrics_by._parameter_value == 'quarter'  %}
      (FORMAT_DATE('%Y-%m', DATE_TRUNC(metrics_data_source.submission_date, QUARTER))) AS analysis_basis,
      {% elsif aggregate_metrics_by._parameter_value == 'year'  %}
      (EXTRACT(YEAR FROM metrics_data_source.submission_date)) AS analysis_basis,
      {% else %}
      NULL as analysis_basis,
      {% endif %}
      metrics_data_source.submission_date AS submission_date
      FROM
      (
      SELECT
      *
      FROM
      (
      SELECT
      p.*,
      DATE(p.submission_timestamp) AS submission_date
      FROM `moz-fx-data-shared-prod.fenix.metrics` p
      )
      )
      AS metrics_data_source
      INNER JOIN mozdata.fenix.baseline_clients_daily base
      ON base.submission_date = metrics_data_source.submission_date AND
      base.client_id = metrics_data_source.client_info.client_id
      WHERE base.submission_date BETWEEN
      SAFE_CAST({% date_start submission_date %} AS DATE) AND
      SAFE_CAST({% date_end submission_date %} AS DATE)
      GROUP BY
      android_sdk_version,
      app_build,
      app_channel,
      app_display_version,
      architecture,
      city,
      country,
      days_seen_session_end_bits,
      days_seen_session_start_bits,
      device_manufacturer,
      device_model,
      durations,
      is_new_profile,
      isp,
      locale,
      normalized_app_id,
      normalized_channel,
      normalized_os,
      normalized_os_version,
      sample_id,
      telemetry_sdk_build,

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

  dimension: is_default_browser_v1 {
    group_label: "Metrics"
    label: "Is Default Browser"
    description: "Was Firefox the default browser at any point during the interval?
    "
    type: number
    sql: ${TABLE}.is_default_browser_v1 ;;
  }

  dimension: metric_ping_count {
    group_label: "Metrics"
    label: "Metrics pings"
    description: "Counts the number of `metrics` pings received from each client."
    type: number
    sql: ${TABLE}.metric_ping_count ;;
  }

  dimension: performance_pageload_load_time {
    group_label: "Metrics"
    label: "Pageload Load Time"
    description: "Time in milliseconds from navigationStart to loadEventStart for the foreground http or https root content document."
    type: number
    sql: ${TABLE}.performance_pageload_load_time ;;
  }

  dimension: performance_pageload_load_time_responsestart {
    group_label: "Metrics"
    label: "Pageload Load Time Response Start"
    description: "Time in milliseconds from responseStart to loadEventStart for the foreground http or https root content document."
    type: number
    sql: ${TABLE}.performance_pageload_load_time_responsestart ;;
  }

  dimension: performance_page_non_blank_paint {
    group_label: "Metrics"
    label: "Page Non Blank Paint"
    description: "The time between navigationStart and the first non-blank paint of a foreground root content document, in milliseconds."
    type: number
    sql: ${TABLE}.performance_page_non_blank_paint ;;
  }

  dimension: performance_pageload_req_anim_frame_callback {
    group_label: "Metrics"
    label: "Pageload Load Req Animation Frame Callback"
    description: "Time spent in milliseconds calling all request animation frame callbacks for a document before it has reached readystate complete."
    type: number
    sql: ${TABLE}.performance_pageload_req_anim_frame_callback ;;
  }

  dimension: performance_pageload_dcl {
    group_label: "Metrics"
    label: "Pageload DCL"
    description: "Time in milliseconds from navigationStart to domContentLoaded for the foreground http or https root content document."
    type: number
    sql: ${TABLE}.performance_pageload_dcl ;;
  }

  dimension: performance_pageload_dcl_responsestart {
    group_label: "Metrics"
    label: "Pageload DCL Response Start"
    description: "Time in milliseconds from responseStart to domContentLoaded for the foreground http or https root content document."
    type: number
    sql: ${TABLE}.performance_pageload_dcl_responsestart ;;
  }

  dimension: performance_pageload_fcp {
    group_label: "Metrics"
    label: "Pageload FCP"
    description: "The time between navigationStart and the first contentful paint of a foreground http or https root content document, in milliseconds. The contentful paint timestamp is taken during display list building and does not include rasterization or compositing of that paint."
    type: number
    sql: ${TABLE}.performance_pageload_fcp ;;
  }

  dimension: performance_pageload_fcp_responsestart {
    group_label: "Metrics"
    label: "Pageload FCP Response Start"
    description: "The time between responseStart and the first contentful paint of a foreground http or https root content document, in milliseconds. The contentful paint timestamp is taken during display list building and does not include rasterization or compositing of that paint."
    type: number
    sql: ${TABLE}.performance_pageload_fcp_responsestart ;;
  }

  dimension: perf_startup_cold_main_app_to_first_frame {
    group_label: "Metrics"
    label: "Startup Cold Main App to First Frame"
    description: "The duration from `*Application`'s initializer to the first Android frame
    being drawn in a [COLD MAIN start
    up](https://wiki.mozilla.org/index.php?title=Performance/Fenix/Glossary)."
    type: number
    sql: ${TABLE}.perf_startup_cold_main_app_to_first_frame ;;
  }

  dimension: perf_startup_cold_view_app_to_first_frame {
    group_label: "Metrics"
    label: "Startup Cold View App to First Frame"
    description: "The duration from `*Application`'s initializer to the first Android frame
    being drawn in a [COLD VIEW start
    up](https://wiki.mozilla.org/index.php?title=Performance/Fenix/Glossary)."
    type: number
    sql: ${TABLE}.perf_startup_cold_view_app_to_first_frame ;;
  }

  dimension: storage_stats_app_bytes {
    group_label: "Metrics"
    label: "App Byte Size"
    description: "The size of the app's APK and related files as installed: this is expected
    to be larger than download size."
    type: number
    sql: ${TABLE}.storage_stats_app_bytes ;;
  }

  dimension: storage_stats_cache_bytes {
    group_label: "Metrics"
    label: "Cache Byte Size"
    description: "The size of all cached data in the app."
    type: number
    sql: ${TABLE}.storage_stats_cache_bytes ;;
  }

  dimension: storage_stats_data_dir_bytes {
    group_label: "Metrics"
    label: "Data Dir Byte Size"
    description: "The size of all data minus `cache_bytes`."
    type: number
    sql: ${TABLE}.storage_stats_data_dir_bytes ;;
  }

  dimension: spoc_tiles_disable_rate {
    group_label: "Metrics"
    label: "Sponsored Tiles Disable Rate"
    description: "Fraction of users who disable Contile Sponsored Tiles"
    type: number
    sql: ${TABLE}.spoc_tiles_disable_rate ;;
  }

  dimension: fxa_sign_in {
    group_label: "Metrics"
    label: "Firefox Accounts Signed In"
    description: "Whether a user was signed into FxA at any point in the period"
    type: number
    sql: ${TABLE}.fxa_sign_in ;;
  }

  dimension: android_sdk_version {
    sql: ${TABLE}.android_sdk_version ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: app_build {
    sql: ${TABLE}.app_build ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: app_channel {
    sql: ${TABLE}.app_channel ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: app_display_version {
    sql: ${TABLE}.app_display_version ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: architecture {
    sql: ${TABLE}.architecture ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: city {
    sql: ${TABLE}.city ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: country {
    sql: ${TABLE}.country ;;
    type: string
    map_layer_name: countries
    group_label: "Base Fields"
  }

  dimension: days_seen_session_end_bits {
    sql: ${TABLE}.days_seen_session_end_bits ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: days_seen_session_start_bits {
    sql: ${TABLE}.days_seen_session_start_bits ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: device_manufacturer {
    sql: ${TABLE}.device_manufacturer ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: device_model {
    sql: ${TABLE}.device_model ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: durations {
    sql: ${TABLE}.durations ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: is_new_profile {
    sql: ${TABLE}.is_new_profile ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: isp {
    sql: ${TABLE}.isp ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: locale {
    sql: ${TABLE}.locale ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: normalized_app_id {
    sql: ${TABLE}.normalized_app_id ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: normalized_channel {
    sql: ${TABLE}.normalized_channel ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: normalized_os {
    sql: ${TABLE}.normalized_os ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: normalized_os_version {
    sql: ${TABLE}.normalized_os_version ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: sample_id {
    sql: ${TABLE}.sample_id ;;
    type: number
    group_label: "Base Fields"
  }

  dimension: telemetry_sdk_build {
    sql: ${TABLE}.telemetry_sdk_build ;;
    type: string
    group_label: "Base Fields"
  }

  dimension_group: submission {
    type: time
    group_label: "Base Fields"
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

  measure: is_default_browser_v1_client_count {
    type: count_distinct
    label: "Is Default Browser Client Count"
    group_label: "Statistics"
    sql: IF(SAFE_CAST(${TABLE}.is_default_browser_v1 AS BOOL), ${TABLE}.client_id, SAFE_CAST(NULL AS STRING)) ;;
    description: "Number of clients with Is Default Browser"
  }

  measure: is_default_browser_v1_sum {
    type: sum
    sql: ${TABLE}.is_default_browser_v1 ;;
    label: "Is Default Browser Sum"
    group_label: "Statistics"
    description: "Sum of Is Default Browser"
  }

  set: metrics {
    fields: [
      is_default_browser_v1,
      metric_ping_count,
      performance_pageload_load_time,
      performance_pageload_load_time_responsestart,
      performance_page_non_blank_paint,
      performance_pageload_req_anim_frame_callback,
      performance_pageload_dcl,
      performance_pageload_dcl_responsestart,
      performance_pageload_fcp,
      performance_pageload_fcp_responsestart,
      perf_startup_cold_main_app_to_first_frame,
      perf_startup_cold_view_app_to_first_frame,
      storage_stats_app_bytes,
      storage_stats_cache_bytes,
      storage_stats_data_dir_bytes,
      spoc_tiles_disable_rate,
      fxa_sign_in,
      is_default_browser_v1_client_count,
      is_default_browser_v1_sum,
    ]
  }

  parameter: aggregate_metrics_by {
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
}
