
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

include: "/looker-hub/firefox_desktop/views/metrics.view.lkml"

explore: metrics {
  sql_always_where: ${metrics.submission_date} >= '2010-01-01' ;;
  view_label: " Metrics"
  description: "Explore for the metrics ping. The `metrics` ping is intended for all of the metrics that are explicitly set by the application or are included in the application's `metrics.yaml` file (except events). The reported data is tied to the ping's *measurement window*, which is the time between the collection of two `metrics` ping. Ideally, this window is expected to be about 24 hours, given that the collection is scheduled daily at 4AM. Data in the `ping_info` section of the ping can be used to infer the length of this window."
  view_name: metrics

  always_filter: {
    filters: [
      submission_date: "28 days",
    ]
  }

  join: metrics__metrics__labeled_counter__codec_stats_audio_preferred_codec {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__codec_stats_audio_preferred_codec}) AS metrics__metrics__labeled_counter__codec_stats_audio_preferred_codec ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__codec_stats_audio_preferred_codec.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__codec_stats_other_fec_signaled {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__codec_stats_other_fec_signaled}) AS metrics__metrics__labeled_counter__codec_stats_other_fec_signaled ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__codec_stats_other_fec_signaled.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__codec_stats_ulpfec_negotiated {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__codec_stats_ulpfec_negotiated}) AS metrics__metrics__labeled_counter__codec_stats_ulpfec_negotiated ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__codec_stats_ulpfec_negotiated.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__codec_stats_video_preferred_codec {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__codec_stats_video_preferred_codec}) AS metrics__metrics__labeled_counter__codec_stats_video_preferred_codec ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__codec_stats_video_preferred_codec.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__cookie_banners_click_result {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__cookie_banners_click_result}) AS metrics__metrics__labeled_counter__cookie_banners_click_result ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__cookie_banners_click_result.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__cookie_banners_cmp_detected_cmp {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__cookie_banners_cmp_detected_cmp}) AS metrics__metrics__labeled_counter__cookie_banners_cmp_detected_cmp ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__cookie_banners_cmp_detected_cmp.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__cookie_banners_cmp_result {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__cookie_banners_cmp_result}) AS metrics__metrics__labeled_counter__cookie_banners_cmp_result ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__cookie_banners_cmp_result.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__cookie_banners_rule_lookup_by_domain {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__cookie_banners_rule_lookup_by_domain}) AS metrics__metrics__labeled_counter__cookie_banners_rule_lookup_by_domain ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__cookie_banners_rule_lookup_by_domain.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__cookie_banners_rule_lookup_by_load {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__cookie_banners_rule_lookup_by_load}) AS metrics__metrics__labeled_counter__cookie_banners_rule_lookup_by_load ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__cookie_banners_rule_lookup_by_load.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__dap_report_generation_status {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__dap_report_generation_status}) AS metrics__metrics__labeled_counter__dap_report_generation_status ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__dap_report_generation_status.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__dap_upload_status {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__dap_upload_status}) AS metrics__metrics__labeled_counter__dap_upload_status ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__dap_upload_status.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__data_storage_entries {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__data_storage_entries}) AS metrics__metrics__labeled_counter__data_storage_entries ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__data_storage_entries.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__dotprint_failure {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__dotprint_failure}) AS metrics__metrics__labeled_counter__dotprint_failure ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__dotprint_failure.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__extensions_apis_dnr_startup_cache_entries {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__extensions_apis_dnr_startup_cache_entries}) AS metrics__metrics__labeled_counter__extensions_apis_dnr_startup_cache_entries ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__extensions_apis_dnr_startup_cache_entries.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__extensions_counters_browser_action_preload_result {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__extensions_counters_browser_action_preload_result}) AS metrics__metrics__labeled_counter__extensions_counters_browser_action_preload_result ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__extensions_counters_browser_action_preload_result.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__extensions_counters_event_page_idle_result {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__extensions_counters_event_page_idle_result}) AS metrics__metrics__labeled_counter__extensions_counters_event_page_idle_result ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__extensions_counters_event_page_idle_result.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__extensions_process_event {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__extensions_process_event}) AS metrics__metrics__labeled_counter__extensions_process_event ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__extensions_process_event.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__extensions_startup_cache_read_errors {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__extensions_startup_cache_read_errors}) AS metrics__metrics__labeled_counter__extensions_startup_cache_read_errors ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__extensions_startup_cache_read_errors.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__fog_validation_gvsv_audio_stream_init {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__fog_validation_gvsv_audio_stream_init}) AS metrics__metrics__labeled_counter__fog_validation_gvsv_audio_stream_init ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__fog_validation_gvsv_audio_stream_init.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__fog_validation_gvsv_audio_stream_init_gecko {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__fog_validation_gvsv_audio_stream_init_gecko}) AS metrics__metrics__labeled_counter__fog_validation_gvsv_audio_stream_init_gecko ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__fog_validation_gvsv_audio_stream_init_gecko.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__formautofill_form_submission_heuristic {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__formautofill_form_submission_heuristic}) AS metrics__metrics__labeled_counter__formautofill_form_submission_heuristic ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__formautofill_form_submission_heuristic.document_id} ;;
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

  join: metrics__metrics__labeled_counter__gmp_update_xml_fetch_result {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__gmp_update_xml_fetch_result}) AS metrics__metrics__labeled_counter__gmp_update_xml_fetch_result ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__gmp_update_xml_fetch_result.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__gpu_process_crash_fallbacks {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__gpu_process_crash_fallbacks}) AS metrics__metrics__labeled_counter__gpu_process_crash_fallbacks ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__gpu_process_crash_fallbacks.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__ipc_received_messages_content_background {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__ipc_received_messages_content_background}) AS metrics__metrics__labeled_counter__ipc_received_messages_content_background ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__ipc_received_messages_content_background.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__ipc_received_messages_content_foreground {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__ipc_received_messages_content_foreground}) AS metrics__metrics__labeled_counter__ipc_received_messages_content_foreground ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__ipc_received_messages_content_foreground.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__ipc_received_messages_gpu_process {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__ipc_received_messages_gpu_process}) AS metrics__metrics__labeled_counter__ipc_received_messages_gpu_process ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__ipc_received_messages_gpu_process.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__ipc_received_messages_parent_active {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__ipc_received_messages_parent_active}) AS metrics__metrics__labeled_counter__ipc_received_messages_parent_active ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__ipc_received_messages_parent_active.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__ipc_received_messages_parent_inactive {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__ipc_received_messages_parent_inactive}) AS metrics__metrics__labeled_counter__ipc_received_messages_parent_inactive ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__ipc_received_messages_parent_inactive.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__ipc_sent_messages_content_background {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__ipc_sent_messages_content_background}) AS metrics__metrics__labeled_counter__ipc_sent_messages_content_background ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__ipc_sent_messages_content_background.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__ipc_sent_messages_content_foreground {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__ipc_sent_messages_content_foreground}) AS metrics__metrics__labeled_counter__ipc_sent_messages_content_foreground ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__ipc_sent_messages_content_foreground.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__ipc_sent_messages_gpu_process {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__ipc_sent_messages_gpu_process}) AS metrics__metrics__labeled_counter__ipc_sent_messages_gpu_process ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__ipc_sent_messages_gpu_process.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__ipc_sent_messages_parent_active {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__ipc_sent_messages_parent_active}) AS metrics__metrics__labeled_counter__ipc_sent_messages_parent_active ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__ipc_sent_messages_parent_active.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__ipc_sent_messages_parent_inactive {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__ipc_sent_messages_parent_inactive}) AS metrics__metrics__labeled_counter__ipc_sent_messages_parent_inactive ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__ipc_sent_messages_parent_inactive.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__media_audio_backend {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__media_audio_backend}) AS metrics__metrics__labeled_counter__media_audio_backend ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__media_audio_backend.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__media_audio_init_failure {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__media_audio_init_failure}) AS metrics__metrics__labeled_counter__media_audio_init_failure ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__media_audio_init_failure.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__messaging_system_invalid_nested_data {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__messaging_system_invalid_nested_data}) AS metrics__metrics__labeled_counter__messaging_system_invalid_nested_data ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__messaging_system_invalid_nested_data.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__netwerk_early_hints {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__netwerk_early_hints}) AS metrics__metrics__labeled_counter__netwerk_early_hints ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__netwerk_early_hints.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__netwerk_eh_link_type {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__netwerk_eh_link_type}) AS metrics__metrics__labeled_counter__netwerk_eh_link_type ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__netwerk_eh_link_type.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__network_cors_authorization_header {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__network_cors_authorization_header}) AS metrics__metrics__labeled_counter__network_cors_authorization_header ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__network_cors_authorization_header.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__network_data_size_pb_per_type {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__network_data_size_pb_per_type}) AS metrics__metrics__labeled_counter__network_data_size_pb_per_type ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__network_data_size_pb_per_type.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__network_data_size_per_type {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__network_data_size_per_type}) AS metrics__metrics__labeled_counter__network_data_size_per_type ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__network_data_size_per_type.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__networking_cookie_timestamp_fixed_count {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__networking_cookie_timestamp_fixed_count}) AS metrics__metrics__labeled_counter__networking_cookie_timestamp_fixed_count ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__networking_cookie_timestamp_fixed_count.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__networking_dns_native_count {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__networking_dns_native_count}) AS metrics__metrics__labeled_counter__networking_dns_native_count ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__networking_dns_native_count.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__networking_http_channel_onstart_success_https_rr {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__networking_http_channel_onstart_success_https_rr}) AS metrics__metrics__labeled_counter__networking_http_channel_onstart_success_https_rr ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__networking_http_channel_onstart_success_https_rr.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__networking_http_response_version {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__networking_http_response_version}) AS metrics__metrics__labeled_counter__networking_http_response_version ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__networking_http_response_version.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__networking_https_rr_presented {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__networking_https_rr_presented}) AS metrics__metrics__labeled_counter__networking_https_rr_presented ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__networking_https_rr_presented.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__networking_https_upgrade_with_https_rr {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__networking_https_upgrade_with_https_rr}) AS metrics__metrics__labeled_counter__networking_https_upgrade_with_https_rr ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__networking_https_upgrade_with_https_rr.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__networking_residual_cache_folder_removal {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__networking_residual_cache_folder_removal}) AS metrics__metrics__labeled_counter__networking_residual_cache_folder_removal ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__networking_residual_cache_folder_removal.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__networking_speculative_connect_outcome {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__networking_speculative_connect_outcome}) AS metrics__metrics__labeled_counter__networking_speculative_connect_outcome ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__networking_speculative_connect_outcome.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__networking_speculative_connection_outcome {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__networking_speculative_connection_outcome}) AS metrics__metrics__labeled_counter__networking_speculative_connection_outcome ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__networking_speculative_connection_outcome.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__networking_trr_request_count {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__networking_trr_request_count}) AS metrics__metrics__labeled_counter__networking_trr_request_count ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__networking_trr_request_count.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__pdfjs_buttons {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__pdfjs_buttons}) AS metrics__metrics__labeled_counter__pdfjs_buttons ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__pdfjs_buttons.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__pdfjs_editing {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__pdfjs_editing}) AS metrics__metrics__labeled_counter__pdfjs_editing ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__pdfjs_editing.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__pdfjs_geckoview {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__pdfjs_geckoview}) AS metrics__metrics__labeled_counter__pdfjs_geckoview ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__pdfjs_geckoview.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__pdfjs_stamp {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__pdfjs_stamp}) AS metrics__metrics__labeled_counter__pdfjs_stamp ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__pdfjs_stamp.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__ping_centre_send_failures_by_namespace {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__ping_centre_send_failures_by_namespace}) AS metrics__metrics__labeled_counter__ping_centre_send_failures_by_namespace ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__ping_centre_send_failures_by_namespace.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__ping_centre_send_successes_by_namespace {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__ping_centre_send_successes_by_namespace}) AS metrics__metrics__labeled_counter__ping_centre_send_successes_by_namespace ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__ping_centre_send_successes_by_namespace.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__power_cpu_ms_per_thread_content_background {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__power_cpu_ms_per_thread_content_background}) AS metrics__metrics__labeled_counter__power_cpu_ms_per_thread_content_background ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__power_cpu_ms_per_thread_content_background.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__power_cpu_ms_per_thread_content_foreground {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__power_cpu_ms_per_thread_content_foreground}) AS metrics__metrics__labeled_counter__power_cpu_ms_per_thread_content_foreground ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__power_cpu_ms_per_thread_content_foreground.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__power_cpu_ms_per_thread_gpu_process {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__power_cpu_ms_per_thread_gpu_process}) AS metrics__metrics__labeled_counter__power_cpu_ms_per_thread_gpu_process ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__power_cpu_ms_per_thread_gpu_process.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__power_cpu_ms_per_thread_parent_active {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__power_cpu_ms_per_thread_parent_active}) AS metrics__metrics__labeled_counter__power_cpu_ms_per_thread_parent_active ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__power_cpu_ms_per_thread_parent_active.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__power_cpu_ms_per_thread_parent_inactive {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__power_cpu_ms_per_thread_parent_inactive}) AS metrics__metrics__labeled_counter__power_cpu_ms_per_thread_parent_inactive ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__power_cpu_ms_per_thread_parent_inactive.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__power_cpu_time_per_process_type_ms {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__power_cpu_time_per_process_type_ms}) AS metrics__metrics__labeled_counter__power_cpu_time_per_process_type_ms ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__power_cpu_time_per_process_type_ms.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__power_cpu_time_per_tracker_type_ms {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__power_cpu_time_per_tracker_type_ms}) AS metrics__metrics__labeled_counter__power_cpu_time_per_tracker_type_ms ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__power_cpu_time_per_tracker_type_ms.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__power_gpu_time_per_process_type_ms {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__power_gpu_time_per_process_type_ms}) AS metrics__metrics__labeled_counter__power_gpu_time_per_process_type_ms ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__power_gpu_time_per_process_type_ms.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__power_wakeups_per_process_type {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__power_wakeups_per_process_type}) AS metrics__metrics__labeled_counter__power_wakeups_per_process_type ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__power_wakeups_per_process_type.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__power_wakeups_per_thread_content_background {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__power_wakeups_per_thread_content_background}) AS metrics__metrics__labeled_counter__power_wakeups_per_thread_content_background ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__power_wakeups_per_thread_content_background.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__power_wakeups_per_thread_content_foreground {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__power_wakeups_per_thread_content_foreground}) AS metrics__metrics__labeled_counter__power_wakeups_per_thread_content_foreground ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__power_wakeups_per_thread_content_foreground.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__power_wakeups_per_thread_gpu_process {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__power_wakeups_per_thread_gpu_process}) AS metrics__metrics__labeled_counter__power_wakeups_per_thread_gpu_process ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__power_wakeups_per_thread_gpu_process.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__power_wakeups_per_thread_parent_active {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__power_wakeups_per_thread_parent_active}) AS metrics__metrics__labeled_counter__power_wakeups_per_thread_parent_active ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__power_wakeups_per_thread_parent_active.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__power_wakeups_per_thread_parent_inactive {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__power_wakeups_per_thread_parent_inactive}) AS metrics__metrics__labeled_counter__power_wakeups_per_thread_parent_inactive ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__power_wakeups_per_thread_parent_inactive.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__protocolhandler_mailto_handler_prompt_shown {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__protocolhandler_mailto_handler_prompt_shown}) AS metrics__metrics__labeled_counter__protocolhandler_mailto_handler_prompt_shown ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__protocolhandler_mailto_handler_prompt_shown.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__protocolhandler_mailto_prompt_clicked {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__protocolhandler_mailto_prompt_clicked}) AS metrics__metrics__labeled_counter__protocolhandler_mailto_prompt_clicked ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__protocolhandler_mailto_prompt_clicked.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__pwmgr_form_autofill_result {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__pwmgr_form_autofill_result}) AS metrics__metrics__labeled_counter__pwmgr_form_autofill_result ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__pwmgr_form_autofill_result.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__rtcrtpsender_setparameters_blame_length_changed {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__rtcrtpsender_setparameters_blame_length_changed}) AS metrics__metrics__labeled_counter__rtcrtpsender_setparameters_blame_length_changed ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__rtcrtpsender_setparameters_blame_length_changed.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__rtcrtpsender_setparameters_blame_no_getparameters {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__rtcrtpsender_setparameters_blame_no_getparameters}) AS metrics__metrics__labeled_counter__rtcrtpsender_setparameters_blame_no_getparameters ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__rtcrtpsender_setparameters_blame_no_getparameters.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__rtcrtpsender_setparameters_blame_no_transactionid {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__rtcrtpsender_setparameters_blame_no_transactionid}) AS metrics__metrics__labeled_counter__rtcrtpsender_setparameters_blame_no_transactionid ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__rtcrtpsender_setparameters_blame_no_transactionid.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__rtcrtpsender_setparameters_blame_stale_transactionid {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__rtcrtpsender_setparameters_blame_stale_transactionid}) AS metrics__metrics__labeled_counter__rtcrtpsender_setparameters_blame_stale_transactionid ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__rtcrtpsender_setparameters_blame_stale_transactionid.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__search_service_initialization_status {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__search_service_initialization_status}) AS metrics__metrics__labeled_counter__search_service_initialization_status ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__search_service_initialization_status.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__tls_xyber_intolerance_reason {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__tls_xyber_intolerance_reason}) AS metrics__metrics__labeled_counter__tls_xyber_intolerance_reason ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__tls_xyber_intolerance_reason.document_id} ;;
  }

  join: metrics__events {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.events}) AS metrics__events ;;
  }

  join: metrics__events__extra {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics__events.extra}) AS metrics__events__extra ;;
  }

  join: metrics__metrics__custom_distribution__cookie_banners_click_query_selector_run_count_per_window_frame__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__cookie_banners_click_query_selector_run_count_per_window_frame__values}) AS metrics__metrics__custom_distribution__cookie_banners_click_query_selector_run_count_per_window_frame__values ;;
  }

  join: metrics__metrics__custom_distribution__cookie_banners_click_query_selector_run_count_per_window_top_level__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__cookie_banners_click_query_selector_run_count_per_window_top_level__values}) AS metrics__metrics__custom_distribution__cookie_banners_click_query_selector_run_count_per_window_top_level__values ;;
  }

  join: metrics__metrics__custom_distribution__cookie_banners_click_query_selector_run_duration_per_window_frame__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__cookie_banners_click_query_selector_run_duration_per_window_frame__values}) AS metrics__metrics__custom_distribution__cookie_banners_click_query_selector_run_duration_per_window_frame__values ;;
  }

  join: metrics__metrics__custom_distribution__cookie_banners_click_query_selector_run_duration_per_window_top_level__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__cookie_banners_click_query_selector_run_duration_per_window_top_level__values}) AS metrics__metrics__custom_distribution__cookie_banners_click_query_selector_run_duration_per_window_top_level__values ;;
  }

  join: metrics__metrics__custom_distribution__extensions_timing_event_page_running_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__extensions_timing_event_page_running_time__values}) AS metrics__metrics__custom_distribution__extensions_timing_event_page_running_time__values ;;
  }

  join: metrics__metrics__custom_distribution__fog_validation_gvsv_number_of_unique_site_origins_all_tabs__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__fog_validation_gvsv_number_of_unique_site_origins_all_tabs__values}) AS metrics__metrics__custom_distribution__fog_validation_gvsv_number_of_unique_site_origins_all_tabs__values ;;
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

  join: metrics__metrics__custom_distribution__networking_cookie_access_fixup_diff__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__networking_cookie_access_fixup_diff__values}) AS metrics__metrics__custom_distribution__networking_cookie_access_fixup_diff__values ;;
  }

  join: metrics__metrics__custom_distribution__networking_cookie_count_part_by_key__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__networking_cookie_count_part_by_key__values}) AS metrics__metrics__custom_distribution__networking_cookie_count_part_by_key__values ;;
  }

  join: metrics__metrics__custom_distribution__networking_cookie_count_partitioned__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__networking_cookie_count_partitioned__values}) AS metrics__metrics__custom_distribution__networking_cookie_count_partitioned__values ;;
  }

  join: metrics__metrics__custom_distribution__networking_cookie_count_total__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__networking_cookie_count_total__values}) AS metrics__metrics__custom_distribution__networking_cookie_count_total__values ;;
  }

  join: metrics__metrics__custom_distribution__networking_cookie_count_unpart_by_key__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__networking_cookie_count_unpart_by_key__values}) AS metrics__metrics__custom_distribution__networking_cookie_count_unpart_by_key__values ;;
  }

  join: metrics__metrics__custom_distribution__networking_cookie_count_unpartitioned__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__networking_cookie_count_unpartitioned__values}) AS metrics__metrics__custom_distribution__networking_cookie_count_unpartitioned__values ;;
  }

  join: metrics__metrics__custom_distribution__networking_cookie_creation_fixup_diff__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__networking_cookie_creation_fixup_diff__values}) AS metrics__metrics__custom_distribution__networking_cookie_creation_fixup_diff__values ;;
  }

  join: metrics__metrics__custom_distribution__networking_cookie_purge_entry_max__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__networking_cookie_purge_entry_max__values}) AS metrics__metrics__custom_distribution__networking_cookie_purge_entry_max__values ;;
  }

  join: metrics__metrics__custom_distribution__networking_cookie_purge_max__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__networking_cookie_purge_max__values}) AS metrics__metrics__custom_distribution__networking_cookie_purge_max__values ;;
  }

  join: metrics__metrics__custom_distribution__networking_http_1_download_throughput__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__networking_http_1_download_throughput__values}) AS metrics__metrics__custom_distribution__networking_http_1_download_throughput__values ;;
  }

  join: metrics__metrics__custom_distribution__networking_http_1_upload_throughput__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__networking_http_1_upload_throughput__values}) AS metrics__metrics__custom_distribution__networking_http_1_upload_throughput__values ;;
  }

  join: metrics__metrics__custom_distribution__networking_http_1_upload_throughput_100__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__networking_http_1_upload_throughput_100__values}) AS metrics__metrics__custom_distribution__networking_http_1_upload_throughput_100__values ;;
  }

  join: metrics__metrics__custom_distribution__networking_http_1_upload_throughput_10_50__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__networking_http_1_upload_throughput_10_50__values}) AS metrics__metrics__custom_distribution__networking_http_1_upload_throughput_10_50__values ;;
  }

  join: metrics__metrics__custom_distribution__networking_http_1_upload_throughput_50_100__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__networking_http_1_upload_throughput_50_100__values}) AS metrics__metrics__custom_distribution__networking_http_1_upload_throughput_50_100__values ;;
  }

  join: metrics__metrics__custom_distribution__networking_http_2_download_throughput__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__networking_http_2_download_throughput__values}) AS metrics__metrics__custom_distribution__networking_http_2_download_throughput__values ;;
  }

  join: metrics__metrics__custom_distribution__networking_http_2_upload_throughput__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__networking_http_2_upload_throughput__values}) AS metrics__metrics__custom_distribution__networking_http_2_upload_throughput__values ;;
  }

  join: metrics__metrics__custom_distribution__networking_http_2_upload_throughput_100__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__networking_http_2_upload_throughput_100__values}) AS metrics__metrics__custom_distribution__networking_http_2_upload_throughput_100__values ;;
  }

  join: metrics__metrics__custom_distribution__networking_http_2_upload_throughput_10_50__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__networking_http_2_upload_throughput_10_50__values}) AS metrics__metrics__custom_distribution__networking_http_2_upload_throughput_10_50__values ;;
  }

  join: metrics__metrics__custom_distribution__networking_http_2_upload_throughput_50_100__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__networking_http_2_upload_throughput_50_100__values}) AS metrics__metrics__custom_distribution__networking_http_2_upload_throughput_50_100__values ;;
  }

  join: metrics__metrics__custom_distribution__networking_http_3_download_throughput__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__networking_http_3_download_throughput__values}) AS metrics__metrics__custom_distribution__networking_http_3_download_throughput__values ;;
  }

  join: metrics__metrics__custom_distribution__networking_http_3_upload_throughput__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__networking_http_3_upload_throughput__values}) AS metrics__metrics__custom_distribution__networking_http_3_upload_throughput__values ;;
  }

  join: metrics__metrics__custom_distribution__networking_http_3_upload_throughput_100__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__networking_http_3_upload_throughput_100__values}) AS metrics__metrics__custom_distribution__networking_http_3_upload_throughput_100__values ;;
  }

  join: metrics__metrics__custom_distribution__networking_http_3_upload_throughput_10_50__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__networking_http_3_upload_throughput_10_50__values}) AS metrics__metrics__custom_distribution__networking_http_3_upload_throughput_10_50__values ;;
  }

  join: metrics__metrics__custom_distribution__networking_http_3_upload_throughput_50_100__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__networking_http_3_upload_throughput_50_100__values}) AS metrics__metrics__custom_distribution__networking_http_3_upload_throughput_50_100__values ;;
  }

  join: metrics__metrics__custom_distribution__pdfjs_time_to_view__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__pdfjs_time_to_view__values}) AS metrics__metrics__custom_distribution__pdfjs_time_to_view__values ;;
  }

  join: metrics__metrics__custom_distribution__power_battery_percentage_when_user_active__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__power_battery_percentage_when_user_active__values}) AS metrics__metrics__custom_distribution__power_battery_percentage_when_user_active__values ;;
  }

  join: metrics__metrics__custom_distribution__timer_thread_timers_fired_per_wakeup__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__custom_distribution__timer_thread_timers_fired_per_wakeup__values}) AS metrics__metrics__custom_distribution__timer_thread_timers_fired_per_wakeup__values ;;
  }

  join: metrics__metrics__labeled_boolean__cookie_banners_normal_window_service_mode {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_boolean__cookie_banners_normal_window_service_mode}) AS metrics__metrics__labeled_boolean__cookie_banners_normal_window_service_mode ;;
  }

  join: metrics__metrics__labeled_boolean__cookie_banners_private_window_service_mode {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_boolean__cookie_banners_private_window_service_mode}) AS metrics__metrics__labeled_boolean__cookie_banners_private_window_service_mode ;;
  }

  join: metrics__metrics__labeled_boolean__data_storage_migration {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_boolean__data_storage_migration}) AS metrics__metrics__labeled_boolean__data_storage_migration ;;
  }

  join: metrics__metrics__labeled_boolean__oskeystore_self_test {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_boolean__oskeystore_self_test}) AS metrics__metrics__labeled_boolean__oskeystore_self_test ;;
  }

  join: metrics__metrics__labeled_boolean__startup_run_from_dmg_install_outcome {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_boolean__startup_run_from_dmg_install_outcome}) AS metrics__metrics__labeled_boolean__startup_run_from_dmg_install_outcome ;;
  }

  join: metrics__metrics__memory_distribution__extensions_apis_dnr_startup_cache_read_size__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__memory_distribution__extensions_apis_dnr_startup_cache_read_size__values}) AS metrics__metrics__memory_distribution__extensions_apis_dnr_startup_cache_read_size__values ;;
  }

  join: metrics__metrics__memory_distribution__extensions_apis_dnr_startup_cache_write_size__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__memory_distribution__extensions_apis_dnr_startup_cache_write_size__values}) AS metrics__metrics__memory_distribution__extensions_apis_dnr_startup_cache_write_size__values ;;
  }

  join: metrics__metrics__memory_distribution__fog_ipc_buffer_sizes__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__memory_distribution__fog_ipc_buffer_sizes__values}) AS metrics__metrics__memory_distribution__fog_ipc_buffer_sizes__values ;;
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

  join: metrics__metrics__timing_distribution__cookie_banners_click_handle_duration__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__cookie_banners_click_handle_duration__values}) AS metrics__metrics__timing_distribution__cookie_banners_click_handle_duration__values ;;
  }

  join: metrics__metrics__timing_distribution__cookie_banners_cmp_handle_duration__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__cookie_banners_cmp_handle_duration__values}) AS metrics__metrics__timing_distribution__cookie_banners_cmp_handle_duration__values ;;
  }

  join: metrics__metrics__timing_distribution__extensions_apis_dnr_evaluate_rules_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__extensions_apis_dnr_evaluate_rules_time__values}) AS metrics__metrics__timing_distribution__extensions_apis_dnr_evaluate_rules_time__values ;;
  }

  join: metrics__metrics__timing_distribution__extensions_apis_dnr_startup_cache_read_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__extensions_apis_dnr_startup_cache_read_time__values}) AS metrics__metrics__timing_distribution__extensions_apis_dnr_startup_cache_read_time__values ;;
  }

  join: metrics__metrics__timing_distribution__extensions_apis_dnr_startup_cache_write_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__extensions_apis_dnr_startup_cache_write_time__values}) AS metrics__metrics__timing_distribution__extensions_apis_dnr_startup_cache_write_time__values ;;
  }

  join: metrics__metrics__timing_distribution__extensions_apis_dnr_validate_rules_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__extensions_apis_dnr_validate_rules_time__values}) AS metrics__metrics__timing_distribution__extensions_apis_dnr_validate_rules_time__values ;;
  }

  join: metrics__metrics__timing_distribution__extensions_timing_background_page_load__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__extensions_timing_background_page_load__values}) AS metrics__metrics__timing_distribution__extensions_timing_background_page_load__values ;;
  }

  join: metrics__metrics__timing_distribution__extensions_timing_browser_action_popup_open__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__extensions_timing_browser_action_popup_open__values}) AS metrics__metrics__timing_distribution__extensions_timing_browser_action_popup_open__values ;;
  }

  join: metrics__metrics__timing_distribution__extensions_timing_content_script_injection__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__extensions_timing_content_script_injection__values}) AS metrics__metrics__timing_distribution__extensions_timing_content_script_injection__values ;;
  }

  join: metrics__metrics__timing_distribution__extensions_timing_extension_startup__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__extensions_timing_extension_startup__values}) AS metrics__metrics__timing_distribution__extensions_timing_extension_startup__values ;;
  }

  join: metrics__metrics__timing_distribution__extensions_timing_page_action_popup_open__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__extensions_timing_page_action_popup_open__values}) AS metrics__metrics__timing_distribution__extensions_timing_page_action_popup_open__values ;;
  }

  join: metrics__metrics__timing_distribution__extensions_timing_storage_local_get_idb__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__extensions_timing_storage_local_get_idb__values}) AS metrics__metrics__timing_distribution__extensions_timing_storage_local_get_idb__values ;;
  }

  join: metrics__metrics__timing_distribution__extensions_timing_storage_local_get_json__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__extensions_timing_storage_local_get_json__values}) AS metrics__metrics__timing_distribution__extensions_timing_storage_local_get_json__values ;;
  }

  join: metrics__metrics__timing_distribution__extensions_timing_storage_local_set_idb__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__extensions_timing_storage_local_set_idb__values}) AS metrics__metrics__timing_distribution__extensions_timing_storage_local_set_idb__values ;;
  }

  join: metrics__metrics__timing_distribution__extensions_timing_storage_local_set_json__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__extensions_timing_storage_local_set_json__values}) AS metrics__metrics__timing_distribution__extensions_timing_storage_local_set_json__values ;;
  }

  join: metrics__metrics__timing_distribution__fingerprinting_protection_canvas_noise_calculate_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__fingerprinting_protection_canvas_noise_calculate_time__values}) AS metrics__metrics__timing_distribution__fingerprinting_protection_canvas_noise_calculate_time__values ;;
  }

  join: metrics__metrics__timing_distribution__fog_ipc_flush_durations__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__fog_ipc_flush_durations__values}) AS metrics__metrics__timing_distribution__fog_ipc_flush_durations__values ;;
  }

  join: metrics__metrics__timing_distribution__fog_validation_gvsv_composite_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__fog_validation_gvsv_composite_time__values}) AS metrics__metrics__timing_distribution__fog_validation_gvsv_composite_time__values ;;
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

  join: metrics__metrics__timing_distribution__glean_upload_send_failure__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__glean_upload_send_failure__values}) AS metrics__metrics__timing_distribution__glean_upload_send_failure__values ;;
  }

  join: metrics__metrics__timing_distribution__glean_upload_send_success__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__glean_upload_send_success__values}) AS metrics__metrics__timing_distribution__glean_upload_send_success__values ;;
  }

  join: metrics__metrics__timing_distribution__glean_validation_shutdown_dispatcher_wait__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__glean_validation_shutdown_dispatcher_wait__values}) AS metrics__metrics__timing_distribution__glean_validation_shutdown_dispatcher_wait__values ;;
  }

  join: metrics__metrics__timing_distribution__glean_validation_shutdown_wait__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__glean_validation_shutdown_wait__values}) AS metrics__metrics__timing_distribution__glean_validation_shutdown_wait__values ;;
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

  join: metrics__metrics__timing_distribution__network_open_to_transaction_pending__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__network_open_to_transaction_pending__values}) AS metrics__metrics__timing_distribution__network_open_to_transaction_pending__values ;;
  }

  join: metrics__metrics__timing_distribution__network_tcp_connection__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__network_tcp_connection__values}) AS metrics__metrics__timing_distribution__network_tcp_connection__values ;;
  }

  join: metrics__metrics__timing_distribution__network_tls_handshake__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__network_tls_handshake__values}) AS metrics__metrics__timing_distribution__network_tls_handshake__values ;;
  }

  join: metrics__metrics__timing_distribution__networking_dns_failed_lookup_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__networking_dns_failed_lookup_time__values}) AS metrics__metrics__timing_distribution__networking_dns_failed_lookup_time__values ;;
  }

  join: metrics__metrics__timing_distribution__networking_dns_lookup_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__networking_dns_lookup_time__values}) AS metrics__metrics__timing_distribution__networking_dns_lookup_time__values ;;
  }

  join: metrics__metrics__timing_distribution__networking_dns_renewal_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__networking_dns_renewal_time__values}) AS metrics__metrics__timing_distribution__networking_dns_renewal_time__values ;;
  }

  join: metrics__metrics__timing_distribution__networking_dns_renewal_time_for_ttl__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__networking_dns_renewal_time_for_ttl__values}) AS metrics__metrics__timing_distribution__networking_dns_renewal_time_for_ttl__values ;;
  }

  join: metrics__metrics__timing_distribution__networking_http_channel_page_open_to_first_sent__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__networking_http_channel_page_open_to_first_sent__values}) AS metrics__metrics__timing_distribution__networking_http_channel_page_open_to_first_sent__values ;;
  }

  join: metrics__metrics__timing_distribution__networking_http_channel_page_open_to_first_sent_https_rr__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__networking_http_channel_page_open_to_first_sent_https_rr__values}) AS metrics__metrics__timing_distribution__networking_http_channel_page_open_to_first_sent_https_rr__values ;;
  }

  join: metrics__metrics__timing_distribution__networking_http_channel_sub_open_to_first_sent__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__networking_http_channel_sub_open_to_first_sent__values}) AS metrics__metrics__timing_distribution__networking_http_channel_sub_open_to_first_sent__values ;;
  }

  join: metrics__metrics__timing_distribution__networking_http_channel_sub_open_to_first_sent_https_rr__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__networking_http_channel_sub_open_to_first_sent_https_rr__values}) AS metrics__metrics__timing_distribution__networking_http_channel_sub_open_to_first_sent_https_rr__values ;;
  }

  join: metrics__metrics__timing_distribution__networking_http_content_html5parser_ondatafinished_to_onstop_delay__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__networking_http_content_html5parser_ondatafinished_to_onstop_delay__values}) AS metrics__metrics__timing_distribution__networking_http_content_html5parser_ondatafinished_to_onstop_delay__values ;;
  }

  join: metrics__metrics__timing_distribution__networking_http_content_html5parser_ondatafinished_to_onstop_delay_negative__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__networking_http_content_html5parser_ondatafinished_to_onstop_delay_negative__values}) AS metrics__metrics__timing_distribution__networking_http_content_html5parser_ondatafinished_to_onstop_delay_negative__values ;;
  }

  join: metrics__metrics__timing_distribution__networking_http_content_ondatafinished_delay__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__networking_http_content_ondatafinished_delay__values}) AS metrics__metrics__timing_distribution__networking_http_content_ondatafinished_delay__values ;;
  }

  join: metrics__metrics__timing_distribution__networking_http_content_ondatafinished_to_onstop_delay__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__networking_http_content_ondatafinished_to_onstop_delay__values}) AS metrics__metrics__timing_distribution__networking_http_content_ondatafinished_to_onstop_delay__values ;;
  }

  join: metrics__metrics__timing_distribution__networking_http_content_ondatafinished_to_onstop_delay_negative__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__networking_http_content_ondatafinished_to_onstop_delay_negative__values}) AS metrics__metrics__timing_distribution__networking_http_content_ondatafinished_to_onstop_delay_negative__values ;;
  }

  join: metrics__metrics__timing_distribution__networking_http_content_onstart_delay__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__networking_http_content_onstart_delay__values}) AS metrics__metrics__timing_distribution__networking_http_content_onstart_delay__values ;;
  }

  join: metrics__metrics__timing_distribution__networking_http_content_onstop_delay__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__networking_http_content_onstop_delay__values}) AS metrics__metrics__timing_distribution__networking_http_content_onstop_delay__values ;;
  }

  join: metrics__metrics__timing_distribution__networking_transaction_wait_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__networking_transaction_wait_time__values}) AS metrics__metrics__timing_distribution__networking_transaction_wait_time__values ;;
  }

  join: metrics__metrics__timing_distribution__networking_transaction_wait_time_https_rr__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__networking_transaction_wait_time_https_rr__values}) AS metrics__metrics__timing_distribution__networking_transaction_wait_time_https_rr__values ;;
  }

  join: metrics__metrics__timing_distribution__paint_build_displaylist_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__paint_build_displaylist_time__values}) AS metrics__metrics__timing_distribution__paint_build_displaylist_time__values ;;
  }

  join: metrics__metrics__timing_distribution__perf_largest_contentful_paint__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__perf_largest_contentful_paint__values}) AS metrics__metrics__timing_distribution__perf_largest_contentful_paint__values ;;
  }

  join: metrics__metrics__timing_distribution__perf_largest_contentful_paint_from_response_start__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__perf_largest_contentful_paint_from_response_start__values}) AS metrics__metrics__timing_distribution__perf_largest_contentful_paint_from_response_start__values ;;
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

  join: metrics__metrics__timing_distribution__performance_time_load_event_start__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__performance_time_load_event_start__values}) AS metrics__metrics__timing_distribution__performance_time_load_event_start__values ;;
  }

  join: metrics__metrics__timing_distribution__privacy_sanitize_load_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__privacy_sanitize_load_time__values}) AS metrics__metrics__timing_distribution__privacy_sanitize_load_time__values ;;
  }

  join: metrics__metrics__timing_distribution__search_service_startup_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__search_service_startup_time__values}) AS metrics__metrics__timing_distribution__search_service_startup_time__values ;;
  }

  join: metrics__metrics__timing_distribution__serp_categorization_duration__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__serp_categorization_duration__values}) AS metrics__metrics__timing_distribution__serp_categorization_duration__values ;;
  }

  join: metrics__metrics__timing_distribution__wr_framebuild_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__wr_framebuild_time__values}) AS metrics__metrics__timing_distribution__wr_framebuild_time__values ;;
  }

  join: metrics__metrics__timing_distribution__wr_gpu_wait_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__wr_gpu_wait_time__values}) AS metrics__metrics__timing_distribution__wr_gpu_wait_time__values ;;
  }

  join: metrics__metrics__timing_distribution__wr_rasterize_blobs_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__wr_rasterize_blobs_time__values}) AS metrics__metrics__timing_distribution__wr_rasterize_blobs_time__values ;;
  }

  join: metrics__metrics__timing_distribution__wr_rasterize_glyphs_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__wr_rasterize_glyphs_time__values}) AS metrics__metrics__timing_distribution__wr_rasterize_glyphs_time__values ;;
  }

  join: metrics__metrics__timing_distribution__wr_renderer_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__wr_renderer_time__values}) AS metrics__metrics__timing_distribution__wr_renderer_time__values ;;
  }

  join: metrics__metrics__timing_distribution__wr_renderer_time_no_sc__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__wr_renderer_time_no_sc__values}) AS metrics__metrics__timing_distribution__wr_renderer_time_no_sc__values ;;
  }

  join: metrics__metrics__timing_distribution__wr_scenebuild_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__wr_scenebuild_time__values}) AS metrics__metrics__timing_distribution__wr_scenebuild_time__values ;;
  }

  join: metrics__metrics__timing_distribution__wr_sceneswap_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__wr_sceneswap_time__values}) AS metrics__metrics__timing_distribution__wr_sceneswap_time__values ;;
  }

  join: metrics__metrics__timing_distribution__wr_texture_cache_update_time__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__wr_texture_cache_update_time__values}) AS metrics__metrics__timing_distribution__wr_texture_cache_update_time__values ;;
  }

  join: metrics__metrics__timing_distribution__wr_time_to_frame_build__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__wr_time_to_frame_build__values}) AS metrics__metrics__timing_distribution__wr_time_to_frame_build__values ;;
  }

  join: metrics__metrics__timing_distribution__wr_time_to_render_start__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__timing_distribution__wr_time_to_render_start__values}) AS metrics__metrics__timing_distribution__wr_time_to_render_start__values ;;
  }

  join: metrics__ping_info__experiments {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.ping_info__experiments}) AS metrics__ping_info__experiments ;;
  }
}

