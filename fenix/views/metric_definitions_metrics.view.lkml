
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: metric_definitions_metrics {
  derived_table: {
    sql: SELECT
                IF(SUM(CASE WHEN metrics.boolean.metrics_default_browser THEN 1 ELSE 0 END) > 0, 1, 0) AS is_default_browser_v1,COUNT(document_id) AS metric_ping_count,ARRAY_AGG(metrics.timing_distribution.performance_pageload_load_time IGNORE NULLS) AS performance_pageload_load_time,ARRAY_AGG(metrics.timing_distribution.performance_pageload_load_time_responsestart IGNORE NULLS) AS performance_pageload_load_time_responsestart,ARRAY_AGG(metrics.timing_distribution.performance_page_non_blank_paint IGNORE NULLS) AS performance_page_non_blank_paint,ARRAY_AGG(metrics.timing_distribution.performance_pageload_req_anim_frame_callback IGNORE NULLS) AS performance_pageload_req_anim_frame_callback,ARRAY_AGG(metrics.timing_distribution.performance_pageload_dcl IGNORE NULLS) AS performance_pageload_dcl,ARRAY_AGG(metrics.timing_distribution.performance_pageload_dcl_responsestart IGNORE NULLS) AS performance_pageload_dcl_responsestart,ARRAY_AGG(metrics.timing_distribution.performance_pageload_fcp IGNORE NULLS) AS performance_pageload_fcp,ARRAY_AGG(metrics.timing_distribution.performance_pageload_fcp_responsestart IGNORE NULLS) AS performance_pageload_fcp_responsestart,ARRAY_AGG(metrics.timing_distribution.perf_startup_cold_main_app_to_first_frame IGNORE NULLS) AS perf_startup_cold_main_app_to_first_frame,ARRAY_AGG(metrics.timing_distribution.perf_startup_cold_view_app_to_first_frame IGNORE NULLS) AS perf_startup_cold_view_app_to_first_frame,ARRAY_AGG(metrics.memory_distribution.storage_stats_app_bytes IGNORE NULLS) AS storage_stats_app_bytes,ARRAY_AGG(metrics.memory_distribution.storage_stats_cache_bytes IGNORE NULLS) AS storage_stats_cache_bytes,ARRAY_AGG(metrics.memory_distribution.storage_stats_data_dir_bytes IGNORE NULLS) AS storage_stats_data_dir_bytes,  COALESCE(MAX(
    CAST(
       metrics.boolean.customize_home_contile AS int )
  ),0) AS spoc_tiles_disable_rate,MAX(IF(metrics.boolean.preferences_signed_in_sync, 1, 0)) AS fxa_sign_in,
                client_info.client_id AS client_id,
                submission_date AS submission_date
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
              WHERE submission_date BETWEEN
                SAFE_CAST({% date_start metric_definitions_metrics.submission_date %} AS DATE) AND
                SAFE_CAST({% date_end metric_definitions_metrics.submission_date %} AS DATE)
              GROUP BY
                client_id,
                submission_date ;;
  }

  dimension: client_id {
    type: string
    sql: SAFE_CAST(${TABLE}.client_id AS STRING) ;;
    label: "Client ID"
    primary_key: yes
    description: "Unique client identifier"
  }

  dimension: is_default_browser_v1 {
    label: "Is Default Browser"
    description: "Was Firefox the default browser at any point during the interval?
    "
    type: number
    sql: ${TABLE}.is_default_browser_v1 ;;
  }

  dimension: metric_ping_count {
    label: "Metrics pings"
    description: "Counts the number of `metrics` pings received from each client."
    type: number
    sql: ${TABLE}.metric_ping_count ;;
  }

  dimension: performance_pageload_load_time {
    label: "Pageload Load Time"
    description: "Time in milliseconds from navigationStart to loadEventStart for the foreground http or https root content document."
    type: number
    sql: ${TABLE}.performance_pageload_load_time ;;
  }

  dimension: performance_pageload_load_time_responsestart {
    label: "Pageload Load Time Response Start"
    description: "Time in milliseconds from responseStart to loadEventStart for the foreground http or https root content document."
    type: number
    sql: ${TABLE}.performance_pageload_load_time_responsestart ;;
  }

  dimension: performance_page_non_blank_paint {
    label: "Page Non Blank Paint"
    description: "The time between navigationStart and the first non-blank paint of a foreground root content document, in milliseconds."
    type: number
    sql: ${TABLE}.performance_page_non_blank_paint ;;
  }

  dimension: performance_pageload_req_anim_frame_callback {
    label: "Pageload Load Req Animation Frame Callback"
    description: "Time spent in milliseconds calling all request animation frame callbacks for a document before it has reached readystate complete."
    type: number
    sql: ${TABLE}.performance_pageload_req_anim_frame_callback ;;
  }

  dimension: performance_pageload_dcl {
    label: "Pageload DCL"
    description: "Time in milliseconds from navigationStart to domContentLoaded for the foreground http or https root content document."
    type: number
    sql: ${TABLE}.performance_pageload_dcl ;;
  }

  dimension: performance_pageload_dcl_responsestart {
    label: "Pageload DCL Response Start"
    description: "Time in milliseconds from responseStart to domContentLoaded for the foreground http or https root content document."
    type: number
    sql: ${TABLE}.performance_pageload_dcl_responsestart ;;
  }

  dimension: performance_pageload_fcp {
    label: "Pageload FCP"
    description: "The time between navigationStart and the first contentful paint of a foreground http or https root content document, in milliseconds. The contentful paint timestamp is taken during display list building and does not include rasterization or compositing of that paint."
    type: number
    sql: ${TABLE}.performance_pageload_fcp ;;
  }

  dimension: performance_pageload_fcp_responsestart {
    label: "Pageload FCP Response Start"
    description: "The time between responseStart and the first contentful paint of a foreground http or https root content document, in milliseconds. The contentful paint timestamp is taken during display list building and does not include rasterization or compositing of that paint."
    type: number
    sql: ${TABLE}.performance_pageload_fcp_responsestart ;;
  }

  dimension: perf_startup_cold_main_app_to_first_frame {
    label: "Startup Cold Main App to First Frame"
    description: "The duration from `*Application`'s initializer to the first Android frame
    being drawn in a [COLD MAIN start
    up](https://wiki.mozilla.org/index.php?title=Performance/Fenix/Glossary)."
    type: number
    sql: ${TABLE}.perf_startup_cold_main_app_to_first_frame ;;
  }

  dimension: perf_startup_cold_view_app_to_first_frame {
    label: "Startup Cold View App to First Frame"
    description: "The duration from `*Application`'s initializer to the first Android frame
    being drawn in a [COLD VIEW start
    up](https://wiki.mozilla.org/index.php?title=Performance/Fenix/Glossary)."
    type: number
    sql: ${TABLE}.perf_startup_cold_view_app_to_first_frame ;;
  }

  dimension: storage_stats_app_bytes {
    label: "App Byte Size"
    description: "The size of the app's APK and related files as installed: this is expected
    to be larger than download size."
    type: number
    sql: ${TABLE}.storage_stats_app_bytes ;;
  }

  dimension: storage_stats_cache_bytes {
    label: "Cache Byte Size"
    description: "The size of all cached data in the app."
    type: number
    sql: ${TABLE}.storage_stats_cache_bytes ;;
  }

  dimension: storage_stats_data_dir_bytes {
    label: "Data Dir Byte Size"
    description: "The size of all data minus `cache_bytes`."
    type: number
    sql: ${TABLE}.storage_stats_data_dir_bytes ;;
  }

  dimension: spoc_tiles_disable_rate {
    label: "Sponsored Tiles Disable Rate"
    description: "Fraction of users who disable Contile Sponsored Tiles"
    type: number
    sql: ${TABLE}.spoc_tiles_disable_rate ;;
  }

  dimension: fxa_sign_in {
    label: "Firefox Accounts Signed In"
    description: "Whether a user was signed into FxA at any point in the period"
    type: number
    sql: ${TABLE}.fxa_sign_in ;;
  }

  dimension_group: submission {
    type: time
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
    sql: IF(SAFE_CAST(${TABLE}.is_default_browser_v1 AS BOOL), ${TABLE}.client_id, SAFE_CAST(NULL AS STRING)) ;;
    description: "Number of clients with Is Default Browser"
  }

  measure: is_default_browser_v1_sum {
    type: sum
    sql: ${TABLE}.is_default_browser_v1 ;;
    label: "Is Default Browser Sum"
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
}
