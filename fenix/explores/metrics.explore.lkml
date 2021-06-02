include: "/looker-hub/fenix/views/metrics.view.lkml"

explore: metrics {
  sql_always_where: ${metrics.submission_date} >= '2010-01-01' ;;
  view_name: metrics

  always_filter: {
    filters: [
      channel: "mozdata.org^_mozilla^_firefox.metrics",
      submission_date: "28 days",
    ]
  }

  join: metrics__metrics__labeled_counter__avif_bit_depth {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__avif_bit_depth}) AS metrics__metrics__labeled_counter__avif_bit_depth ON ${metrics.client_info__client_id} = ${metrics__metrics__labeled_counter__avif_bit_depth.client_id} ;;
  }

  join: metrics__metrics__labeled_counter__avif_decode_result {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__avif_decode_result}) AS metrics__metrics__labeled_counter__avif_decode_result ON ${metrics.client_info__client_id} = ${metrics__metrics__labeled_counter__avif_decode_result.client_id} ;;
  }

  join: metrics__metrics__labeled_counter__avif_decoder {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__avif_decoder}) AS metrics__metrics__labeled_counter__avif_decoder ON ${metrics.client_info__client_id} = ${metrics__metrics__labeled_counter__avif_decoder.client_id} ;;
  }

  join: metrics__metrics__labeled_counter__avif_yuv_color_space {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__avif_yuv_color_space}) AS metrics__metrics__labeled_counter__avif_yuv_color_space ON ${metrics.client_info__client_id} = ${metrics__metrics__labeled_counter__avif_yuv_color_space.client_id} ;;
  }

  join: metrics__metrics__labeled_counter__browser_search_ad_clicks {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__browser_search_ad_clicks}) AS metrics__metrics__labeled_counter__browser_search_ad_clicks ON ${metrics.client_info__client_id} = ${metrics__metrics__labeled_counter__browser_search_ad_clicks.client_id} ;;
  }

  join: metrics__metrics__labeled_counter__browser_search_in_content {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__browser_search_in_content}) AS metrics__metrics__labeled_counter__browser_search_in_content ON ${metrics.client_info__client_id} = ${metrics__metrics__labeled_counter__browser_search_in_content.client_id} ;;
  }

  join: metrics__metrics__labeled_counter__browser_search_with_ads {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__browser_search_with_ads}) AS metrics__metrics__labeled_counter__browser_search_with_ads ON ${metrics.client_info__client_id} = ${metrics__metrics__labeled_counter__browser_search_with_ads.client_id} ;;
  }

  join: metrics__metrics__labeled_counter__crash_metrics_crash_count {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__crash_metrics_crash_count}) AS metrics__metrics__labeled_counter__crash_metrics_crash_count ON ${metrics.client_info__client_id} = ${metrics__metrics__labeled_counter__crash_metrics_crash_count.client_id} ;;
  }

  join: metrics__metrics__labeled_counter__engine_tab_kills {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__engine_tab_kills}) AS metrics__metrics__labeled_counter__engine_tab_kills ON ${metrics.client_info__client_id} = ${metrics__metrics__labeled_counter__engine_tab_kills.client_id} ;;
  }

  join: metrics__metrics__labeled_counter__gfx_content_frame_time_reason {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__gfx_content_frame_time_reason}) AS metrics__metrics__labeled_counter__gfx_content_frame_time_reason ON ${metrics.client_info__client_id} = ${metrics__metrics__labeled_counter__gfx_content_frame_time_reason.client_id} ;;
  }

  join: metrics__metrics__labeled_counter__glean_error_invalid_label {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__glean_error_invalid_label}) AS metrics__metrics__labeled_counter__glean_error_invalid_label ON ${metrics.client_info__client_id} = ${metrics__metrics__labeled_counter__glean_error_invalid_label.client_id} ;;
  }

  join: metrics__metrics__labeled_counter__glean_error_invalid_overflow {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__glean_error_invalid_overflow}) AS metrics__metrics__labeled_counter__glean_error_invalid_overflow ON ${metrics.client_info__client_id} = ${metrics__metrics__labeled_counter__glean_error_invalid_overflow.client_id} ;;
  }

  join: metrics__metrics__labeled_counter__glean_error_invalid_state {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__glean_error_invalid_state}) AS metrics__metrics__labeled_counter__glean_error_invalid_state ON ${metrics.client_info__client_id} = ${metrics__metrics__labeled_counter__glean_error_invalid_state.client_id} ;;
  }

  join: metrics__metrics__labeled_counter__glean_error_invalid_value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__glean_error_invalid_value}) AS metrics__metrics__labeled_counter__glean_error_invalid_value ON ${metrics.client_info__client_id} = ${metrics__metrics__labeled_counter__glean_error_invalid_value.client_id} ;;
  }

  join: metrics__metrics__labeled_counter__glean_upload_ping_upload_failure {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__glean_upload_ping_upload_failure}) AS metrics__metrics__labeled_counter__glean_upload_ping_upload_failure ON ${metrics.client_info__client_id} = ${metrics__metrics__labeled_counter__glean_upload_ping_upload_failure.client_id} ;;
  }

  join: metrics__metrics__labeled_counter__glean_validation_pings_submitted {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__glean_validation_pings_submitted}) AS metrics__metrics__labeled_counter__glean_validation_pings_submitted ON ${metrics.client_info__client_id} = ${metrics__metrics__labeled_counter__glean_validation_pings_submitted.client_id} ;;
  }

  join: metrics__metrics__labeled_counter__logins_store_read_query_error_count {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__logins_store_read_query_error_count}) AS metrics__metrics__labeled_counter__logins_store_read_query_error_count ON ${metrics.client_info__client_id} = ${metrics__metrics__labeled_counter__logins_store_read_query_error_count.client_id} ;;
  }

  join: metrics__metrics__labeled_counter__logins_store_unlock_error_count {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__logins_store_unlock_error_count}) AS metrics__metrics__labeled_counter__logins_store_unlock_error_count ON ${metrics.client_info__client_id} = ${metrics__metrics__labeled_counter__logins_store_unlock_error_count.client_id} ;;
  }

  join: metrics__metrics__labeled_counter__logins_store_write_query_error_count {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__logins_store_write_query_error_count}) AS metrics__metrics__labeled_counter__logins_store_write_query_error_count ON ${metrics.client_info__client_id} = ${metrics__metrics__labeled_counter__logins_store_write_query_error_count.client_id} ;;
  }

  join: metrics__metrics__labeled_counter__media_audio_backend {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__media_audio_backend}) AS metrics__metrics__labeled_counter__media_audio_backend ON ${metrics.client_info__client_id} = ${metrics__metrics__labeled_counter__media_audio_backend.client_id} ;;
  }

  join: metrics__metrics__labeled_counter__media_audio_init_failure {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__media_audio_init_failure}) AS metrics__metrics__labeled_counter__media_audio_init_failure ON ${metrics.client_info__client_id} = ${metrics__metrics__labeled_counter__media_audio_init_failure.client_id} ;;
  }

  join: metrics__metrics__labeled_counter__metrics_search_count {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__metrics_search_count}) AS metrics__metrics__labeled_counter__metrics_search_count ON ${metrics.client_info__client_id} = ${metrics__metrics__labeled_counter__metrics_search_count.client_id} ;;
  }

  join: metrics__metrics__labeled_counter__perf_startup_startup_type {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__perf_startup_startup_type}) AS metrics__metrics__labeled_counter__perf_startup_startup_type ON ${metrics.client_info__client_id} = ${metrics__metrics__labeled_counter__perf_startup_startup_type.client_id} ;;
  }

  join: metrics__metrics__labeled_counter__places_manager_read_query_error_count {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__places_manager_read_query_error_count}) AS metrics__metrics__labeled_counter__places_manager_read_query_error_count ON ${metrics.client_info__client_id} = ${metrics__metrics__labeled_counter__places_manager_read_query_error_count.client_id} ;;
  }

  join: metrics__metrics__labeled_counter__places_manager_write_query_error_count {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__places_manager_write_query_error_count}) AS metrics__metrics__labeled_counter__places_manager_write_query_error_count ON ${metrics.client_info__client_id} = ${metrics__metrics__labeled_counter__places_manager_write_query_error_count.client_id} ;;
  }
}

explore: suggest__metrics__metrics__labeled_counter__avif_bit_depth {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__avif_decode_result {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__avif_decoder {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__avif_yuv_color_space {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__browser_search_ad_clicks {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__browser_search_in_content {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__browser_search_with_ads {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__crash_metrics_crash_count {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__engine_tab_kills {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__gfx_content_frame_time_reason {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__glean_error_invalid_label {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__glean_error_invalid_overflow {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__glean_error_invalid_state {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__glean_error_invalid_value {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__glean_upload_ping_upload_failure {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__glean_validation_pings_submitted {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__logins_store_read_query_error_count {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__logins_store_unlock_error_count {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__logins_store_write_query_error_count {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__media_audio_backend {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__media_audio_init_failure {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__metrics_search_count {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__perf_startup_startup_type {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__places_manager_read_query_error_count {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__places_manager_write_query_error_count {
  hidden: yes
}