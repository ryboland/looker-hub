include: "/looker-hub/fenix/views/metrics.view.lkml"

explore: metrics {
  sql_always_where: ${metrics.submission_date} >= '2010-01-01' ;;
  view_label: " Metrics"
  description: "Explore for the metrics ping. The `metrics` ping is intended for all of the metrics that are explicitly set by the application or are included in the application's `metrics.yaml` file (except events). The reported data is tied to the ping's *measurement window*, which is the time between the collection of two `metrics` ping. Ideally, this window is expected to be about 24 hours, given that the collection is scheduled daily at 4AM. Data in the `ping_info` section of the ping can be used to infer the length of this window."
  view_name: metrics

  always_filter: {
    filters: [
      channel: "moz-fx-data-shared-prod.fenix.metrics",
      submission_date: "28 days",
    ]
  }

  join: metrics__events {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.events}) AS metrics__events ;;
  }

  join: metrics__events__extra {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.events__extra}) AS metrics__events__extra ;;
  }

  join: metrics__metrics__custom_distribution__geckoview_document_site_origins__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__geckoview_document_site_origins__values}) AS metrics__metrics__custom_distribution__geckoview_document_site_origins__values ;;
  }

  join: metrics__metrics__custom_distribution__geckoview_per_document_site_origins__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__geckoview_per_document_site_origins__values}) AS metrics__metrics__custom_distribution__geckoview_per_document_site_origins__values ;;
  }

  join: metrics__metrics__custom_distribution__gfx_checkerboard_peak_pixel_count__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__gfx_checkerboard_peak_pixel_count__values}) AS metrics__metrics__custom_distribution__gfx_checkerboard_peak_pixel_count__values ;;
  }

  join: metrics__metrics__custom_distribution__gfx_checkerboard_severity__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__gfx_checkerboard_severity__values}) AS metrics__metrics__custom_distribution__gfx_checkerboard_severity__values ;;
  }

  join: metrics__metrics__custom_distribution__gfx_content_frame_time_from_paint__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__gfx_content_frame_time_from_paint__values}) AS metrics__metrics__custom_distribution__gfx_content_frame_time_from_paint__values ;;
  }

  join: metrics__metrics__custom_distribution__gfx_content_frame_time_from_vsync__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__gfx_content_frame_time_from_vsync__values}) AS metrics__metrics__custom_distribution__gfx_content_frame_time_from_vsync__values ;;
  }

  join: metrics__metrics__custom_distribution__gfx_content_frame_time_with_svg__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__gfx_content_frame_time_with_svg__values}) AS metrics__metrics__custom_distribution__gfx_content_frame_time_with_svg__values ;;
  }

  join: metrics__metrics__custom_distribution__gfx_content_frame_time_without_resource_upload__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__gfx_content_frame_time_without_resource_upload__values}) AS metrics__metrics__custom_distribution__gfx_content_frame_time_without_resource_upload__values ;;
  }

  join: metrics__metrics__custom_distribution__gfx_content_frame_time_without_upload__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__gfx_content_frame_time_without_upload__values}) AS metrics__metrics__custom_distribution__gfx_content_frame_time_without_upload__values ;;
  }

  join: metrics__metrics__custom_distribution__js_baseline_compile_percentage__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__js_baseline_compile_percentage__values}) AS metrics__metrics__custom_distribution__js_baseline_compile_percentage__values ;;
  }

  join: metrics__metrics__custom_distribution__js_delazification_percentage__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__js_delazification_percentage__values}) AS metrics__metrics__custom_distribution__js_delazification_percentage__values ;;
  }

  join: metrics__metrics__custom_distribution__js_execution_percentage__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__js_execution_percentage__values}) AS metrics__metrics__custom_distribution__js_execution_percentage__values ;;
  }

  join: metrics__metrics__custom_distribution__js_xdr_encode_percentage__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__js_xdr_encode_percentage__values}) AS metrics__metrics__custom_distribution__js_xdr_encode_percentage__values ;;
  }

  join: metrics__metrics__custom_distribution__performance_clone_deserialize_items__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__performance_clone_deserialize_items__values}) AS metrics__metrics__custom_distribution__performance_clone_deserialize_items__values ;;
  }

  join: metrics__metrics__jwe {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__jwe}) AS metrics__metrics__jwe ;;
  }

  join: metrics__metrics__labeled_rate {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_rate}) AS metrics__metrics__labeled_rate ;;
  }

  join: metrics__metrics__labeled_rate__value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_rate__value}) AS metrics__metrics__labeled_rate__value ;;
  }

  join: metrics__metrics__memory_distribution__glean_database_size__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__memory_distribution__glean_database_size__values}) AS metrics__metrics__memory_distribution__glean_database_size__values ;;
  }

  join: metrics__metrics__memory_distribution__glean_upload_discarded_exceeding_pings_size__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__memory_distribution__glean_upload_discarded_exceeding_pings_size__values}) AS metrics__metrics__memory_distribution__glean_upload_discarded_exceeding_pings_size__values ;;
  }

  join: metrics__metrics__memory_distribution__glean_upload_pending_pings_directory_size__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__memory_distribution__glean_upload_pending_pings_directory_size__values}) AS metrics__metrics__memory_distribution__glean_upload_pending_pings_directory_size__values ;;
  }

  join: metrics__metrics__memory_distribution__performance_clone_deserialize_size__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__memory_distribution__performance_clone_deserialize_size__values}) AS metrics__metrics__memory_distribution__performance_clone_deserialize_size__values ;;
  }

  join: metrics__metrics__memory_distribution__storage_stats_app_bytes__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__memory_distribution__storage_stats_app_bytes__values}) AS metrics__metrics__memory_distribution__storage_stats_app_bytes__values ;;
  }

  join: metrics__metrics__memory_distribution__storage_stats_cache_bytes__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__memory_distribution__storage_stats_cache_bytes__values}) AS metrics__metrics__memory_distribution__storage_stats_cache_bytes__values ;;
  }

  join: metrics__metrics__memory_distribution__storage_stats_data_dir_bytes__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__memory_distribution__storage_stats_data_dir_bytes__values}) AS metrics__metrics__memory_distribution__storage_stats_data_dir_bytes__values ;;
  }

  join: metrics__metrics__text {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__text}) AS metrics__metrics__text ;;
  }

  join: metrics__metrics__timing_distribution__engine_tab_kill_background_age__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__engine_tab_kill_background_age__values}) AS metrics__metrics__timing_distribution__engine_tab_kill_background_age__values ;;
  }

  join: metrics__metrics__timing_distribution__engine_tab_kill_foreground_age__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__engine_tab_kill_foreground_age__values}) AS metrics__metrics__timing_distribution__engine_tab_kill_foreground_age__values ;;
  }

  join: metrics__metrics__timing_distribution__geckoview_content_process_lifetime__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__geckoview_content_process_lifetime__values}) AS metrics__metrics__timing_distribution__geckoview_content_process_lifetime__values ;;
  }

  join: metrics__metrics__timing_distribution__geckoview_page_load_progress_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__geckoview_page_load_progress_time__values}) AS metrics__metrics__timing_distribution__geckoview_page_load_progress_time__values ;;
  }

  join: metrics__metrics__timing_distribution__geckoview_page_load_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__geckoview_page_load_time__values}) AS metrics__metrics__timing_distribution__geckoview_page_load_time__values ;;
  }

  join: metrics__metrics__timing_distribution__geckoview_page_reload_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__geckoview_page_reload_time__values}) AS metrics__metrics__timing_distribution__geckoview_page_reload_time__values ;;
  }

  join: metrics__metrics__timing_distribution__geckoview_startup_runtime__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__geckoview_startup_runtime__values}) AS metrics__metrics__timing_distribution__geckoview_startup_runtime__values ;;
  }

  join: metrics__metrics__timing_distribution__gfx_checkerboard_duration__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__gfx_checkerboard_duration__values}) AS metrics__metrics__timing_distribution__gfx_checkerboard_duration__values ;;
  }

  join: metrics__metrics__timing_distribution__gfx_checkerboard_potential_duration__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__gfx_checkerboard_potential_duration__values}) AS metrics__metrics__timing_distribution__gfx_checkerboard_potential_duration__values ;;
  }

  join: metrics__metrics__timing_distribution__gfx_composite_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__gfx_composite_time__values}) AS metrics__metrics__timing_distribution__gfx_composite_time__values ;;
  }

  join: metrics__metrics__timing_distribution__gfx_content_full_paint_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__gfx_content_full_paint_time__values}) AS metrics__metrics__timing_distribution__gfx_content_full_paint_time__values ;;
  }

  join: metrics__metrics__timing_distribution__gfx_content_paint_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__gfx_content_paint_time__values}) AS metrics__metrics__timing_distribution__gfx_content_paint_time__values ;;
  }

  join: metrics__metrics__timing_distribution__gfx_scroll_present_latency__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__gfx_scroll_present_latency__values}) AS metrics__metrics__timing_distribution__gfx_scroll_present_latency__values ;;
  }

  join: metrics__metrics__timing_distribution__gfx_status_framebuild_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__gfx_status_framebuild_time__values}) AS metrics__metrics__timing_distribution__gfx_status_framebuild_time__values ;;
  }

  join: metrics__metrics__timing_distribution__gfx_status_sceneswap_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__gfx_status_sceneswap_time__values}) AS metrics__metrics__timing_distribution__gfx_status_sceneswap_time__values ;;
  }

  join: metrics__metrics__timing_distribution__gfx_webrender_framebuild_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__gfx_webrender_framebuild_time__values}) AS metrics__metrics__timing_distribution__gfx_webrender_framebuild_time__values ;;
  }

  join: metrics__metrics__timing_distribution__gfx_webrender_render_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__gfx_webrender_render_time__values}) AS metrics__metrics__timing_distribution__gfx_webrender_render_time__values ;;
  }

  join: metrics__metrics__timing_distribution__gfx_webrender_scenebuild_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__gfx_webrender_scenebuild_time__values}) AS metrics__metrics__timing_distribution__gfx_webrender_scenebuild_time__values ;;
  }

  join: metrics__metrics__timing_distribution__gfx_webrender_sceneswap_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__gfx_webrender_sceneswap_time__values}) AS metrics__metrics__timing_distribution__gfx_webrender_sceneswap_time__values ;;
  }

  join: metrics__metrics__timing_distribution__javascript_gc_compact_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__javascript_gc_compact_time__values}) AS metrics__metrics__timing_distribution__javascript_gc_compact_time__values ;;
  }

  join: metrics__metrics__timing_distribution__javascript_gc_mark_roots_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__javascript_gc_mark_roots_time__values}) AS metrics__metrics__timing_distribution__javascript_gc_mark_roots_time__values ;;
  }

  join: metrics__metrics__timing_distribution__javascript_gc_mark_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__javascript_gc_mark_time__values}) AS metrics__metrics__timing_distribution__javascript_gc_mark_time__values ;;
  }

  join: metrics__metrics__timing_distribution__javascript_gc_minor_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__javascript_gc_minor_time__values}) AS metrics__metrics__timing_distribution__javascript_gc_minor_time__values ;;
  }

  join: metrics__metrics__timing_distribution__javascript_gc_prepare_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__javascript_gc_prepare_time__values}) AS metrics__metrics__timing_distribution__javascript_gc_prepare_time__values ;;
  }

  join: metrics__metrics__timing_distribution__javascript_gc_slice_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__javascript_gc_slice_time__values}) AS metrics__metrics__timing_distribution__javascript_gc_slice_time__values ;;
  }

  join: metrics__metrics__timing_distribution__javascript_gc_sweep_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__javascript_gc_sweep_time__values}) AS metrics__metrics__timing_distribution__javascript_gc_sweep_time__values ;;
  }

  join: metrics__metrics__timing_distribution__javascript_gc_total_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__javascript_gc_total_time__values}) AS metrics__metrics__timing_distribution__javascript_gc_total_time__values ;;
  }

  join: metrics__metrics__timing_distribution__javascript_pageload_baseline_compile_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__javascript_pageload_baseline_compile_time__values}) AS metrics__metrics__timing_distribution__javascript_pageload_baseline_compile_time__values ;;
  }

  join: metrics__metrics__timing_distribution__javascript_pageload_delazification_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__javascript_pageload_delazification_time__values}) AS metrics__metrics__timing_distribution__javascript_pageload_delazification_time__values ;;
  }

  join: metrics__metrics__timing_distribution__javascript_pageload_execution_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__javascript_pageload_execution_time__values}) AS metrics__metrics__timing_distribution__javascript_pageload_execution_time__values ;;
  }

  join: metrics__metrics__timing_distribution__javascript_pageload_gc_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__javascript_pageload_gc_time__values}) AS metrics__metrics__timing_distribution__javascript_pageload_gc_time__values ;;
  }

  join: metrics__metrics__timing_distribution__javascript_pageload_parse_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__javascript_pageload_parse_time__values}) AS metrics__metrics__timing_distribution__javascript_pageload_parse_time__values ;;
  }

  join: metrics__metrics__timing_distribution__javascript_pageload_protect_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__javascript_pageload_protect_time__values}) AS metrics__metrics__timing_distribution__javascript_pageload_protect_time__values ;;
  }

  join: metrics__metrics__timing_distribution__javascript_pageload_xdr_encode_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__javascript_pageload_xdr_encode_time__values}) AS metrics__metrics__timing_distribution__javascript_pageload_xdr_encode_time__values ;;
  }

  join: metrics__metrics__timing_distribution__js_bytecode_caching_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__js_bytecode_caching_time__values}) AS metrics__metrics__timing_distribution__js_bytecode_caching_time__values ;;
  }

  join: metrics__metrics__timing_distribution__logins_store_read_query_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__logins_store_read_query_time__values}) AS metrics__metrics__timing_distribution__logins_store_read_query_time__values ;;
  }

  join: metrics__metrics__timing_distribution__logins_store_unlock_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__logins_store_unlock_time__values}) AS metrics__metrics__timing_distribution__logins_store_unlock_time__values ;;
  }

  join: metrics__metrics__timing_distribution__logins_store_write_query_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__logins_store_write_query_time__values}) AS metrics__metrics__timing_distribution__logins_store_write_query_time__values ;;
  }

  join: metrics__metrics__timing_distribution__network_cache_hit_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__network_cache_hit_time__values}) AS metrics__metrics__timing_distribution__network_cache_hit_time__values ;;
  }

  join: metrics__metrics__timing_distribution__network_dns_end__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__network_dns_end__values}) AS metrics__metrics__timing_distribution__network_dns_end__values ;;
  }

  join: metrics__metrics__timing_distribution__network_dns_start__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__network_dns_start__values}) AS metrics__metrics__timing_distribution__network_dns_start__values ;;
  }

  join: metrics__metrics__timing_distribution__network_first_from_cache__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__network_first_from_cache__values}) AS metrics__metrics__timing_distribution__network_first_from_cache__values ;;
  }

  join: metrics__metrics__timing_distribution__network_font_download_end__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__network_font_download_end__values}) AS metrics__metrics__timing_distribution__network_font_download_end__values ;;
  }

  join: metrics__metrics__timing_distribution__network_tcp_connection__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__network_tcp_connection__values}) AS metrics__metrics__timing_distribution__network_tcp_connection__values ;;
  }

  join: metrics__metrics__timing_distribution__network_tls_handshake__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__network_tls_handshake__values}) AS metrics__metrics__timing_distribution__network_tls_handshake__values ;;
  }

  join: metrics__metrics__timing_distribution__perf_awesomebar_bookmark_suggestions__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__perf_awesomebar_bookmark_suggestions__values}) AS metrics__metrics__timing_distribution__perf_awesomebar_bookmark_suggestions__values ;;
  }

  join: metrics__metrics__timing_distribution__perf_awesomebar_clipboard_suggestions__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__perf_awesomebar_clipboard_suggestions__values}) AS metrics__metrics__timing_distribution__perf_awesomebar_clipboard_suggestions__values ;;
  }

  join: metrics__metrics__timing_distribution__perf_awesomebar_history_suggestions__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__perf_awesomebar_history_suggestions__values}) AS metrics__metrics__timing_distribution__perf_awesomebar_history_suggestions__values ;;
  }

  join: metrics__metrics__timing_distribution__perf_awesomebar_search_engine_suggestions__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__perf_awesomebar_search_engine_suggestions__values}) AS metrics__metrics__timing_distribution__perf_awesomebar_search_engine_suggestions__values ;;
  }

  join: metrics__metrics__timing_distribution__perf_awesomebar_session_suggestions__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__perf_awesomebar_session_suggestions__values}) AS metrics__metrics__timing_distribution__perf_awesomebar_session_suggestions__values ;;
  }

  join: metrics__metrics__timing_distribution__perf_awesomebar_shortcuts_suggestions__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__perf_awesomebar_shortcuts_suggestions__values}) AS metrics__metrics__timing_distribution__perf_awesomebar_shortcuts_suggestions__values ;;
  }

  join: metrics__metrics__timing_distribution__perf_awesomebar_synced_tabs_suggestions__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__perf_awesomebar_synced_tabs_suggestions__values}) AS metrics__metrics__timing_distribution__perf_awesomebar_synced_tabs_suggestions__values ;;
  }

  join: metrics__metrics__timing_distribution__perf_startup_app_on_create_to_glean_init__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__perf_startup_app_on_create_to_glean_init__values}) AS metrics__metrics__timing_distribution__perf_startup_app_on_create_to_glean_init__values ;;
  }

  join: metrics__metrics__timing_distribution__perf_startup_app_on_create_to_megazord_init__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__perf_startup_app_on_create_to_megazord_init__values}) AS metrics__metrics__timing_distribution__perf_startup_app_on_create_to_megazord_init__values ;;
  }

  join: metrics__metrics__timing_distribution__perf_startup_app_on_create_to_setup_in_main__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__perf_startup_app_on_create_to_setup_in_main__values}) AS metrics__metrics__timing_distribution__perf_startup_app_on_create_to_setup_in_main__values ;;
  }

  join: metrics__metrics__timing_distribution__perf_startup_application_on_create__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__perf_startup_application_on_create__values}) AS metrics__metrics__timing_distribution__perf_startup_application_on_create__values ;;
  }

  join: metrics__metrics__timing_distribution__perf_startup_base_bfragment_on_create_view__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__perf_startup_base_bfragment_on_create_view__values}) AS metrics__metrics__timing_distribution__perf_startup_base_bfragment_on_create_view__values ;;
  }

  join: metrics__metrics__timing_distribution__perf_startup_base_bfragment_on_view_created__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__perf_startup_base_bfragment_on_view_created__values}) AS metrics__metrics__timing_distribution__perf_startup_base_bfragment_on_view_created__values ;;
  }

  join: metrics__metrics__timing_distribution__perf_startup_cold_main_app_to_first_frame__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__perf_startup_cold_main_app_to_first_frame__values}) AS metrics__metrics__timing_distribution__perf_startup_cold_main_app_to_first_frame__values ;;
  }

  join: metrics__metrics__timing_distribution__perf_startup_cold_unknwn_app_to_first_frame__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__perf_startup_cold_unknwn_app_to_first_frame__values}) AS metrics__metrics__timing_distribution__perf_startup_cold_unknwn_app_to_first_frame__values ;;
  }

  join: metrics__metrics__timing_distribution__perf_startup_cold_view_app_to_first_frame__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__perf_startup_cold_view_app_to_first_frame__values}) AS metrics__metrics__timing_distribution__perf_startup_cold_view_app_to_first_frame__values ;;
  }

  join: metrics__metrics__timing_distribution__perf_startup_home_activity_on_create__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__perf_startup_home_activity_on_create__values}) AS metrics__metrics__timing_distribution__perf_startup_home_activity_on_create__values ;;
  }

  join: metrics__metrics__timing_distribution__perf_startup_home_activity_on_start__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__perf_startup_home_activity_on_start__values}) AS metrics__metrics__timing_distribution__perf_startup_home_activity_on_start__values ;;
  }

  join: metrics__metrics__timing_distribution__perf_startup_home_fragment_on_create_view__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__perf_startup_home_fragment_on_create_view__values}) AS metrics__metrics__timing_distribution__perf_startup_home_fragment_on_create_view__values ;;
  }

  join: metrics__metrics__timing_distribution__perf_startup_home_fragment_on_view_created__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__perf_startup_home_fragment_on_view_created__values}) AS metrics__metrics__timing_distribution__perf_startup_home_fragment_on_view_created__values ;;
  }

  join: metrics__metrics__timing_distribution__performance_clone_deserialize_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__performance_clone_deserialize_time__values}) AS metrics__metrics__timing_distribution__performance_clone_deserialize_time__values ;;
  }

  join: metrics__metrics__timing_distribution__performance_interaction_keypress_present_latency__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__performance_interaction_keypress_present_latency__values}) AS metrics__metrics__timing_distribution__performance_interaction_keypress_present_latency__values ;;
  }

  join: metrics__metrics__timing_distribution__performance_interaction_mouseup_click_present_latency__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__performance_interaction_mouseup_click_present_latency__values}) AS metrics__metrics__timing_distribution__performance_interaction_mouseup_click_present_latency__values ;;
  }

  join: metrics__metrics__timing_distribution__performance_interaction_tab_switch_composite__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__performance_interaction_tab_switch_composite__values}) AS metrics__metrics__timing_distribution__performance_interaction_tab_switch_composite__values ;;
  }

  join: metrics__metrics__timing_distribution__performance_page_non_blank_paint__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__performance_page_non_blank_paint__values}) AS metrics__metrics__timing_distribution__performance_page_non_blank_paint__values ;;
  }

  join: metrics__metrics__timing_distribution__performance_page_total_content_page_load__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__performance_page_total_content_page_load__values}) AS metrics__metrics__timing_distribution__performance_page_total_content_page_load__values ;;
  }

  join: metrics__metrics__timing_distribution__performance_pageload_dcl__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__performance_pageload_dcl__values}) AS metrics__metrics__timing_distribution__performance_pageload_dcl__values ;;
  }

  join: metrics__metrics__timing_distribution__performance_pageload_dcl_responsestart__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__performance_pageload_dcl_responsestart__values}) AS metrics__metrics__timing_distribution__performance_pageload_dcl_responsestart__values ;;
  }

  join: metrics__metrics__timing_distribution__performance_pageload_fcp__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__performance_pageload_fcp__values}) AS metrics__metrics__timing_distribution__performance_pageload_fcp__values ;;
  }

  join: metrics__metrics__timing_distribution__performance_pageload_fcp_responsestart__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__performance_pageload_fcp_responsestart__values}) AS metrics__metrics__timing_distribution__performance_pageload_fcp_responsestart__values ;;
  }

  join: metrics__metrics__timing_distribution__performance_pageload_load_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__performance_pageload_load_time__values}) AS metrics__metrics__timing_distribution__performance_pageload_load_time__values ;;
  }

  join: metrics__metrics__timing_distribution__performance_pageload_load_time_responsestart__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__performance_pageload_load_time_responsestart__values}) AS metrics__metrics__timing_distribution__performance_pageload_load_time_responsestart__values ;;
  }

  join: metrics__metrics__timing_distribution__performance_pageload_req_anim_frame_callback__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__performance_pageload_req_anim_frame_callback__values}) AS metrics__metrics__timing_distribution__performance_pageload_req_anim_frame_callback__values ;;
  }

  join: metrics__metrics__timing_distribution__performance_responsiveness_req_anim_frame_callback__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__performance_responsiveness_req_anim_frame_callback__values}) AS metrics__metrics__timing_distribution__performance_responsiveness_req_anim_frame_callback__values ;;
  }

  join: metrics__metrics__timing_distribution__performance_time_dom_complete__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__performance_time_dom_complete__values}) AS metrics__metrics__timing_distribution__performance_time_dom_complete__values ;;
  }

  join: metrics__metrics__timing_distribution__performance_time_dom_content_loaded_end__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__performance_time_dom_content_loaded_end__values}) AS metrics__metrics__timing_distribution__performance_time_dom_content_loaded_end__values ;;
  }

  join: metrics__metrics__timing_distribution__performance_time_dom_content_loaded_start__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__performance_time_dom_content_loaded_start__values}) AS metrics__metrics__timing_distribution__performance_time_dom_content_loaded_start__values ;;
  }

  join: metrics__metrics__timing_distribution__performance_time_dom_interactive__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__performance_time_dom_interactive__values}) AS metrics__metrics__timing_distribution__performance_time_dom_interactive__values ;;
  }

  join: metrics__metrics__timing_distribution__performance_time_load_event_end__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__performance_time_load_event_end__values}) AS metrics__metrics__timing_distribution__performance_time_load_event_end__values ;;
  }

  join: metrics__metrics__timing_distribution__performance_time_load_event_end_no_preload__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__performance_time_load_event_end_no_preload__values}) AS metrics__metrics__timing_distribution__performance_time_load_event_end_no_preload__values ;;
  }

  join: metrics__metrics__timing_distribution__performance_time_load_event_end_preload__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__performance_time_load_event_end_preload__values}) AS metrics__metrics__timing_distribution__performance_time_load_event_end_preload__values ;;
  }

  join: metrics__metrics__timing_distribution__performance_time_load_event_start__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__performance_time_load_event_start__values}) AS metrics__metrics__timing_distribution__performance_time_load_event_start__values ;;
  }

  join: metrics__metrics__timing_distribution__performance_time_load_event_start_no_preload__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__performance_time_load_event_start_no_preload__values}) AS metrics__metrics__timing_distribution__performance_time_load_event_start_no_preload__values ;;
  }

  join: metrics__metrics__timing_distribution__performance_time_load_event_start_preload__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__performance_time_load_event_start_preload__values}) AS metrics__metrics__timing_distribution__performance_time_load_event_start_preload__values ;;
  }

  join: metrics__metrics__timing_distribution__performance_time_response_start__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__performance_time_response_start__values}) AS metrics__metrics__timing_distribution__performance_time_response_start__values ;;
  }

  join: metrics__metrics__timing_distribution__places_manager_read_query_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__places_manager_read_query_time__values}) AS metrics__metrics__timing_distribution__places_manager_read_query_time__values ;;
  }

  join: metrics__metrics__timing_distribution__places_manager_scan_query_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__places_manager_scan_query_time__values}) AS metrics__metrics__timing_distribution__places_manager_scan_query_time__values ;;
  }

  join: metrics__metrics__timing_distribution__places_manager_write_query_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__places_manager_write_query_time__values}) AS metrics__metrics__timing_distribution__places_manager_write_query_time__values ;;
  }

  join: metrics__metrics__timing_distribution__storage_stats_query_stats_duration__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__storage_stats_query_stats_duration__values}) AS metrics__metrics__timing_distribution__storage_stats_query_stats_duration__values ;;
  }

  join: metrics__metrics__url {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__url}) AS metrics__metrics__url ;;
  }

  join: metrics__ping_info__experiments {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.ping_info__experiments}) AS metrics__ping_info__experiments ;;
  }

  join: metrics__metrics__labeled_counter__avif_alpha {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__avif_alpha}) AS metrics__metrics__labeled_counter__avif_alpha ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__avif_alpha.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__avif_bit_depth {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__avif_bit_depth}) AS metrics__metrics__labeled_counter__avif_bit_depth ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__avif_bit_depth.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__avif_cicp_cp {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__avif_cicp_cp}) AS metrics__metrics__labeled_counter__avif_cicp_cp ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__avif_cicp_cp.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__avif_cicp_mc {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__avif_cicp_mc}) AS metrics__metrics__labeled_counter__avif_cicp_mc ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__avif_cicp_mc.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__avif_cicp_tc {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__avif_cicp_tc}) AS metrics__metrics__labeled_counter__avif_cicp_tc ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__avif_cicp_tc.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__avif_colr {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__avif_colr}) AS metrics__metrics__labeled_counter__avif_colr ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__avif_colr.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__avif_decode_result {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__avif_decode_result}) AS metrics__metrics__labeled_counter__avif_decode_result ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__avif_decode_result.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__avif_decoder {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__avif_decoder}) AS metrics__metrics__labeled_counter__avif_decoder ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__avif_decoder.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__avif_ispe {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__avif_ispe}) AS metrics__metrics__labeled_counter__avif_ispe ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__avif_ispe.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__avif_pixi {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__avif_pixi}) AS metrics__metrics__labeled_counter__avif_pixi ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__avif_pixi.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__avif_yuv_color_space {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__avif_yuv_color_space}) AS metrics__metrics__labeled_counter__avif_yuv_color_space ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__avif_yuv_color_space.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__browser_search_ad_clicks {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__browser_search_ad_clicks}) AS metrics__metrics__labeled_counter__browser_search_ad_clicks ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__browser_search_ad_clicks.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__browser_search_in_content {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__browser_search_in_content}) AS metrics__metrics__labeled_counter__browser_search_in_content ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__browser_search_in_content.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__browser_search_with_ads {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__browser_search_with_ads}) AS metrics__metrics__labeled_counter__browser_search_with_ads ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__browser_search_with_ads.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__crash_metrics_crash_count {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__crash_metrics_crash_count}) AS metrics__metrics__labeled_counter__crash_metrics_crash_count ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__crash_metrics_crash_count.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__engine_tab_kills {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__engine_tab_kills}) AS metrics__metrics__labeled_counter__engine_tab_kills ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__engine_tab_kills.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__gfx_content_frame_time_reason {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__gfx_content_frame_time_reason}) AS metrics__metrics__labeled_counter__gfx_content_frame_time_reason ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__gfx_content_frame_time_reason.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__glean_error_invalid_label {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__glean_error_invalid_label}) AS metrics__metrics__labeled_counter__glean_error_invalid_label ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__glean_error_invalid_label.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__glean_error_invalid_overflow {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__glean_error_invalid_overflow}) AS metrics__metrics__labeled_counter__glean_error_invalid_overflow ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__glean_error_invalid_overflow.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__glean_error_invalid_state {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__glean_error_invalid_state}) AS metrics__metrics__labeled_counter__glean_error_invalid_state ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__glean_error_invalid_state.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__glean_error_invalid_value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__glean_error_invalid_value}) AS metrics__metrics__labeled_counter__glean_error_invalid_value ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__glean_error_invalid_value.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__glean_upload_ping_upload_failure {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__glean_upload_ping_upload_failure}) AS metrics__metrics__labeled_counter__glean_upload_ping_upload_failure ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__glean_upload_ping_upload_failure.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__glean_validation_pings_submitted {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__glean_validation_pings_submitted}) AS metrics__metrics__labeled_counter__glean_validation_pings_submitted ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__glean_validation_pings_submitted.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__logins_store_read_query_error_count {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__logins_store_read_query_error_count}) AS metrics__metrics__labeled_counter__logins_store_read_query_error_count ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__logins_store_read_query_error_count.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__logins_store_unlock_error_count {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__logins_store_unlock_error_count}) AS metrics__metrics__labeled_counter__logins_store_unlock_error_count ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__logins_store_unlock_error_count.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__logins_store_write_query_error_count {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__logins_store_write_query_error_count}) AS metrics__metrics__labeled_counter__logins_store_write_query_error_count ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__logins_store_write_query_error_count.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__media_audio_backend {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__media_audio_backend}) AS metrics__metrics__labeled_counter__media_audio_backend ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__media_audio_backend.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__media_audio_init_failure {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__media_audio_init_failure}) AS metrics__metrics__labeled_counter__media_audio_init_failure ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__media_audio_init_failure.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__metrics_search_count {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__metrics_search_count}) AS metrics__metrics__labeled_counter__metrics_search_count ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__metrics_search_count.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__perf_startup_startup_type {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__perf_startup_startup_type}) AS metrics__metrics__labeled_counter__perf_startup_startup_type ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__perf_startup_startup_type.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__places_manager_read_query_error_count {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__places_manager_read_query_error_count}) AS metrics__metrics__labeled_counter__places_manager_read_query_error_count ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__places_manager_read_query_error_count.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__places_manager_write_query_error_count {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__places_manager_write_query_error_count}) AS metrics__metrics__labeled_counter__places_manager_write_query_error_count ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__places_manager_write_query_error_count.document_id} ;;
  }
}

explore: suggest__metrics__metrics__labeled_counter__avif_alpha {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__avif_bit_depth {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__avif_cicp_cp {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__avif_cicp_mc {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__avif_cicp_tc {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__avif_colr {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__avif_decode_result {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__avif_decoder {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__avif_ispe {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__avif_pixi {
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