explore: suggest__metrics__metrics__labeled_counter__codec_stats_audio_preferred_codec {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__codec_stats_other_fec_signaled {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__codec_stats_ulpfec_negotiated {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__codec_stats_video_preferred_codec {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__cookie_banners_click_result {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__cookie_banners_cmp_detected_cmp {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__cookie_banners_cmp_result {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__cookie_banners_rule_lookup_by_domain {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__cookie_banners_rule_lookup_by_load {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__dap_report_generation_status {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__dap_upload_status {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__data_storage_entries {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__dotprint_failure {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__extensions_apis_dnr_startup_cache_entries {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__extensions_counters_browser_action_preload_result {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__extensions_counters_event_page_idle_result {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__extensions_process_event {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__extensions_startup_cache_read_errors {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__fog_validation_gvsv_audio_stream_init {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__fog_validation_gvsv_audio_stream_init_gecko {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__formautofill_form_submission_heuristic {
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

explore: suggest__metrics__metrics__labeled_counter__gmp_update_xml_fetch_result {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__gpu_process_crash_fallbacks {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__ipc_received_messages_content_background {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__ipc_received_messages_content_foreground {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__ipc_received_messages_gpu_process {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__ipc_received_messages_parent_active {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__ipc_received_messages_parent_inactive {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__ipc_sent_messages_content_background {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__ipc_sent_messages_content_foreground {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__ipc_sent_messages_gpu_process {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__ipc_sent_messages_parent_active {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__ipc_sent_messages_parent_inactive {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__media_audio_backend {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__media_audio_init_failure {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__messaging_system_invalid_nested_data {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__netwerk_early_hints {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__netwerk_eh_link_type {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__network_cors_authorization_header {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__network_data_size_pb_per_type {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__network_data_size_per_type {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__networking_cookie_timestamp_fixed_count {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__networking_dns_native_count {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__networking_http_channel_onstart_success_https_rr {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__networking_http_response_version {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__networking_https_rr_presented {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__networking_https_upgrade_with_https_rr {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__networking_residual_cache_folder_removal {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__networking_speculative_connect_outcome {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__networking_speculative_connection_outcome {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__networking_trr_request_count {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__pdfjs_buttons {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__pdfjs_editing {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__pdfjs_geckoview {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__pdfjs_stamp {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__ping_centre_send_failures_by_namespace {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__ping_centre_send_successes_by_namespace {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__power_cpu_ms_per_thread_content_background {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__power_cpu_ms_per_thread_content_foreground {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__power_cpu_ms_per_thread_gpu_process {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__power_cpu_ms_per_thread_parent_active {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__power_cpu_ms_per_thread_parent_inactive {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__power_cpu_time_per_process_type_ms {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__power_cpu_time_per_tracker_type_ms {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__power_gpu_time_per_process_type_ms {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__power_wakeups_per_process_type {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__power_wakeups_per_thread_content_background {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__power_wakeups_per_thread_content_foreground {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__power_wakeups_per_thread_gpu_process {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__power_wakeups_per_thread_parent_active {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__power_wakeups_per_thread_parent_inactive {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__protocolhandler_mailto_handler_prompt_shown {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__protocolhandler_mailto_prompt_clicked {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__pwmgr_form_autofill_result {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__rtcrtpsender_setparameters_blame_length_changed {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__rtcrtpsender_setparameters_blame_no_getparameters {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__rtcrtpsender_setparameters_blame_no_transactionid {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__rtcrtpsender_setparameters_blame_stale_transactionid {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__search_service_initialization_status {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__tls_xyber_intolerance_reason {
  hidden: yes
}