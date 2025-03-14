
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: metrics_table {
  dimension: additional_properties {
    sql: ${TABLE}.additional_properties ;;
    hidden: yes
  }

  dimension: app_version_major {
    sql: ${TABLE}.app_version_major ;;
    type: number
  }

  dimension: app_version_minor {
    sql: ${TABLE}.app_version_minor ;;
    type: number
  }

  dimension: app_version_patch {
    sql: ${TABLE}.app_version_patch ;;
    type: number
  }

  dimension: client_info__android_sdk_version {
    sql: ${TABLE}.client_info.android_sdk_version ;;
    type: string
    group_label: "Client Info"
    group_item_label: "Android Sdk Version"
  }

  dimension: client_info__app_build {
    sql: ${TABLE}.client_info.app_build ;;
    type: string
    group_label: "Client Info"
    group_item_label: "App Build"
  }

  dimension: client_info__app_channel {
    sql: ${TABLE}.client_info.app_channel ;;
    type: string
    group_label: "Client Info"
    group_item_label: "App Channel"
  }

  dimension: client_info__app_display_version {
    sql: ${TABLE}.client_info.app_display_version ;;
    type: string
    group_label: "Client Info"
    group_item_label: "App Display Version"
  }

  dimension: client_info__architecture {
    sql: ${TABLE}.client_info.architecture ;;
    type: string
    group_label: "Client Info"
    group_item_label: "Architecture"
  }

  dimension: client_info__build_date {
    sql: ${TABLE}.client_info.build_date ;;
    type: string
    group_label: "Client Info"
    group_item_label: "Build Date"
  }

  dimension: client_info__client_id {
    sql: ${TABLE}.client_info.client_id ;;
    hidden: yes
  }

  dimension: client_info__device_manufacturer {
    sql: ${TABLE}.client_info.device_manufacturer ;;
    type: string
    group_label: "Client Info"
    group_item_label: "Device Manufacturer"
  }

  dimension: client_info__device_model {
    sql: ${TABLE}.client_info.device_model ;;
    type: string
    group_label: "Client Info"
    group_item_label: "Device Model"
  }

  dimension: client_info__first_run_date {
    sql: ${TABLE}.client_info.first_run_date ;;
    type: string
    group_label: "Client Info"
    group_item_label: "First Run Date"
  }

  dimension: client_info__locale {
    sql: ${TABLE}.client_info.locale ;;
    type: string
    group_label: "Client Info"
    group_item_label: "Locale"
  }

  dimension: client_info__os {
    sql: ${TABLE}.client_info.os ;;
    type: string
    group_label: "Client Info"
    group_item_label: "Os"
  }

  dimension: client_info__os_version {
    sql: ${TABLE}.client_info.os_version ;;
    type: string
    group_label: "Client Info"
    group_item_label: "Os Version"
  }

  dimension: client_info__session_count {
    sql: ${TABLE}.client_info.session_count ;;
    type: number
    group_label: "Client Info"
    group_item_label: "Session Count"
  }

  dimension: client_info__session_id {
    sql: ${TABLE}.client_info.session_id ;;
    type: string
    group_label: "Client Info"
    group_item_label: "Session Id"
  }

  dimension: client_info__telemetry_sdk_build {
    sql: ${TABLE}.client_info.telemetry_sdk_build ;;
    type: string
    group_label: "Client Info"
    group_item_label: "Telemetry Sdk Build"
  }

  dimension: client_info__windows_build_number {
    sql: ${TABLE}.client_info.windows_build_number ;;
    type: number
    group_label: "Client Info"
    group_item_label: "Windows Build Number"
  }

  dimension: document_id {
    sql: ${TABLE}.document_id ;;
    hidden: yes
  }

  dimension: events {
    sql: ${TABLE}.events ;;
    hidden: yes
  }

  dimension: metadata__geo__city {
    sql: ${TABLE}.metadata.geo.city ;;
    type: string
    group_label: "Metadata Geo"
    group_item_label: "City"
  }

  dimension: metadata__geo__country {
    sql: ${TABLE}.metadata.geo.country ;;
    type: string
    group_label: "Metadata Geo"
    group_item_label: "Country"
    map_layer_name: countries
  }

  dimension: metadata__geo__db_version {
    sql: ${TABLE}.metadata.geo.db_version ;;
    type: string
    group_label: "Metadata Geo"
    group_item_label: "Db Version"
  }

  dimension: metadata__geo__subdivision1 {
    sql: ${TABLE}.metadata.geo.subdivision1 ;;
    type: string
    group_label: "Metadata Geo"
    group_item_label: "Subdivision1"
  }

  dimension: metadata__geo__subdivision2 {
    sql: ${TABLE}.metadata.geo.subdivision2 ;;
    type: string
    group_label: "Metadata Geo"
    group_item_label: "Subdivision2"
  }

  dimension: metadata__header__date {
    sql: ${TABLE}.metadata.header.date ;;
    type: string
    group_label: "Metadata Header"
    group_item_label: "Date"
  }

  dimension: metadata__header__dnt {
    sql: ${TABLE}.metadata.header.dnt ;;
    type: string
    group_label: "Metadata Header"
    group_item_label: "Dnt"
  }

  dimension: metadata__header__parsed_x_lb_tags__tls_cipher_hex {
    sql: ${TABLE}.metadata.header.parsed_x_lb_tags.tls_cipher_hex ;;
    type: string
    group_label: "Metadata Header Parsed X Lb Tags"
    group_item_label: "Tls Cipher Hex"
  }

  dimension: metadata__header__parsed_x_lb_tags__tls_version {
    sql: ${TABLE}.metadata.header.parsed_x_lb_tags.tls_version ;;
    type: string
    group_label: "Metadata Header Parsed X Lb Tags"
    group_item_label: "Tls Version"
  }

  dimension: metadata__header__parsed_x_source_tags {
    sql: ${TABLE}.metadata.header.parsed_x_source_tags ;;
    hidden: yes
  }

  dimension: metadata__header__x_debug_id {
    sql: ${TABLE}.metadata.header.x_debug_id ;;
    type: string
    group_label: "Metadata Header"
    group_item_label: "X Debug Id"
  }

  dimension: metadata__header__x_foxsec_ip_reputation {
    sql: ${TABLE}.metadata.header.x_foxsec_ip_reputation ;;
    type: string
    group_label: "Metadata Header"
    group_item_label: "X Foxsec Ip Reputation"
  }

  dimension: metadata__header__x_lb_tags {
    sql: ${TABLE}.metadata.header.x_lb_tags ;;
    type: string
    group_label: "Metadata Header"
    group_item_label: "X Lb Tags"
  }

  dimension: metadata__header__x_pingsender_version {
    sql: ${TABLE}.metadata.header.x_pingsender_version ;;
    type: string
    group_label: "Metadata Header"
    group_item_label: "X Pingsender Version"
  }

  dimension: metadata__header__x_source_tags {
    sql: ${TABLE}.metadata.header.x_source_tags ;;
    type: string
    group_label: "Metadata Header"
    group_item_label: "X Source Tags"
  }

  dimension: metadata__header__x_telemetry_agent {
    sql: ${TABLE}.metadata.header.x_telemetry_agent ;;
    type: string
    group_label: "Metadata Header"
    group_item_label: "X Telemetry Agent"
  }

  dimension: metadata__isp__db_version {
    sql: ${TABLE}.metadata.isp.db_version ;;
    type: string
    group_label: "Metadata Isp"
    group_item_label: "Db Version"
  }

  dimension: metadata__isp__name {
    sql: ${TABLE}.metadata.isp.name ;;
    type: string
    group_label: "Metadata Isp"
    group_item_label: "Name"
  }

  dimension: metadata__isp__organization {
    sql: ${TABLE}.metadata.isp.organization ;;
    type: string
    group_label: "Metadata Isp"
    group_item_label: "Organization"
  }

  dimension: metadata__user_agent__browser {
    sql: ${TABLE}.metadata.user_agent.browser ;;
    type: string
    group_label: "Metadata User Agent"
    group_item_label: "Browser"
  }

  dimension: metadata__user_agent__os {
    sql: ${TABLE}.metadata.user_agent.os ;;
    type: string
    group_label: "Metadata User Agent"
    group_item_label: "Os"
  }

  dimension: metadata__user_agent__version {
    sql: ${TABLE}.metadata.user_agent.version ;;
    type: string
    group_label: "Metadata User Agent"
    group_item_label: "Version"
  }

  dimension: metrics__boolean__a11y_always_underline_links {
    sql: ${TABLE}.metrics.boolean.a11y_always_underline_links ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "A11Y Always Underline Links"
  }

  dimension: metrics__boolean__a11y_backplate {
    sql: ${TABLE}.metrics.boolean.a11y_backplate ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "A11Y Backplate"
  }

  dimension: metrics__boolean__a11y_invert_colors {
    sql: ${TABLE}.metrics.boolean.a11y_invert_colors ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "A11Y Invert Colors"
  }

  dimension: metrics__boolean__a11y_use_system_colors {
    sql: ${TABLE}.metrics.boolean.a11y_use_system_colors ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "A11Y Use System Colors"
  }

  dimension: metrics__boolean__bounce_tracking_protection_enabled_at_startup {
    sql: ${TABLE}.metrics.boolean.bounce_tracking_protection_enabled_at_startup ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Bounce Tracking Protection Enabled At Startup"
  }

  dimension: metrics__boolean__bounce_tracking_protection_enabled_dry_run_mode_at_startup {
    sql: ${TABLE}.metrics.boolean.bounce_tracking_protection_enabled_dry_run_mode_at_startup ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Bounce Tracking Protection Enabled Dry Run Mode At Startup"
  }

  dimension: metrics__boolean__browser_is_default {
    sql: ${TABLE}.metrics.boolean.browser_is_default ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Browser Is Default"
  }

  dimension: metrics__boolean__browser_ui_proton_enabled {
    sql: ${TABLE}.metrics.boolean.browser_ui_proton_enabled ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Browser Ui Proton Enabled"
  }

  dimension: metrics__boolean__contentblocking_cryptomining_blocking_enabled {
    sql: ${TABLE}.metrics.boolean.contentblocking_cryptomining_blocking_enabled ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Contentblocking Cryptomining Blocking Enabled"
  }

  dimension: metrics__boolean__contentblocking_fingerprinting_blocking_enabled {
    sql: ${TABLE}.metrics.boolean.contentblocking_fingerprinting_blocking_enabled ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Contentblocking Fingerprinting Blocking Enabled"
  }

  dimension: metrics__boolean__cookie_banners_service_detect_only {
    sql: ${TABLE}.metrics.boolean.cookie_banners_service_detect_only ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Cookie Banners Service Detect Only"
  }

  dimension: metrics__boolean__dom_parentprocess_private_window_used {
    sql: ${TABLE}.metrics.boolean.dom_parentprocess_private_window_used ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Dom Parentprocess Private Window Used"
  }

  dimension: metrics__boolean__extensions_use_remote_policy {
    sql: ${TABLE}.metrics.boolean.extensions_use_remote_policy ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Extensions Use Remote Policy"
  }

  dimension: metrics__boolean__extensions_use_remote_pref {
    sql: ${TABLE}.metrics.boolean.extensions_use_remote_pref ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Extensions Use Remote Pref"
  }

  dimension: metrics__boolean__fog_failed_idle_registration {
    sql: ${TABLE}.metrics.boolean.fog_failed_idle_registration ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Fog Failed Idle Registration"
  }

  dimension: metrics__boolean__gfx_os_compositor {
    sql: ${TABLE}.metrics.boolean.gfx_os_compositor ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Gfx Os Compositor"
  }

  dimension: metrics__boolean__gfx_status_headless {
    sql: ${TABLE}.metrics.boolean.gfx_status_headless ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Gfx Status Headless"
  }

  dimension: metrics__boolean__gfx_supports_hdr {
    sql: ${TABLE}.metrics.boolean.gfx_supports_hdr ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Gfx Supports Hdr"
  }

  dimension: metrics__boolean__gfx_tmp_writable {
    sql: ${TABLE}.metrics.boolean.gfx_tmp_writable ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Gfx Tmp Writable"
  }

  dimension: metrics__boolean__gifft_validation_main_ping_assembling {
    sql: ${TABLE}.metrics.boolean.gifft_validation_main_ping_assembling ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Gifft Validation Main Ping Assembling"
  }

  dimension: metrics__boolean__glean_core_migration_successful {
    sql: ${TABLE}.metrics.boolean.glean_core_migration_successful ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Glean Core Migration Successful"
  }

  dimension: metrics__boolean__glean_error_preinit_tasks_timeout {
    sql: ${TABLE}.metrics.boolean.glean_error_preinit_tasks_timeout ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Glean Error Preinit Tasks Timeout"
  }

  dimension: metrics__boolean__metrics_search_widget_installed {
    sql: ${TABLE}.metrics.boolean.metrics_search_widget_installed ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Metrics Search Widget Installed"
  }

  dimension: metrics__boolean__metrics_start_reason_activity_error {
    sql: ${TABLE}.metrics.boolean.metrics_start_reason_activity_error ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Metrics Start Reason Activity Error"
  }

  dimension: metrics__boolean__metrics_start_reason_process_error {
    sql: ${TABLE}.metrics.boolean.metrics_start_reason_process_error ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Metrics Start Reason Process Error"
  }

  dimension: metrics__boolean__mozilla_products_has_fenix_installed {
    sql: ${TABLE}.metrics.boolean.mozilla_products_has_fenix_installed ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Mozilla Products Has Fenix Installed"
  }

  dimension: metrics__boolean__mozilla_products_is_fenix_default_browser {
    sql: ${TABLE}.metrics.boolean.mozilla_products_is_fenix_default_browser ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Mozilla Products Is Fenix Default Browser"
  }

  dimension: metrics__boolean__networking_http3_enabled {
    sql: ${TABLE}.metrics.boolean.networking_http3_enabled ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Networking Http3 Enabled"
  }

  dimension: metrics__boolean__notifications_permission_granted {
    sql: ${TABLE}.metrics.boolean.notifications_permission_granted ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Notifications Permission Granted"
  }

  dimension: metrics__boolean__os_environment_is_admin_without_uac {
    sql: ${TABLE}.metrics.boolean.os_environment_is_admin_without_uac ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Os Environment Is Admin Without Uac"
  }

  dimension: metrics__boolean__policies_is_enterprise {
    sql: ${TABLE}.metrics.boolean.policies_is_enterprise ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Policies Is Enterprise"
  }

  dimension: metrics__boolean__preferences_prefs_file_was_invalid {
    sql: ${TABLE}.metrics.boolean.preferences_prefs_file_was_invalid ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Preferences Prefs File Was Invalid"
  }

  dimension: metrics__boolean__tracking_protection_has_advertising_blocked {
    sql: ${TABLE}.metrics.boolean.tracking_protection_has_advertising_blocked ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Tracking Protection Has Advertising Blocked"
  }

  dimension: metrics__boolean__tracking_protection_has_analytics_blocked {
    sql: ${TABLE}.metrics.boolean.tracking_protection_has_analytics_blocked ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Tracking Protection Has Analytics Blocked"
  }

  dimension: metrics__boolean__tracking_protection_has_content_blocked {
    sql: ${TABLE}.metrics.boolean.tracking_protection_has_content_blocked ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Tracking Protection Has Content Blocked"
  }

  dimension: metrics__boolean__tracking_protection_has_ever_changed_etp {
    sql: ${TABLE}.metrics.boolean.tracking_protection_has_ever_changed_etp ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Tracking Protection Has Ever Changed Etp"
  }

  dimension: metrics__boolean__tracking_protection_has_social_blocked {
    sql: ${TABLE}.metrics.boolean.tracking_protection_has_social_blocked ;;
    type: yesno
    group_label: "Metrics Boolean"
    group_item_label: "Tracking Protection Has Social Blocked"
  }

  dimension: metrics__counter__apz_scrollwheel_overshoot {
    sql: ${TABLE}.metrics.counter.apz_scrollwheel_overshoot ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Apz Scrollwheel Overshoot"
  }

  dimension: metrics__counter__autocomplete_domain_added {
    sql: ${TABLE}.metrics.counter.autocomplete_domain_added ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Autocomplete Domain Added"
  }

  dimension: metrics__counter__autocomplete_domain_removed {
    sql: ${TABLE}.metrics.counter.autocomplete_domain_removed ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Autocomplete Domain Removed"
  }

  dimension: metrics__counter__autocomplete_list_order_changed {
    sql: ${TABLE}.metrics.counter.autocomplete_list_order_changed ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Autocomplete List Order Changed"
  }

  dimension: metrics__counter__bloburl_resolve_stopped {
    sql: ${TABLE}.metrics.counter.bloburl_resolve_stopped ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Bloburl Resolve Stopped"
  }

  dimension: metrics__counter__bounce_tracking_protection_purge_count_classified_tracker {
    sql: ${TABLE}.metrics.counter.bounce_tracking_protection_purge_count_classified_tracker ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Bounce Tracking Protection Purge Count Classified Tracker"
  }

  dimension: metrics__counter__browser_report_site_issue_counter {
    sql: ${TABLE}.metrics.counter.browser_report_site_issue_counter ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Browser Report Site Issue Counter"
  }

  dimension: metrics__counter__browser_total_uri_count {
    sql: ${TABLE}.metrics.counter.browser_total_uri_count ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Browser Total Uri Count"
  }

  dimension: metrics__counter__cert_signature_cache_total {
    sql: ${TABLE}.metrics.counter.cert_signature_cache_total ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Cert Signature Cache Total"
  }

  dimension: metrics__counter__cert_trust_cache_total {
    sql: ${TABLE}.metrics.counter.cert_trust_cache_total ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Cert Trust Cache Total"
  }

  dimension: metrics__counter__contentblocking_trackers_blocked_count {
    sql: ${TABLE}.metrics.counter.contentblocking_trackers_blocked_count ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Contentblocking Trackers Blocked Count"
  }

  dimension: metrics__counter__cookie_banners_cookie_injection_fail {
    sql: ${TABLE}.metrics.counter.cookie_banners_cookie_injection_fail ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Cookie Banners Cookie Injection Fail"
  }

  dimension: metrics__counter__dom_contentprocess_build_id_mismatch {
    sql: ${TABLE}.metrics.counter.dom_contentprocess_build_id_mismatch ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Dom Contentprocess Build Id Mismatch"
  }

  dimension: metrics__counter__dom_contentprocess_build_id_mismatch_false_positive {
    sql: ${TABLE}.metrics.counter.dom_contentprocess_build_id_mismatch_false_positive ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Dom Contentprocess Build Id Mismatch False Positive"
  }

  dimension: metrics__counter__dom_contentprocess_os_priority_change_considered {
    sql: ${TABLE}.metrics.counter.dom_contentprocess_os_priority_change_considered ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Dom Contentprocess Os Priority Change Considered"
  }

  dimension: metrics__counter__dom_contentprocess_os_priority_lowered {
    sql: ${TABLE}.metrics.counter.dom_contentprocess_os_priority_lowered ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Dom Contentprocess Os Priority Lowered"
  }

  dimension: metrics__counter__dom_contentprocess_os_priority_raised {
    sql: ${TABLE}.metrics.counter.dom_contentprocess_os_priority_raised ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Dom Contentprocess Os Priority Raised"
  }

  dimension: metrics__counter__dotprint_android_dialog_requested {
    sql: ${TABLE}.metrics.counter.dotprint_android_dialog_requested ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Dotprint Android Dialog Requested"
  }

  dimension: metrics__counter__dotprint_requested {
    sql: ${TABLE}.metrics.counter.dotprint_requested ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Dotprint Requested"
  }

  dimension: metrics__counter__downloads_file_opened {
    sql: ${TABLE}.metrics.counter.downloads_file_opened ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Downloads File Opened"
  }

  dimension: metrics__counter__findbar_find_next {
    sql: ${TABLE}.metrics.counter.findbar_find_next ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Findbar Find Next"
  }

  dimension: metrics__counter__findbar_find_prev {
    sql: ${TABLE}.metrics.counter.findbar_find_prev ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Findbar Find Prev"
  }

  dimension: metrics__counter__findbar_highlight_all {
    sql: ${TABLE}.metrics.counter.findbar_highlight_all ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Findbar Highlight All"
  }

  dimension: metrics__counter__findbar_match_case {
    sql: ${TABLE}.metrics.counter.findbar_match_case ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Findbar Match Case"
  }

  dimension: metrics__counter__findbar_match_diacritics {
    sql: ${TABLE}.metrics.counter.findbar_match_diacritics ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Findbar Match Diacritics"
  }

  dimension: metrics__counter__findbar_shown {
    sql: ${TABLE}.metrics.counter.findbar_shown ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Findbar Shown"
  }

  dimension: metrics__counter__findbar_whole_words {
    sql: ${TABLE}.metrics.counter.findbar_whole_words ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Findbar Whole Words"
  }

  dimension: metrics__counter__fog_inits_during_shutdown {
    sql: ${TABLE}.metrics.counter.fog_inits_during_shutdown ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Fog Inits During Shutdown"
  }

  dimension: metrics__counter__fog_ipc_flush_failures {
    sql: ${TABLE}.metrics.counter.fog_ipc_flush_failures ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Fog Ipc Flush Failures"
  }

  dimension: metrics__counter__fog_ipc_replay_failures {
    sql: ${TABLE}.metrics.counter.fog_ipc_replay_failures ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Fog Ipc Replay Failures"
  }

  dimension: metrics__counter__fog_ipc_shutdown_registration_failures {
    sql: ${TABLE}.metrics.counter.fog_ipc_shutdown_registration_failures ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Fog Ipc Shutdown Registration Failures"
  }

  dimension: metrics__counter__gfx_skipped_composites {
    sql: ${TABLE}.metrics.counter.gfx_skipped_composites ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Gfx Skipped Composites"
  }

  dimension: metrics__counter__glean_error_io {
    sql: ${TABLE}.metrics.counter.glean_error_io ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Glean Error Io"
  }

  dimension: metrics__counter__glean_error_preinit_tasks_overflow {
    sql: ${TABLE}.metrics.counter.glean_error_preinit_tasks_overflow ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Glean Error Preinit Tasks Overflow"
  }

  dimension: metrics__counter__glean_time_invalid_timezone_offset {
    sql: ${TABLE}.metrics.counter.glean_time_invalid_timezone_offset ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Glean Time Invalid Timezone Offset"
  }

  dimension: metrics__counter__glean_upload_deleted_pings_after_quota_hit {
    sql: ${TABLE}.metrics.counter.glean_upload_deleted_pings_after_quota_hit ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Glean Upload Deleted Pings After Quota Hit"
  }

  dimension: metrics__counter__glean_upload_in_flight_pings_dropped {
    sql: ${TABLE}.metrics.counter.glean_upload_in_flight_pings_dropped ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Glean Upload In Flight Pings Dropped"
  }

  dimension: metrics__counter__glean_upload_missing_send_ids {
    sql: ${TABLE}.metrics.counter.glean_upload_missing_send_ids ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Glean Upload Missing Send Ids"
  }

  dimension: metrics__counter__glean_upload_pending_pings {
    sql: ${TABLE}.metrics.counter.glean_upload_pending_pings ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Glean Upload Pending Pings"
  }

  dimension: metrics__counter__glean_validation_app_forceclosed_count {
    sql: ${TABLE}.metrics.counter.glean_validation_app_forceclosed_count ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Glean Validation App Forceclosed Count"
  }

  dimension: metrics__counter__glean_validation_baseline_ping_count {
    sql: ${TABLE}.metrics.counter.glean_validation_baseline_ping_count ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Glean Validation Baseline Ping Count"
  }

  dimension: metrics__counter__glean_validation_foreground_count {
    sql: ${TABLE}.metrics.counter.glean_validation_foreground_count ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Glean Validation Foreground Count"
  }

  dimension: metrics__counter__hls_canplay_requested {
    sql: ${TABLE}.metrics.counter.hls_canplay_requested ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Hls Canplay Requested"
  }

  dimension: metrics__counter__hls_canplay_supported {
    sql: ${TABLE}.metrics.counter.hls_canplay_supported ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Hls Canplay Supported"
  }

  dimension: metrics__counter__httpsfirst_downgraded {
    sql: ${TABLE}.metrics.counter.httpsfirst_downgraded ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Httpsfirst Downgraded"
  }

  dimension: metrics__counter__httpsfirst_downgraded_schemeless {
    sql: ${TABLE}.metrics.counter.httpsfirst_downgraded_schemeless ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Httpsfirst Downgraded Schemeless"
  }

  dimension: metrics__counter__httpsfirst_upgraded {
    sql: ${TABLE}.metrics.counter.httpsfirst_upgraded ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Httpsfirst Upgraded"
  }

  dimension: metrics__counter__httpsfirst_upgraded_schemeless {
    sql: ${TABLE}.metrics.counter.httpsfirst_upgraded_schemeless ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Httpsfirst Upgraded Schemeless"
  }

  dimension: metrics__counter__ls_request_recv_cancellation {
    sql: ${TABLE}.metrics.counter.ls_request_recv_cancellation ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Ls Request Recv Cancellation"
  }

  dimension: metrics__counter__ls_request_send_cancellation {
    sql: ${TABLE}.metrics.counter.ls_request_send_cancellation ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Ls Request Send Cancellation"
  }

  dimension: metrics__counter__mathml_doc_count {
    sql: ${TABLE}.metrics.counter.mathml_doc_count ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Mathml Doc Count"
  }

  dimension: metrics__counter__media_element_in_page_count {
    sql: ${TABLE}.metrics.counter.media_element_in_page_count ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Media Element In Page Count"
  }

  dimension: metrics__counter__netwerk_parent_connect_timeout {
    sql: ${TABLE}.metrics.counter.netwerk_parent_connect_timeout ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Netwerk Parent Connect Timeout"
  }

  dimension: metrics__counter__networking_cookie_count_invalid_first_party_partitioned_in_db {
    sql: ${TABLE}.metrics.counter.networking_cookie_count_invalid_first_party_partitioned_in_db ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Networking Cookie Count Invalid First Party Partitioned In Db"
  }

  dimension: metrics__counter__networking_os_socket_limit_reached {
    sql: ${TABLE}.metrics.counter.networking_os_socket_limit_reached ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Networking Os Socket Limit Reached"
  }

  dimension: metrics__counter__networking_residual_cache_folder_count {
    sql: ${TABLE}.metrics.counter.networking_residual_cache_folder_count ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Networking Residual Cache Folder Count"
  }

  dimension: metrics__counter__networking_set_cookie {
    sql: ${TABLE}.metrics.counter.networking_set_cookie ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Networking Set Cookie"
  }

  dimension: metrics__counter__networking_set_invalid_first_party_partitioned_cookie {
    sql: ${TABLE}.metrics.counter.networking_set_invalid_first_party_partitioned_cookie ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Networking Set Invalid First Party Partitioned Cookie"
  }

  dimension: metrics__counter__opaque_response_blocking_cross_origin_opaque_response_count {
    sql: ${TABLE}.metrics.counter.opaque_response_blocking_cross_origin_opaque_response_count ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Opaque Response Blocking Cross Origin Opaque Response Count"
  }

  dimension: metrics__counter__opaque_response_blocking_javascript_validation_count {
    sql: ${TABLE}.metrics.counter.opaque_response_blocking_javascript_validation_count ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Opaque Response Blocking Javascript Validation Count"
  }

  dimension: metrics__counter__pdfjs_editing_highlight_color_changed {
    sql: ${TABLE}.metrics.counter.pdfjs_editing_highlight_color_changed ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Pdfjs Editing Highlight Color Changed"
  }

  dimension: metrics__counter__pdfjs_editing_highlight_deleted {
    sql: ${TABLE}.metrics.counter.pdfjs_editing_highlight_deleted ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Pdfjs Editing Highlight Deleted"
  }

  dimension: metrics__counter__pdfjs_editing_highlight_edited {
    sql: ${TABLE}.metrics.counter.pdfjs_editing_highlight_edited ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Pdfjs Editing Highlight Edited"
  }

  dimension: metrics__counter__pdfjs_editing_highlight_print {
    sql: ${TABLE}.metrics.counter.pdfjs_editing_highlight_print ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Pdfjs Editing Highlight Print"
  }

  dimension: metrics__counter__pdfjs_editing_highlight_save {
    sql: ${TABLE}.metrics.counter.pdfjs_editing_highlight_save ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Pdfjs Editing Highlight Save"
  }

  dimension: metrics__counter__pdfjs_editing_highlight_thickness_changed {
    sql: ${TABLE}.metrics.counter.pdfjs_editing_highlight_thickness_changed ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Pdfjs Editing Highlight Thickness Changed"
  }

  dimension: metrics__counter__pdfjs_editing_highlight_toggle_visibility {
    sql: ${TABLE}.metrics.counter.pdfjs_editing_highlight_toggle_visibility ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Pdfjs Editing Highlight Toggle Visibility"
  }

  dimension: metrics__counter__pdfjs_used {
    sql: ${TABLE}.metrics.counter.pdfjs_used ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Pdfjs Used"
  }

  dimension: metrics__counter__power_cpu_time_bogus_values {
    sql: ${TABLE}.metrics.counter.power_cpu_time_bogus_values ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Power Cpu Time Bogus Values"
  }

  dimension: metrics__counter__power_gpu_time_bogus_values {
    sql: ${TABLE}.metrics.counter.power_gpu_time_bogus_values ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Power Gpu Time Bogus Values"
  }

  dimension: metrics__counter__power_total_cpu_time_ms {
    sql: ${TABLE}.metrics.counter.power_total_cpu_time_ms ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Power Total Cpu Time Ms"
  }

  dimension: metrics__counter__power_total_gpu_time_ms {
    sql: ${TABLE}.metrics.counter.power_total_gpu_time_ms ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Power Total Gpu Time Ms"
  }

  dimension: metrics__counter__power_total_thread_wakeups {
    sql: ${TABLE}.metrics.counter.power_total_thread_wakeups ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Power Total Thread Wakeups"
  }

  dimension: metrics__counter__printing_dialog_opened_via_preview_tm {
    sql: ${TABLE}.metrics.counter.printing_dialog_opened_via_preview_tm ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Printing Dialog Opened Via Preview Tm"
  }

  dimension: metrics__counter__printing_dialog_via_preview_cancelled_tm {
    sql: ${TABLE}.metrics.counter.printing_dialog_via_preview_cancelled_tm ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Printing Dialog Via Preview Cancelled Tm"
  }

  dimension: metrics__counter__printing_preview_cancelled_tm {
    sql: ${TABLE}.metrics.counter.printing_preview_cancelled_tm ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Printing Preview Cancelled Tm"
  }

  dimension: metrics__counter__printing_preview_opened_tm {
    sql: ${TABLE}.metrics.counter.printing_preview_opened_tm ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Printing Preview Opened Tm"
  }

  dimension: metrics__counter__printing_silent_print {
    sql: ${TABLE}.metrics.counter.printing_silent_print ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Printing Silent Print"
  }

  dimension: metrics__counter__rtcrtpsender_count {
    sql: ${TABLE}.metrics.counter.rtcrtpsender_count ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Rtcrtpsender Count"
  }

  dimension: metrics__counter__rtcrtpsender_count_setparameters_compat {
    sql: ${TABLE}.metrics.counter.rtcrtpsender_count_setparameters_compat ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Rtcrtpsender Count Setparameters Compat"
  }

  dimension: metrics__counter__sct_signature_cache_total {
    sql: ${TABLE}.metrics.counter.sct_signature_cache_total ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Sct Signature Cache Total"
  }

  dimension: metrics__counter__settings_screen_autocomplete_domain_added {
    sql: ${TABLE}.metrics.counter.settings_screen_autocomplete_domain_added ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Settings Screen Autocomplete Domain Added"
  }

  dimension: metrics__counter__settings_screen_whats_new_tapped {
    sql: ${TABLE}.metrics.counter.settings_screen_whats_new_tapped ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Settings Screen Whats New Tapped"
  }

  dimension: metrics__counter__shortcuts_shortcut_added_counter {
    sql: ${TABLE}.metrics.counter.shortcuts_shortcut_added_counter ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Shortcuts Shortcut Added Counter"
  }

  dimension: metrics__counter__shortcuts_shortcut_opened_counter {
    sql: ${TABLE}.metrics.counter.shortcuts_shortcut_opened_counter ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Shortcuts Shortcut Opened Counter"
  }

  dimension: metrics__counter__tls_certificate_verifications {
    sql: ${TABLE}.metrics.counter.tls_certificate_verifications ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Tls Certificate Verifications"
  }

  dimension: metrics__counter__tracking_protection_toolbar_shield_clicked {
    sql: ${TABLE}.metrics.counter.tracking_protection_toolbar_shield_clicked ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Tracking Protection Toolbar Shield Clicked"
  }

  dimension: metrics__counter__translations_requests_count {
    sql: ${TABLE}.metrics.counter.translations_requests_count ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Translations Requests Count"
  }

  dimension: metrics__counter__web_notification_insecure_context_permission_request {
    sql: ${TABLE}.metrics.counter.web_notification_insecure_context_permission_request ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Web Notification Insecure Context Permission Request"
  }

  dimension: metrics__counter__webauthn_create_failure {
    sql: ${TABLE}.metrics.counter.webauthn_create_failure ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Webauthn Create Failure"
  }

  dimension: metrics__counter__webauthn_create_passkey {
    sql: ${TABLE}.metrics.counter.webauthn_create_passkey ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Webauthn Create Passkey"
  }

  dimension: metrics__counter__webauthn_create_success {
    sql: ${TABLE}.metrics.counter.webauthn_create_success ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Webauthn Create Success"
  }

  dimension: metrics__counter__webauthn_get_failure {
    sql: ${TABLE}.metrics.counter.webauthn_get_failure ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Webauthn Get Failure"
  }

  dimension: metrics__counter__webauthn_get_success {
    sql: ${TABLE}.metrics.counter.webauthn_get_success ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Webauthn Get Success"
  }

  dimension: metrics__counter__webrtcdtls_client_handshake_started_counter {
    sql: ${TABLE}.metrics.counter.webrtcdtls_client_handshake_started_counter ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Webrtcdtls Client Handshake Started Counter"
  }

  dimension: metrics__counter__webrtcdtls_server_handshake_started_counter {
    sql: ${TABLE}.metrics.counter.webrtcdtls_server_handshake_started_counter ;;
    type: number
    group_label: "Metrics Counter"
    group_item_label: "Webrtcdtls Server Handshake Started Counter"
  }

  dimension: metrics__custom_distribution__bounce_tracking_protection_num_hosts_per_purge_run__count {
    sql: ${TABLE}.metrics.custom_distribution.bounce_tracking_protection_num_hosts_per_purge_run.count ;;
    type: number
    group_label: "Metrics Custom Distribution Bounce Tracking Protection Num Hosts Per Purge Run"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__bounce_tracking_protection_num_hosts_per_purge_run__sum {
    sql: ${TABLE}.metrics.custom_distribution.bounce_tracking_protection_num_hosts_per_purge_run.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Bounce Tracking Protection Num Hosts Per Purge Run"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__bounce_tracking_protection_num_hosts_per_purge_run__values {
    sql: ${TABLE}.metrics.custom_distribution.bounce_tracking_protection_num_hosts_per_purge_run.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__cert_compression_brotli_saved_bytes__count {
    sql: ${TABLE}.metrics.custom_distribution.cert_compression_brotli_saved_bytes.count ;;
    type: number
    group_label: "Metrics Custom Distribution Cert Compression Brotli Saved Bytes"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__cert_compression_brotli_saved_bytes__sum {
    sql: ${TABLE}.metrics.custom_distribution.cert_compression_brotli_saved_bytes.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Cert Compression Brotli Saved Bytes"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__cert_compression_brotli_saved_bytes__values {
    sql: ${TABLE}.metrics.custom_distribution.cert_compression_brotli_saved_bytes.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__cert_compression_zlib_saved_bytes__count {
    sql: ${TABLE}.metrics.custom_distribution.cert_compression_zlib_saved_bytes.count ;;
    type: number
    group_label: "Metrics Custom Distribution Cert Compression Zlib Saved Bytes"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__cert_compression_zlib_saved_bytes__sum {
    sql: ${TABLE}.metrics.custom_distribution.cert_compression_zlib_saved_bytes.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Cert Compression Zlib Saved Bytes"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__cert_compression_zlib_saved_bytes__values {
    sql: ${TABLE}.metrics.custom_distribution.cert_compression_zlib_saved_bytes.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__cert_compression_zstd_saved_bytes__count {
    sql: ${TABLE}.metrics.custom_distribution.cert_compression_zstd_saved_bytes.count ;;
    type: number
    group_label: "Metrics Custom Distribution Cert Compression Zstd Saved Bytes"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__cert_compression_zstd_saved_bytes__sum {
    sql: ${TABLE}.metrics.custom_distribution.cert_compression_zstd_saved_bytes.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Cert Compression Zstd Saved Bytes"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__cert_compression_zstd_saved_bytes__values {
    sql: ${TABLE}.metrics.custom_distribution.cert_compression_zstd_saved_bytes.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__cookie_banners_click_query_selector_run_count_per_window_frame__count {
    sql: ${TABLE}.metrics.custom_distribution.cookie_banners_click_query_selector_run_count_per_window_frame.count ;;
    type: number
    group_label: "Metrics Custom Distribution Cookie Banners Click Query Selector Run Count Per Window Frame"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__cookie_banners_click_query_selector_run_count_per_window_frame__sum {
    sql: ${TABLE}.metrics.custom_distribution.cookie_banners_click_query_selector_run_count_per_window_frame.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Cookie Banners Click Query Selector Run Count Per Window Frame"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__cookie_banners_click_query_selector_run_count_per_window_frame__values {
    sql: ${TABLE}.metrics.custom_distribution.cookie_banners_click_query_selector_run_count_per_window_frame.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__cookie_banners_click_query_selector_run_count_per_window_top_level__count {
    sql: ${TABLE}.metrics.custom_distribution.cookie_banners_click_query_selector_run_count_per_window_top_level.count ;;
    type: number
    group_label: "Metrics Custom Distribution Cookie Banners Click Query Selector Run Count Per Window Top Level"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__cookie_banners_click_query_selector_run_count_per_window_top_level__sum {
    sql: ${TABLE}.metrics.custom_distribution.cookie_banners_click_query_selector_run_count_per_window_top_level.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Cookie Banners Click Query Selector Run Count Per Window Top Level"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__cookie_banners_click_query_selector_run_count_per_window_top_level__values {
    sql: ${TABLE}.metrics.custom_distribution.cookie_banners_click_query_selector_run_count_per_window_top_level.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__cookie_banners_click_query_selector_run_duration_per_window_frame__count {
    sql: ${TABLE}.metrics.custom_distribution.cookie_banners_click_query_selector_run_duration_per_window_frame.count ;;
    type: number
    group_label: "Metrics Custom Distribution Cookie Banners Click Query Selector Run Duration Per Window Frame"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__cookie_banners_click_query_selector_run_duration_per_window_frame__sum {
    sql: ${TABLE}.metrics.custom_distribution.cookie_banners_click_query_selector_run_duration_per_window_frame.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Cookie Banners Click Query Selector Run Duration Per Window Frame"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__cookie_banners_click_query_selector_run_duration_per_window_frame__values {
    sql: ${TABLE}.metrics.custom_distribution.cookie_banners_click_query_selector_run_duration_per_window_frame.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__cookie_banners_click_query_selector_run_duration_per_window_top_level__count {
    sql: ${TABLE}.metrics.custom_distribution.cookie_banners_click_query_selector_run_duration_per_window_top_level.count ;;
    type: number
    group_label: "Metrics Custom Distribution Cookie Banners Click Query Selector Run Duration Per Window Top Level"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__cookie_banners_click_query_selector_run_duration_per_window_top_level__sum {
    sql: ${TABLE}.metrics.custom_distribution.cookie_banners_click_query_selector_run_duration_per_window_top_level.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Cookie Banners Click Query Selector Run Duration Per Window Top Level"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__cookie_banners_click_query_selector_run_duration_per_window_top_level__values {
    sql: ${TABLE}.metrics.custom_distribution.cookie_banners_click_query_selector_run_duration_per_window_top_level.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__extensions_timing_event_page_running_time__count {
    sql: ${TABLE}.metrics.custom_distribution.extensions_timing_event_page_running_time.count ;;
    type: number
    group_label: "Metrics Custom Distribution Extensions Timing Event Page Running Time"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__extensions_timing_event_page_running_time__sum {
    sql: ${TABLE}.metrics.custom_distribution.extensions_timing_event_page_running_time.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Extensions Timing Event Page Running Time"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__extensions_timing_event_page_running_time__values {
    sql: ${TABLE}.metrics.custom_distribution.extensions_timing_event_page_running_time.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__fog_validation_gvsv_number_of_unique_site_origins_all_tabs__count {
    sql: ${TABLE}.metrics.custom_distribution.fog_validation_gvsv_number_of_unique_site_origins_all_tabs.count ;;
    type: number
    group_label: "Metrics Custom Distribution Fog Validation Gvsv Number Of Unique Site Origins All Tabs"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__fog_validation_gvsv_number_of_unique_site_origins_all_tabs__sum {
    sql: ${TABLE}.metrics.custom_distribution.fog_validation_gvsv_number_of_unique_site_origins_all_tabs.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Fog Validation Gvsv Number Of Unique Site Origins All Tabs"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__fog_validation_gvsv_number_of_unique_site_origins_all_tabs__values {
    sql: ${TABLE}.metrics.custom_distribution.fog_validation_gvsv_number_of_unique_site_origins_all_tabs.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__geckoview_document_site_origins__count {
    sql: ${TABLE}.metrics.custom_distribution.geckoview_document_site_origins.count ;;
    type: number
    group_label: "Metrics Custom Distribution Geckoview Document Site Origins"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__geckoview_document_site_origins__sum {
    sql: ${TABLE}.metrics.custom_distribution.geckoview_document_site_origins.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Geckoview Document Site Origins"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__geckoview_document_site_origins__values {
    sql: ${TABLE}.metrics.custom_distribution.geckoview_document_site_origins.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__geckoview_per_document_site_origins__count {
    sql: ${TABLE}.metrics.custom_distribution.geckoview_per_document_site_origins.count ;;
    type: number
    group_label: "Metrics Custom Distribution Geckoview Per Document Site Origins"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__geckoview_per_document_site_origins__sum {
    sql: ${TABLE}.metrics.custom_distribution.geckoview_per_document_site_origins.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Geckoview Per Document Site Origins"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__geckoview_per_document_site_origins__values {
    sql: ${TABLE}.metrics.custom_distribution.geckoview_per_document_site_origins.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__geolocation_accuracy__count {
    sql: ${TABLE}.metrics.custom_distribution.geolocation_accuracy.count ;;
    type: number
    group_label: "Metrics Custom Distribution Geolocation Accuracy"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__geolocation_accuracy__sum {
    sql: ${TABLE}.metrics.custom_distribution.geolocation_accuracy.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Geolocation Accuracy"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__geolocation_accuracy__values {
    sql: ${TABLE}.metrics.custom_distribution.geolocation_accuracy.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__gfx_checkerboard_peak_pixel_count__count {
    sql: ${TABLE}.metrics.custom_distribution.gfx_checkerboard_peak_pixel_count.count ;;
    type: number
    group_label: "Metrics Custom Distribution Gfx Checkerboard Peak Pixel Count"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__gfx_checkerboard_peak_pixel_count__sum {
    sql: ${TABLE}.metrics.custom_distribution.gfx_checkerboard_peak_pixel_count.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Gfx Checkerboard Peak Pixel Count"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__gfx_checkerboard_peak_pixel_count__values {
    sql: ${TABLE}.metrics.custom_distribution.gfx_checkerboard_peak_pixel_count.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__gfx_checkerboard_severity__count {
    sql: ${TABLE}.metrics.custom_distribution.gfx_checkerboard_severity.count ;;
    type: number
    group_label: "Metrics Custom Distribution Gfx Checkerboard Severity"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__gfx_checkerboard_severity__sum {
    sql: ${TABLE}.metrics.custom_distribution.gfx_checkerboard_severity.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Gfx Checkerboard Severity"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__gfx_checkerboard_severity__values {
    sql: ${TABLE}.metrics.custom_distribution.gfx_checkerboard_severity.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__gfx_content_frame_time_from_paint__count {
    sql: ${TABLE}.metrics.custom_distribution.gfx_content_frame_time_from_paint.count ;;
    type: number
    group_label: "Metrics Custom Distribution Gfx Content Frame Time From Paint"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__gfx_content_frame_time_from_paint__sum {
    sql: ${TABLE}.metrics.custom_distribution.gfx_content_frame_time_from_paint.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Gfx Content Frame Time From Paint"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__gfx_content_frame_time_from_paint__values {
    sql: ${TABLE}.metrics.custom_distribution.gfx_content_frame_time_from_paint.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__gfx_content_frame_time_from_vsync__count {
    sql: ${TABLE}.metrics.custom_distribution.gfx_content_frame_time_from_vsync.count ;;
    type: number
    group_label: "Metrics Custom Distribution Gfx Content Frame Time From Vsync"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__gfx_content_frame_time_from_vsync__sum {
    sql: ${TABLE}.metrics.custom_distribution.gfx_content_frame_time_from_vsync.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Gfx Content Frame Time From Vsync"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__gfx_content_frame_time_from_vsync__values {
    sql: ${TABLE}.metrics.custom_distribution.gfx_content_frame_time_from_vsync.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__gfx_content_frame_time_with_svg__count {
    sql: ${TABLE}.metrics.custom_distribution.gfx_content_frame_time_with_svg.count ;;
    type: number
    group_label: "Metrics Custom Distribution Gfx Content Frame Time With Svg"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__gfx_content_frame_time_with_svg__sum {
    sql: ${TABLE}.metrics.custom_distribution.gfx_content_frame_time_with_svg.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Gfx Content Frame Time With Svg"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__gfx_content_frame_time_with_svg__values {
    sql: ${TABLE}.metrics.custom_distribution.gfx_content_frame_time_with_svg.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__gfx_content_frame_time_without_resource_upload__count {
    sql: ${TABLE}.metrics.custom_distribution.gfx_content_frame_time_without_resource_upload.count ;;
    type: number
    group_label: "Metrics Custom Distribution Gfx Content Frame Time Without Resource Upload"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__gfx_content_frame_time_without_resource_upload__sum {
    sql: ${TABLE}.metrics.custom_distribution.gfx_content_frame_time_without_resource_upload.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Gfx Content Frame Time Without Resource Upload"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__gfx_content_frame_time_without_resource_upload__values {
    sql: ${TABLE}.metrics.custom_distribution.gfx_content_frame_time_without_resource_upload.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__gfx_content_frame_time_without_upload__count {
    sql: ${TABLE}.metrics.custom_distribution.gfx_content_frame_time_without_upload.count ;;
    type: number
    group_label: "Metrics Custom Distribution Gfx Content Frame Time Without Upload"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__gfx_content_frame_time_without_upload__sum {
    sql: ${TABLE}.metrics.custom_distribution.gfx_content_frame_time_without_upload.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Gfx Content Frame Time Without Upload"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__gfx_content_frame_time_without_upload__values {
    sql: ${TABLE}.metrics.custom_distribution.gfx_content_frame_time_without_upload.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__network_tls_early_data_bytes_written__count {
    sql: ${TABLE}.metrics.custom_distribution.network_tls_early_data_bytes_written.count ;;
    type: number
    group_label: "Metrics Custom Distribution Network Tls Early Data Bytes Written"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__network_tls_early_data_bytes_written__sum {
    sql: ${TABLE}.metrics.custom_distribution.network_tls_early_data_bytes_written.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Network Tls Early Data Bytes Written"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__network_tls_early_data_bytes_written__values {
    sql: ${TABLE}.metrics.custom_distribution.network_tls_early_data_bytes_written.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__networking_cookie_access_fixup_diff__count {
    sql: ${TABLE}.metrics.custom_distribution.networking_cookie_access_fixup_diff.count ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Cookie Access Fixup Diff"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__networking_cookie_access_fixup_diff__sum {
    sql: ${TABLE}.metrics.custom_distribution.networking_cookie_access_fixup_diff.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Cookie Access Fixup Diff"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__networking_cookie_access_fixup_diff__values {
    sql: ${TABLE}.metrics.custom_distribution.networking_cookie_access_fixup_diff.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__networking_cookie_chips_partition_limit_overflow__count {
    sql: ${TABLE}.metrics.custom_distribution.networking_cookie_chips_partition_limit_overflow.count ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Cookie Chips Partition Limit Overflow"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__networking_cookie_chips_partition_limit_overflow__sum {
    sql: ${TABLE}.metrics.custom_distribution.networking_cookie_chips_partition_limit_overflow.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Cookie Chips Partition Limit Overflow"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__networking_cookie_chips_partition_limit_overflow__values {
    sql: ${TABLE}.metrics.custom_distribution.networking_cookie_chips_partition_limit_overflow.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__networking_cookie_count_part_by_key__count {
    sql: ${TABLE}.metrics.custom_distribution.networking_cookie_count_part_by_key.count ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Cookie Count Part By Key"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__networking_cookie_count_part_by_key__sum {
    sql: ${TABLE}.metrics.custom_distribution.networking_cookie_count_part_by_key.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Cookie Count Part By Key"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__networking_cookie_count_part_by_key__values {
    sql: ${TABLE}.metrics.custom_distribution.networking_cookie_count_part_by_key.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__networking_cookie_count_partitioned__count {
    sql: ${TABLE}.metrics.custom_distribution.networking_cookie_count_partitioned.count ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Cookie Count Partitioned"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__networking_cookie_count_partitioned__sum {
    sql: ${TABLE}.metrics.custom_distribution.networking_cookie_count_partitioned.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Cookie Count Partitioned"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__networking_cookie_count_partitioned__values {
    sql: ${TABLE}.metrics.custom_distribution.networking_cookie_count_partitioned.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__networking_cookie_count_total__count {
    sql: ${TABLE}.metrics.custom_distribution.networking_cookie_count_total.count ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Cookie Count Total"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__networking_cookie_count_total__sum {
    sql: ${TABLE}.metrics.custom_distribution.networking_cookie_count_total.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Cookie Count Total"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__networking_cookie_count_total__values {
    sql: ${TABLE}.metrics.custom_distribution.networking_cookie_count_total.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__networking_cookie_count_unpart_by_key__count {
    sql: ${TABLE}.metrics.custom_distribution.networking_cookie_count_unpart_by_key.count ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Cookie Count Unpart By Key"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__networking_cookie_count_unpart_by_key__sum {
    sql: ${TABLE}.metrics.custom_distribution.networking_cookie_count_unpart_by_key.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Cookie Count Unpart By Key"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__networking_cookie_count_unpart_by_key__values {
    sql: ${TABLE}.metrics.custom_distribution.networking_cookie_count_unpart_by_key.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__networking_cookie_count_unpartitioned__count {
    sql: ${TABLE}.metrics.custom_distribution.networking_cookie_count_unpartitioned.count ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Cookie Count Unpartitioned"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__networking_cookie_count_unpartitioned__sum {
    sql: ${TABLE}.metrics.custom_distribution.networking_cookie_count_unpartitioned.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Cookie Count Unpartitioned"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__networking_cookie_count_unpartitioned__values {
    sql: ${TABLE}.metrics.custom_distribution.networking_cookie_count_unpartitioned.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__networking_cookie_creation_fixup_diff__count {
    sql: ${TABLE}.metrics.custom_distribution.networking_cookie_creation_fixup_diff.count ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Cookie Creation Fixup Diff"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__networking_cookie_creation_fixup_diff__sum {
    sql: ${TABLE}.metrics.custom_distribution.networking_cookie_creation_fixup_diff.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Cookie Creation Fixup Diff"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__networking_cookie_creation_fixup_diff__values {
    sql: ${TABLE}.metrics.custom_distribution.networking_cookie_creation_fixup_diff.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__networking_cookie_purge_entry_max__count {
    sql: ${TABLE}.metrics.custom_distribution.networking_cookie_purge_entry_max.count ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Cookie Purge Entry Max"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__networking_cookie_purge_entry_max__sum {
    sql: ${TABLE}.metrics.custom_distribution.networking_cookie_purge_entry_max.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Cookie Purge Entry Max"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__networking_cookie_purge_entry_max__values {
    sql: ${TABLE}.metrics.custom_distribution.networking_cookie_purge_entry_max.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__networking_cookie_purge_max__count {
    sql: ${TABLE}.metrics.custom_distribution.networking_cookie_purge_max.count ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Cookie Purge Max"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__networking_cookie_purge_max__sum {
    sql: ${TABLE}.metrics.custom_distribution.networking_cookie_purge_max.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Cookie Purge Max"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__networking_cookie_purge_max__values {
    sql: ${TABLE}.metrics.custom_distribution.networking_cookie_purge_max.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__networking_http_1_download_throughput__count {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_1_download_throughput.count ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 1 Download Throughput"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__networking_http_1_download_throughput__sum {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_1_download_throughput.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 1 Download Throughput"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__networking_http_1_download_throughput__values {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_1_download_throughput.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__networking_http_1_upload_throughput__count {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_1_upload_throughput.count ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 1 Upload Throughput"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__networking_http_1_upload_throughput__sum {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_1_upload_throughput.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 1 Upload Throughput"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__networking_http_1_upload_throughput__values {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_1_upload_throughput.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__networking_http_1_upload_throughput_100__count {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_1_upload_throughput_100.count ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 1 Upload Throughput 100"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__networking_http_1_upload_throughput_100__sum {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_1_upload_throughput_100.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 1 Upload Throughput 100"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__networking_http_1_upload_throughput_100__values {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_1_upload_throughput_100.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__networking_http_1_upload_throughput_10_50__count {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_1_upload_throughput_10_50.count ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 1 Upload Throughput 10 50"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__networking_http_1_upload_throughput_10_50__sum {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_1_upload_throughput_10_50.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 1 Upload Throughput 10 50"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__networking_http_1_upload_throughput_10_50__values {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_1_upload_throughput_10_50.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__networking_http_1_upload_throughput_50_100__count {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_1_upload_throughput_50_100.count ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 1 Upload Throughput 50 100"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__networking_http_1_upload_throughput_50_100__sum {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_1_upload_throughput_50_100.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 1 Upload Throughput 50 100"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__networking_http_1_upload_throughput_50_100__values {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_1_upload_throughput_50_100.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__networking_http_2_download_throughput__count {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_2_download_throughput.count ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 2 Download Throughput"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__networking_http_2_download_throughput__sum {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_2_download_throughput.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 2 Download Throughput"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__networking_http_2_download_throughput__values {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_2_download_throughput.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__networking_http_2_upload_throughput__count {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_2_upload_throughput.count ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 2 Upload Throughput"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__networking_http_2_upload_throughput__sum {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_2_upload_throughput.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 2 Upload Throughput"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__networking_http_2_upload_throughput__values {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_2_upload_throughput.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__networking_http_2_upload_throughput_100__count {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_2_upload_throughput_100.count ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 2 Upload Throughput 100"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__networking_http_2_upload_throughput_100__sum {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_2_upload_throughput_100.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 2 Upload Throughput 100"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__networking_http_2_upload_throughput_100__values {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_2_upload_throughput_100.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__networking_http_2_upload_throughput_10_50__count {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_2_upload_throughput_10_50.count ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 2 Upload Throughput 10 50"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__networking_http_2_upload_throughput_10_50__sum {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_2_upload_throughput_10_50.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 2 Upload Throughput 10 50"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__networking_http_2_upload_throughput_10_50__values {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_2_upload_throughput_10_50.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__networking_http_2_upload_throughput_50_100__count {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_2_upload_throughput_50_100.count ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 2 Upload Throughput 50 100"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__networking_http_2_upload_throughput_50_100__sum {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_2_upload_throughput_50_100.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 2 Upload Throughput 50 100"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__networking_http_2_upload_throughput_50_100__values {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_2_upload_throughput_50_100.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__networking_http_3_download_throughput__count {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_download_throughput.count ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 3 Download Throughput"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__networking_http_3_download_throughput__sum {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_download_throughput.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 3 Download Throughput"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__networking_http_3_download_throughput__values {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_download_throughput.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__networking_http_3_download_throughput_100__count {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_download_throughput_100.count ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 3 Download Throughput 100"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__networking_http_3_download_throughput_100__sum {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_download_throughput_100.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 3 Download Throughput 100"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__networking_http_3_download_throughput_100__values {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_download_throughput_100.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__networking_http_3_download_throughput_10_50__count {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_download_throughput_10_50.count ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 3 Download Throughput 10 50"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__networking_http_3_download_throughput_10_50__sum {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_download_throughput_10_50.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 3 Download Throughput 10 50"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__networking_http_3_download_throughput_10_50__values {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_download_throughput_10_50.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__networking_http_3_download_throughput_50_100__count {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_download_throughput_50_100.count ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 3 Download Throughput 50 100"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__networking_http_3_download_throughput_50_100__sum {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_download_throughput_50_100.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 3 Download Throughput 50 100"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__networking_http_3_download_throughput_50_100__values {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_download_throughput_50_100.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__networking_http_3_ecn_ce_ect0_ratio_received__count {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_ecn_ce_ect0_ratio_received.count ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 3 Ecn Ce Ect0 Ratio Received"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__networking_http_3_ecn_ce_ect0_ratio_received__sum {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_ecn_ce_ect0_ratio_received.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 3 Ecn Ce Ect0 Ratio Received"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__networking_http_3_ecn_ce_ect0_ratio_received__values {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_ecn_ce_ect0_ratio_received.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__networking_http_3_ecn_ce_ect0_ratio_sent__count {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_ecn_ce_ect0_ratio_sent.count ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 3 Ecn Ce Ect0 Ratio Sent"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__networking_http_3_ecn_ce_ect0_ratio_sent__sum {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_ecn_ce_ect0_ratio_sent.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 3 Ecn Ce Ect0 Ratio Sent"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__networking_http_3_ecn_ce_ect0_ratio_sent__values {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_ecn_ce_ect0_ratio_sent.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__networking_http_3_loss_ratio__count {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_loss_ratio.count ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 3 Loss Ratio"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__networking_http_3_loss_ratio__sum {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_loss_ratio.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 3 Loss Ratio"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__networking_http_3_loss_ratio__values {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_loss_ratio.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__networking_http_3_udp_datagram_segments_received__count {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_udp_datagram_segments_received.count ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 3 Udp Datagram Segments Received"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__networking_http_3_udp_datagram_segments_received__sum {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_udp_datagram_segments_received.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 3 Udp Datagram Segments Received"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__networking_http_3_udp_datagram_segments_received__values {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_udp_datagram_segments_received.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__networking_http_3_upload_throughput__count {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_upload_throughput.count ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 3 Upload Throughput"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__networking_http_3_upload_throughput__sum {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_upload_throughput.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 3 Upload Throughput"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__networking_http_3_upload_throughput__values {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_upload_throughput.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__networking_http_3_upload_throughput_100__count {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_upload_throughput_100.count ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 3 Upload Throughput 100"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__networking_http_3_upload_throughput_100__sum {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_upload_throughput_100.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 3 Upload Throughput 100"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__networking_http_3_upload_throughput_100__values {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_upload_throughput_100.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__networking_http_3_upload_throughput_10_50__count {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_upload_throughput_10_50.count ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 3 Upload Throughput 10 50"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__networking_http_3_upload_throughput_10_50__sum {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_upload_throughput_10_50.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 3 Upload Throughput 10 50"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__networking_http_3_upload_throughput_10_50__values {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_upload_throughput_10_50.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__networking_http_3_upload_throughput_50_100__count {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_upload_throughput_50_100.count ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 3 Upload Throughput 50 100"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__networking_http_3_upload_throughput_50_100__sum {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_upload_throughput_50_100.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Networking Http 3 Upload Throughput 50 100"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__networking_http_3_upload_throughput_50_100__values {
    sql: ${TABLE}.metrics.custom_distribution.networking_http_3_upload_throughput_50_100.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__pdfjs_editing_highlight_thickness__count {
    sql: ${TABLE}.metrics.custom_distribution.pdfjs_editing_highlight_thickness.count ;;
    type: number
    group_label: "Metrics Custom Distribution Pdfjs Editing Highlight Thickness"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__pdfjs_editing_highlight_thickness__sum {
    sql: ${TABLE}.metrics.custom_distribution.pdfjs_editing_highlight_thickness.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Pdfjs Editing Highlight Thickness"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__pdfjs_editing_highlight_thickness__values {
    sql: ${TABLE}.metrics.custom_distribution.pdfjs_editing_highlight_thickness.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__pdfjs_time_to_view__count {
    sql: ${TABLE}.metrics.custom_distribution.pdfjs_time_to_view.count ;;
    type: number
    group_label: "Metrics Custom Distribution Pdfjs Time To View"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__pdfjs_time_to_view__sum {
    sql: ${TABLE}.metrics.custom_distribution.pdfjs_time_to_view.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Pdfjs Time To View"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__pdfjs_time_to_view__values {
    sql: ${TABLE}.metrics.custom_distribution.pdfjs_time_to_view.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__performance_clone_deserialize_items__count {
    sql: ${TABLE}.metrics.custom_distribution.performance_clone_deserialize_items.count ;;
    type: number
    group_label: "Metrics Custom Distribution Performance Clone Deserialize Items"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__performance_clone_deserialize_items__sum {
    sql: ${TABLE}.metrics.custom_distribution.performance_clone_deserialize_items.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Performance Clone Deserialize Items"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__performance_clone_deserialize_items__values {
    sql: ${TABLE}.metrics.custom_distribution.performance_clone_deserialize_items.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__power_battery_percentage_when_user_active__count {
    sql: ${TABLE}.metrics.custom_distribution.power_battery_percentage_when_user_active.count ;;
    type: number
    group_label: "Metrics Custom Distribution Power Battery Percentage When User Active"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__power_battery_percentage_when_user_active__sum {
    sql: ${TABLE}.metrics.custom_distribution.power_battery_percentage_when_user_active.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Power Battery Percentage When User Active"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__power_battery_percentage_when_user_active__values {
    sql: ${TABLE}.metrics.custom_distribution.power_battery_percentage_when_user_active.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__tab_count_app_backgrounded__count {
    sql: ${TABLE}.metrics.custom_distribution.tab_count_app_backgrounded.count ;;
    type: number
    group_label: "Metrics Custom Distribution Tab Count App Backgrounded"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__tab_count_app_backgrounded__sum {
    sql: ${TABLE}.metrics.custom_distribution.tab_count_app_backgrounded.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Tab Count App Backgrounded"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__tab_count_app_backgrounded__values {
    sql: ${TABLE}.metrics.custom_distribution.tab_count_app_backgrounded.values ;;
    hidden: yes
  }

  dimension: metrics__custom_distribution__timer_thread_timers_fired_per_wakeup__count {
    sql: ${TABLE}.metrics.custom_distribution.timer_thread_timers_fired_per_wakeup.count ;;
    type: number
    group_label: "Metrics Custom Distribution Timer Thread Timers Fired Per Wakeup"
    group_item_label: "Count"
  }

  dimension: metrics__custom_distribution__timer_thread_timers_fired_per_wakeup__sum {
    sql: ${TABLE}.metrics.custom_distribution.timer_thread_timers_fired_per_wakeup.sum ;;
    type: number
    group_label: "Metrics Custom Distribution Timer Thread Timers Fired Per Wakeup"
    group_item_label: "Sum"
  }

  dimension: metrics__custom_distribution__timer_thread_timers_fired_per_wakeup__values {
    sql: ${TABLE}.metrics.custom_distribution.timer_thread_timers_fired_per_wakeup.values ;;
    hidden: yes
  }

  dimension: metrics__datetime__raw_blocklist_last_modified_rs_addons_mblf {
    sql: ${TABLE}.metrics.datetime.raw_blocklist_last_modified_rs_addons_mblf ;;
    type: string
    group_label: "Metrics Datetime"
    group_item_label: "Raw Blocklist Last Modified Rs Addons Mblf"
  }

  dimension: metrics__datetime__raw_blocklist_mlbf_generation_time {
    sql: ${TABLE}.metrics.datetime.raw_blocklist_mlbf_generation_time ;;
    type: string
    group_label: "Metrics Datetime"
    group_item_label: "Raw Blocklist Mlbf Generation Time"
  }

  dimension: metrics__datetime__raw_blocklist_mlbf_softblocks_generation_time {
    sql: ${TABLE}.metrics.datetime.raw_blocklist_mlbf_softblocks_generation_time ;;
    type: string
    group_label: "Metrics Datetime"
    group_item_label: "Raw Blocklist Mlbf Softblocks Generation Time"
  }

  dimension: metrics__datetime__raw_blocklist_mlbf_stash_time_newest {
    sql: ${TABLE}.metrics.datetime.raw_blocklist_mlbf_stash_time_newest ;;
    type: string
    group_label: "Metrics Datetime"
    group_item_label: "Raw Blocklist Mlbf Stash Time Newest"
  }

  dimension: metrics__datetime__raw_blocklist_mlbf_stash_time_oldest {
    sql: ${TABLE}.metrics.datetime.raw_blocklist_mlbf_stash_time_oldest ;;
    type: string
    group_label: "Metrics Datetime"
    group_item_label: "Raw Blocklist Mlbf Stash Time Oldest"
  }

  dimension: metrics__datetime__raw_glean_validation_first_run_hour {
    sql: ${TABLE}.metrics.datetime.raw_glean_validation_first_run_hour ;;
    type: string
    group_label: "Metrics Datetime"
    group_item_label: "Raw Glean Validation First Run Hour"
  }

  dimension: metrics__labeled_boolean__a11y_theme {
    sql: ${TABLE}.metrics.labeled_boolean.a11y_theme ;;
    hidden: yes
  }

  dimension: metrics__labeled_boolean__cookie_banners_normal_window_service_mode {
    sql: ${TABLE}.metrics.labeled_boolean.cookie_banners_normal_window_service_mode ;;
    hidden: yes
  }

  dimension: metrics__labeled_boolean__cookie_banners_private_window_service_mode {
    sql: ${TABLE}.metrics.labeled_boolean.cookie_banners_private_window_service_mode ;;
    hidden: yes
  }

  dimension: metrics__labeled_boolean__data_storage_migration {
    sql: ${TABLE}.metrics.labeled_boolean.data_storage_migration ;;
    hidden: yes
  }

  dimension: metrics__labeled_boolean__geolocation_linux_provider {
    sql: ${TABLE}.metrics.labeled_boolean.geolocation_linux_provider ;;
    hidden: yes
  }

  dimension: metrics__labeled_boolean__media_playback_device_hardware_decoder_support {
    sql: ${TABLE}.metrics.labeled_boolean.media_playback_device_hardware_decoder_support ;;
    hidden: yes
  }

  dimension: metrics__labeled_boolean__media_video_hardware_decoding_support {
    sql: ${TABLE}.metrics.labeled_boolean.media_video_hardware_decoding_support ;;
    hidden: yes
  }

  dimension: metrics__labeled_boolean__media_video_hd_hardware_decoding_support {
    sql: ${TABLE}.metrics.labeled_boolean.media_video_hd_hardware_decoding_support ;;
    hidden: yes
  }

  dimension: metrics__labeled_boolean__oskeystore_self_test {
    sql: ${TABLE}.metrics.labeled_boolean.oskeystore_self_test ;;
    hidden: yes
  }

  dimension: metrics__labeled_boolean__pdfjs_image_alt_text_edit {
    sql: ${TABLE}.metrics.labeled_boolean.pdfjs_image_alt_text_edit ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__avif_a1lx {
    sql: ${TABLE}.metrics.labeled_counter.avif_a1lx ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__avif_a1op {
    sql: ${TABLE}.metrics.labeled_counter.avif_a1op ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__avif_alpha {
    sql: ${TABLE}.metrics.labeled_counter.avif_alpha ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__avif_aom_decode_error {
    sql: ${TABLE}.metrics.labeled_counter.avif_aom_decode_error ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__avif_bit_depth {
    sql: ${TABLE}.metrics.labeled_counter.avif_bit_depth ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__avif_cicp_cp {
    sql: ${TABLE}.metrics.labeled_counter.avif_cicp_cp ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__avif_cicp_mc {
    sql: ${TABLE}.metrics.labeled_counter.avif_cicp_mc ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__avif_cicp_tc {
    sql: ${TABLE}.metrics.labeled_counter.avif_cicp_tc ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__avif_clap {
    sql: ${TABLE}.metrics.labeled_counter.avif_clap ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__avif_colr {
    sql: ${TABLE}.metrics.labeled_counter.avif_colr ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__avif_decode_result {
    sql: ${TABLE}.metrics.labeled_counter.avif_decode_result ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__avif_decoder {
    sql: ${TABLE}.metrics.labeled_counter.avif_decoder ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__avif_grid {
    sql: ${TABLE}.metrics.labeled_counter.avif_grid ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__avif_ipro {
    sql: ${TABLE}.metrics.labeled_counter.avif_ipro ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__avif_ispe {
    sql: ${TABLE}.metrics.labeled_counter.avif_ispe ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__avif_lsel {
    sql: ${TABLE}.metrics.labeled_counter.avif_lsel ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__avif_pasp {
    sql: ${TABLE}.metrics.labeled_counter.avif_pasp ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__avif_pixi {
    sql: ${TABLE}.metrics.labeled_counter.avif_pixi ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__avif_yuv_color_space {
    sql: ${TABLE}.metrics.labeled_counter.avif_yuv_color_space ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__bounce_tracking_protection_purge_count {
    sql: ${TABLE}.metrics.labeled_counter.bounce_tracking_protection_purge_count ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__browser_search_ad_clicks {
    sql: ${TABLE}.metrics.labeled_counter.browser_search_ad_clicks ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__browser_search_in_content {
    sql: ${TABLE}.metrics.labeled_counter.browser_search_in_content ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__browser_search_search_count {
    sql: ${TABLE}.metrics.labeled_counter.browser_search_search_count ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__browser_search_with_ads {
    sql: ${TABLE}.metrics.labeled_counter.browser_search_with_ads ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__cert_compression_failures {
    sql: ${TABLE}.metrics.labeled_counter.cert_compression_failures ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__cert_compression_used {
    sql: ${TABLE}.metrics.labeled_counter.cert_compression_used ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__cert_verifier_cert_revocation_mechanisms {
    sql: ${TABLE}.metrics.labeled_counter.cert_verifier_cert_revocation_mechanisms ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__cert_verifier_crlite_status {
    sql: ${TABLE}.metrics.labeled_counter.cert_verifier_crlite_status ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__cert_verifier_crlite_vs_ocsp_result {
    sql: ${TABLE}.metrics.labeled_counter.cert_verifier_crlite_vs_ocsp_result ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__codec_stats_audio_preferred_codec {
    sql: ${TABLE}.metrics.labeled_counter.codec_stats_audio_preferred_codec ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__codec_stats_other_fec_signaled {
    sql: ${TABLE}.metrics.labeled_counter.codec_stats_other_fec_signaled ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__codec_stats_ulpfec_negotiated {
    sql: ${TABLE}.metrics.labeled_counter.codec_stats_ulpfec_negotiated ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__codec_stats_video_preferred_codec {
    sql: ${TABLE}.metrics.labeled_counter.codec_stats_video_preferred_codec ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__cookie_banners_click_result {
    sql: ${TABLE}.metrics.labeled_counter.cookie_banners_click_result ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__cookie_banners_cmp_detected_cmp {
    sql: ${TABLE}.metrics.labeled_counter.cookie_banners_cmp_detected_cmp ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__cookie_banners_cmp_result {
    sql: ${TABLE}.metrics.labeled_counter.cookie_banners_cmp_result ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__cookie_banners_rule_lookup_by_domain {
    sql: ${TABLE}.metrics.labeled_counter.cookie_banners_rule_lookup_by_domain ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__cookie_banners_rule_lookup_by_load {
    sql: ${TABLE}.metrics.labeled_counter.cookie_banners_rule_lookup_by_load ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__crash_metrics_crash_count {
    sql: ${TABLE}.metrics.labeled_counter.crash_metrics_crash_count ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__data_storage_entries {
    sql: ${TABLE}.metrics.labeled_counter.data_storage_entries ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__dom_parentprocess_process_launch_errors {
    sql: ${TABLE}.metrics.labeled_counter.dom_parentprocess_process_launch_errors ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__dotprint_failure {
    sql: ${TABLE}.metrics.labeled_counter.dotprint_failure ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__extensions_apis_dnr_startup_cache_entries {
    sql: ${TABLE}.metrics.labeled_counter.extensions_apis_dnr_startup_cache_entries ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__extensions_counters_browser_action_preload_result {
    sql: ${TABLE}.metrics.labeled_counter.extensions_counters_browser_action_preload_result ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__extensions_counters_event_page_idle_result {
    sql: ${TABLE}.metrics.labeled_counter.extensions_counters_event_page_idle_result ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__extensions_process_event {
    sql: ${TABLE}.metrics.labeled_counter.extensions_process_event ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__extensions_startup_cache_read_errors {
    sql: ${TABLE}.metrics.labeled_counter.extensions_startup_cache_read_errors ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__fog_validation_gvsv_audio_stream_init {
    sql: ${TABLE}.metrics.labeled_counter.fog_validation_gvsv_audio_stream_init ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__fog_validation_gvsv_audio_stream_init_gecko {
    sql: ${TABLE}.metrics.labeled_counter.fog_validation_gvsv_audio_stream_init_gecko ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__formautofill_form_submission_heuristic {
    sql: ${TABLE}.metrics.labeled_counter.formautofill_form_submission_heuristic ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__geolocation_fallback {
    sql: ${TABLE}.metrics.labeled_counter.geolocation_fallback ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__geolocation_request_result {
    sql: ${TABLE}.metrics.labeled_counter.geolocation_request_result ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__gfx_content_frame_time_reason {
    sql: ${TABLE}.metrics.labeled_counter.gfx_content_frame_time_reason ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__glean_error_invalid_label {
    sql: ${TABLE}.metrics.labeled_counter.glean_error_invalid_label ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__glean_error_invalid_overflow {
    sql: ${TABLE}.metrics.labeled_counter.glean_error_invalid_overflow ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__glean_error_invalid_state {
    sql: ${TABLE}.metrics.labeled_counter.glean_error_invalid_state ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__glean_error_invalid_value {
    sql: ${TABLE}.metrics.labeled_counter.glean_error_invalid_value ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__glean_upload_ping_upload_failure {
    sql: ${TABLE}.metrics.labeled_counter.glean_upload_ping_upload_failure ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__glean_validation_pings_submitted {
    sql: ${TABLE}.metrics.labeled_counter.glean_validation_pings_submitted ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__gmp_update_xml_fetch_result {
    sql: ${TABLE}.metrics.labeled_counter.gmp_update_xml_fetch_result ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__gpu_process_crash_fallbacks {
    sql: ${TABLE}.metrics.labeled_counter.gpu_process_crash_fallbacks ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__ipc_received_messages_content_background {
    sql: ${TABLE}.metrics.labeled_counter.ipc_received_messages_content_background ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__ipc_received_messages_content_foreground {
    sql: ${TABLE}.metrics.labeled_counter.ipc_received_messages_content_foreground ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__ipc_received_messages_gpu_process {
    sql: ${TABLE}.metrics.labeled_counter.ipc_received_messages_gpu_process ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__ipc_received_messages_parent_active {
    sql: ${TABLE}.metrics.labeled_counter.ipc_received_messages_parent_active ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__ipc_received_messages_parent_inactive {
    sql: ${TABLE}.metrics.labeled_counter.ipc_received_messages_parent_inactive ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__ipc_sent_messages_content_background {
    sql: ${TABLE}.metrics.labeled_counter.ipc_sent_messages_content_background ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__ipc_sent_messages_content_foreground {
    sql: ${TABLE}.metrics.labeled_counter.ipc_sent_messages_content_foreground ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__ipc_sent_messages_gpu_process {
    sql: ${TABLE}.metrics.labeled_counter.ipc_sent_messages_gpu_process ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__ipc_sent_messages_parent_active {
    sql: ${TABLE}.metrics.labeled_counter.ipc_sent_messages_parent_active ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__ipc_sent_messages_parent_inactive {
    sql: ${TABLE}.metrics.labeled_counter.ipc_sent_messages_parent_inactive ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__media_audio_backend {
    sql: ${TABLE}.metrics.labeled_counter.media_audio_backend ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__media_audio_init_failure {
    sql: ${TABLE}.metrics.labeled_counter.media_audio_init_failure ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__media_decode_error_per_mime_type {
    sql: ${TABLE}.metrics.labeled_counter.media_decode_error_per_mime_type ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__media_playback_not_supported_video_per_mime_type {
    sql: ${TABLE}.metrics.labeled_counter.media_playback_not_supported_video_per_mime_type ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__netwerk_early_hints {
    sql: ${TABLE}.metrics.labeled_counter.netwerk_early_hints ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__netwerk_eh_link_type {
    sql: ${TABLE}.metrics.labeled_counter.netwerk_eh_link_type ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__netwerk_eh_response_version {
    sql: ${TABLE}.metrics.labeled_counter.netwerk_eh_response_version ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__netwerk_http3_0rtt_state {
    sql: ${TABLE}.metrics.labeled_counter.netwerk_http3_0rtt_state ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__netwerk_http3_ech_outcome_grease {
    sql: ${TABLE}.metrics.labeled_counter.netwerk_http3_ech_outcome_grease ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__netwerk_http3_ech_outcome_none {
    sql: ${TABLE}.metrics.labeled_counter.netwerk_http3_ech_outcome_none ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__netwerk_http3_ech_outcome_real {
    sql: ${TABLE}.metrics.labeled_counter.netwerk_http3_ech_outcome_real ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__network_byte_range_request {
    sql: ${TABLE}.metrics.labeled_counter.network_byte_range_request ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__network_cors_authorization_header {
    sql: ${TABLE}.metrics.labeled_counter.network_cors_authorization_header ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__network_data_size_pb_per_type {
    sql: ${TABLE}.metrics.labeled_counter.network_data_size_pb_per_type ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__network_data_size_per_type {
    sql: ${TABLE}.metrics.labeled_counter.network_data_size_per_type ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__network_system_channel_addon_status {
    sql: ${TABLE}.metrics.labeled_counter.network_system_channel_addon_status ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__network_system_channel_addonversion_status {
    sql: ${TABLE}.metrics.labeled_counter.network_system_channel_addonversion_status ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__network_system_channel_other_status {
    sql: ${TABLE}.metrics.labeled_counter.network_system_channel_other_status ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__network_system_channel_remote_settings_status {
    sql: ${TABLE}.metrics.labeled_counter.network_system_channel_remote_settings_status ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__network_system_channel_success_or_failure {
    sql: ${TABLE}.metrics.labeled_counter.network_system_channel_success_or_failure ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__network_system_channel_telemetry_status {
    sql: ${TABLE}.metrics.labeled_counter.network_system_channel_telemetry_status ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__network_system_channel_update_status {
    sql: ${TABLE}.metrics.labeled_counter.network_system_channel_update_status ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__network_tls_early_data_accepted {
    sql: ${TABLE}.metrics.labeled_counter.network_tls_early_data_accepted ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__network_tls_early_data_negotiated {
    sql: ${TABLE}.metrics.labeled_counter.network_tls_early_data_negotiated ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__networking_cookie_timestamp_fixed_count {
    sql: ${TABLE}.metrics.labeled_counter.networking_cookie_timestamp_fixed_count ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__networking_data_transferred_v3_kb {
    sql: ${TABLE}.metrics.labeled_counter.networking_data_transferred_v3_kb ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__networking_dns_native_count {
    sql: ${TABLE}.metrics.labeled_counter.networking_dns_native_count ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__networking_fetch_keepalive_discard_count {
    sql: ${TABLE}.metrics.labeled_counter.networking_fetch_keepalive_discard_count ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__networking_fetch_keepalive_request_count {
    sql: ${TABLE}.metrics.labeled_counter.networking_fetch_keepalive_request_count ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__networking_http_3_ecn_path_capability {
    sql: ${TABLE}.metrics.labeled_counter.networking_http_3_ecn_path_capability ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__networking_http_channel_disposition {
    sql: ${TABLE}.metrics.labeled_counter.networking_http_channel_disposition ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__networking_http_channel_disposition_disabled_no_reason {
    sql: ${TABLE}.metrics.labeled_counter.networking_http_channel_disposition_disabled_no_reason ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__networking_http_channel_disposition_disabled_upgrade {
    sql: ${TABLE}.metrics.labeled_counter.networking_http_channel_disposition_disabled_upgrade ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__networking_http_channel_disposition_disabled_wont {
    sql: ${TABLE}.metrics.labeled_counter.networking_http_channel_disposition_disabled_wont ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__networking_http_channel_disposition_enabled_no_reason {
    sql: ${TABLE}.metrics.labeled_counter.networking_http_channel_disposition_enabled_no_reason ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__networking_http_channel_disposition_enabled_upgrade {
    sql: ${TABLE}.metrics.labeled_counter.networking_http_channel_disposition_enabled_upgrade ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__networking_http_channel_disposition_enabled_wont {
    sql: ${TABLE}.metrics.labeled_counter.networking_http_channel_disposition_enabled_wont ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__networking_http_channel_onstart_status {
    sql: ${TABLE}.metrics.labeled_counter.networking_http_channel_onstart_status ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__networking_http_channel_onstart_success_https_rr {
    sql: ${TABLE}.metrics.labeled_counter.networking_http_channel_onstart_success_https_rr ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__networking_http_ip_addr_any_count {
    sql: ${TABLE}.metrics.labeled_counter.networking_http_ip_addr_any_count ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__networking_http_redirect_to_scheme_subresource {
    sql: ${TABLE}.metrics.labeled_counter.networking_http_redirect_to_scheme_subresource ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__networking_http_redirect_to_scheme_top_level {
    sql: ${TABLE}.metrics.labeled_counter.networking_http_redirect_to_scheme_top_level ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__networking_http_response_status_code {
    sql: ${TABLE}.metrics.labeled_counter.networking_http_response_status_code ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__networking_http_response_version {
    sql: ${TABLE}.metrics.labeled_counter.networking_http_response_version ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__networking_http_to_https_upgrade_reason {
    sql: ${TABLE}.metrics.labeled_counter.networking_http_to_https_upgrade_reason ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__networking_https_rr_presented {
    sql: ${TABLE}.metrics.labeled_counter.networking_https_rr_presented ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__networking_https_upgrade_with_https_rr {
    sql: ${TABLE}.metrics.labeled_counter.networking_https_upgrade_with_https_rr ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__networking_proxy_info_type {
    sql: ${TABLE}.metrics.labeled_counter.networking_proxy_info_type ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__networking_residual_cache_folder_removal {
    sql: ${TABLE}.metrics.labeled_counter.networking_residual_cache_folder_removal ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__networking_speculative_connect_outcome {
    sql: ${TABLE}.metrics.labeled_counter.networking_speculative_connect_outcome ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__networking_speculative_connection_outcome {
    sql: ${TABLE}.metrics.labeled_counter.networking_speculative_connection_outcome ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__networking_trr_connection_cycle_count {
    sql: ${TABLE}.metrics.labeled_counter.networking_trr_connection_cycle_count ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__networking_trr_request_count {
    sql: ${TABLE}.metrics.labeled_counter.networking_trr_request_count ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__networking_trr_request_count_per_conn {
    sql: ${TABLE}.metrics.labeled_counter.networking_trr_request_count_per_conn ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__pdfjs_buttons {
    sql: ${TABLE}.metrics.labeled_counter.pdfjs_buttons ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__pdfjs_editing {
    sql: ${TABLE}.metrics.labeled_counter.pdfjs_editing ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__pdfjs_editing_highlight_color {
    sql: ${TABLE}.metrics.labeled_counter.pdfjs_editing_highlight_color ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__pdfjs_editing_highlight_kind {
    sql: ${TABLE}.metrics.labeled_counter.pdfjs_editing_highlight_kind ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__pdfjs_editing_highlight_method {
    sql: ${TABLE}.metrics.labeled_counter.pdfjs_editing_highlight_method ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__pdfjs_editing_highlight_number_of_colors {
    sql: ${TABLE}.metrics.labeled_counter.pdfjs_editing_highlight_number_of_colors ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__pdfjs_geckoview {
    sql: ${TABLE}.metrics.labeled_counter.pdfjs_geckoview ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__pdfjs_image_added {
    sql: ${TABLE}.metrics.labeled_counter.pdfjs_image_added ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__pdfjs_stamp {
    sql: ${TABLE}.metrics.labeled_counter.pdfjs_stamp ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__perf_startup_startup_type {
    sql: ${TABLE}.metrics.labeled_counter.perf_startup_startup_type ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__power_cpu_ms_per_thread_content_background {
    sql: ${TABLE}.metrics.labeled_counter.power_cpu_ms_per_thread_content_background ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__power_cpu_ms_per_thread_content_foreground {
    sql: ${TABLE}.metrics.labeled_counter.power_cpu_ms_per_thread_content_foreground ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__power_cpu_ms_per_thread_gpu_process {
    sql: ${TABLE}.metrics.labeled_counter.power_cpu_ms_per_thread_gpu_process ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__power_cpu_ms_per_thread_parent_active {
    sql: ${TABLE}.metrics.labeled_counter.power_cpu_ms_per_thread_parent_active ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__power_cpu_ms_per_thread_parent_inactive {
    sql: ${TABLE}.metrics.labeled_counter.power_cpu_ms_per_thread_parent_inactive ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__power_cpu_time_per_process_type_ms {
    sql: ${TABLE}.metrics.labeled_counter.power_cpu_time_per_process_type_ms ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__power_cpu_time_per_tracker_type_ms {
    sql: ${TABLE}.metrics.labeled_counter.power_cpu_time_per_tracker_type_ms ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__power_energy_per_process_type {
    sql: ${TABLE}.metrics.labeled_counter.power_energy_per_process_type ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__power_gpu_time_per_process_type_ms {
    sql: ${TABLE}.metrics.labeled_counter.power_gpu_time_per_process_type_ms ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__power_wakeups_per_process_type {
    sql: ${TABLE}.metrics.labeled_counter.power_wakeups_per_process_type ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__power_wakeups_per_thread_content_background {
    sql: ${TABLE}.metrics.labeled_counter.power_wakeups_per_thread_content_background ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__power_wakeups_per_thread_content_foreground {
    sql: ${TABLE}.metrics.labeled_counter.power_wakeups_per_thread_content_foreground ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__power_wakeups_per_thread_gpu_process {
    sql: ${TABLE}.metrics.labeled_counter.power_wakeups_per_thread_gpu_process ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__power_wakeups_per_thread_parent_active {
    sql: ${TABLE}.metrics.labeled_counter.power_wakeups_per_thread_parent_active ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__power_wakeups_per_thread_parent_inactive {
    sql: ${TABLE}.metrics.labeled_counter.power_wakeups_per_thread_parent_inactive ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__printing_error {
    sql: ${TABLE}.metrics.labeled_counter.printing_error ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__printing_settings_changed {
    sql: ${TABLE}.metrics.labeled_counter.printing_settings_changed ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__printing_target_type {
    sql: ${TABLE}.metrics.labeled_counter.printing_target_type ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__pwmgr_form_autofill_result {
    sql: ${TABLE}.metrics.labeled_counter.pwmgr_form_autofill_result ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__rtcrtpsender_setparameters_blame_length_changed {
    sql: ${TABLE}.metrics.labeled_counter.rtcrtpsender_setparameters_blame_length_changed ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__rtcrtpsender_setparameters_blame_no_getparameters {
    sql: ${TABLE}.metrics.labeled_counter.rtcrtpsender_setparameters_blame_no_getparameters ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__rtcrtpsender_setparameters_blame_no_transactionid {
    sql: ${TABLE}.metrics.labeled_counter.rtcrtpsender_setparameters_blame_no_transactionid ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__rtcrtpsender_setparameters_blame_stale_transactionid {
    sql: ${TABLE}.metrics.labeled_counter.rtcrtpsender_setparameters_blame_stale_transactionid ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__security_client_auth_cert_usage {
    sql: ${TABLE}.metrics.labeled_counter.security_client_auth_cert_usage ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__shortcuts_shortcut_removed_counter {
    sql: ${TABLE}.metrics.labeled_counter.shortcuts_shortcut_removed_counter ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__tls_xyber_intolerance_reason {
    sql: ${TABLE}.metrics.labeled_counter.tls_xyber_intolerance_reason ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__translations_request_count {
    sql: ${TABLE}.metrics.labeled_counter.translations_request_count ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__web_notification_permission_origin {
    sql: ${TABLE}.metrics.labeled_counter.web_notification_permission_origin ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__web_notification_request_permission_origin {
    sql: ${TABLE}.metrics.labeled_counter.web_notification_request_permission_origin ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__web_notification_show_origin {
    sql: ${TABLE}.metrics.labeled_counter.web_notification_show_origin ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__webauthn_create_authenticator_attachment {
    sql: ${TABLE}.metrics.labeled_counter.webauthn_create_authenticator_attachment ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__webauthn_get_authenticator_attachment {
    sql: ${TABLE}.metrics.labeled_counter.webauthn_get_authenticator_attachment ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__webrtc_video_recv_codec_used {
    sql: ${TABLE}.metrics.labeled_counter.webrtc_video_recv_codec_used ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__webrtc_video_send_codec_used {
    sql: ${TABLE}.metrics.labeled_counter.webrtc_video_send_codec_used ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__webrtcdtls_cipher {
    sql: ${TABLE}.metrics.labeled_counter.webrtcdtls_cipher ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__webrtcdtls_client_handshake_result {
    sql: ${TABLE}.metrics.labeled_counter.webrtcdtls_client_handshake_result ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__webrtcdtls_protocol_version {
    sql: ${TABLE}.metrics.labeled_counter.webrtcdtls_protocol_version ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__webrtcdtls_server_handshake_result {
    sql: ${TABLE}.metrics.labeled_counter.webrtcdtls_server_handshake_result ;;
    hidden: yes
  }

  dimension: metrics__labeled_counter__webrtcdtls_srtp_cipher {
    sql: ${TABLE}.metrics.labeled_counter.webrtcdtls_srtp_cipher ;;
    hidden: yes
  }

  dimension: metrics__labeled_custom_distribution__networking_http_3_ecn_ce_ect0_ratio {
    sql: ${TABLE}.metrics.labeled_custom_distribution.networking_http_3_ecn_ce_ect0_ratio ;;
    hidden: yes
  }

  dimension: metrics__labeled_string__cookie_banners_google_gdpr_choice_cookie {
    sql: ${TABLE}.metrics.labeled_string.cookie_banners_google_gdpr_choice_cookie ;;
    hidden: yes
  }

  dimension: metrics__labeled_timing_distribution__netwerk_http3_0rtt_state_duration {
    sql: ${TABLE}.metrics.labeled_timing_distribution.netwerk_http3_0rtt_state_duration ;;
    hidden: yes
  }

  dimension: metrics__labeled_timing_distribution__network_http3_complete_load {
    sql: ${TABLE}.metrics.labeled_timing_distribution.network_http3_complete_load ;;
    hidden: yes
  }

  dimension: metrics__labeled_timing_distribution__network_http3_first_sent_to_last_received {
    sql: ${TABLE}.metrics.labeled_timing_distribution.network_http3_first_sent_to_last_received ;;
    hidden: yes
  }

  dimension: metrics__labeled_timing_distribution__network_http3_open_to_first_received {
    sql: ${TABLE}.metrics.labeled_timing_distribution.network_http3_open_to_first_received ;;
    hidden: yes
  }

  dimension: metrics__labeled_timing_distribution__network_http3_open_to_first_sent {
    sql: ${TABLE}.metrics.labeled_timing_distribution.network_http3_open_to_first_sent ;;
    hidden: yes
  }

  dimension: metrics__labeled_timing_distribution__network_http3_tls_handshake {
    sql: ${TABLE}.metrics.labeled_timing_distribution.network_http3_tls_handshake ;;
    hidden: yes
  }

  dimension: metrics__labeled_timing_distribution__network_sup_http3_tcp_connection {
    sql: ${TABLE}.metrics.labeled_timing_distribution.network_sup_http3_tcp_connection ;;
    hidden: yes
  }

  dimension: metrics__labeled_timing_distribution__networking_trr_fetch_duration {
    sql: ${TABLE}.metrics.labeled_timing_distribution.networking_trr_fetch_duration ;;
    hidden: yes
  }

  dimension: metrics__memory_distribution__cert_storage_memory__count {
    sql: ${TABLE}.metrics.memory_distribution.cert_storage_memory.count ;;
    type: number
    group_label: "Metrics Memory Distribution Cert Storage Memory"
    group_item_label: "Count"
  }

  dimension: metrics__memory_distribution__cert_storage_memory__sum {
    sql: ${TABLE}.metrics.memory_distribution.cert_storage_memory.sum ;;
    type: number
    group_label: "Metrics Memory Distribution Cert Storage Memory"
    group_item_label: "Sum"
  }

  dimension: metrics__memory_distribution__cert_storage_memory__values {
    sql: ${TABLE}.metrics.memory_distribution.cert_storage_memory.values ;;
    hidden: yes
  }

  dimension: metrics__memory_distribution__extensions_apis_dnr_startup_cache_read_size__count {
    sql: ${TABLE}.metrics.memory_distribution.extensions_apis_dnr_startup_cache_read_size.count ;;
    type: number
    group_label: "Metrics Memory Distribution Extensions Apis Dnr Startup Cache Read Size"
    group_item_label: "Count"
  }

  dimension: metrics__memory_distribution__extensions_apis_dnr_startup_cache_read_size__sum {
    sql: ${TABLE}.metrics.memory_distribution.extensions_apis_dnr_startup_cache_read_size.sum ;;
    type: number
    group_label: "Metrics Memory Distribution Extensions Apis Dnr Startup Cache Read Size"
    group_item_label: "Sum"
  }

  dimension: metrics__memory_distribution__extensions_apis_dnr_startup_cache_read_size__values {
    sql: ${TABLE}.metrics.memory_distribution.extensions_apis_dnr_startup_cache_read_size.values ;;
    hidden: yes
  }

  dimension: metrics__memory_distribution__extensions_apis_dnr_startup_cache_write_size__count {
    sql: ${TABLE}.metrics.memory_distribution.extensions_apis_dnr_startup_cache_write_size.count ;;
    type: number
    group_label: "Metrics Memory Distribution Extensions Apis Dnr Startup Cache Write Size"
    group_item_label: "Count"
  }

  dimension: metrics__memory_distribution__extensions_apis_dnr_startup_cache_write_size__sum {
    sql: ${TABLE}.metrics.memory_distribution.extensions_apis_dnr_startup_cache_write_size.sum ;;
    type: number
    group_label: "Metrics Memory Distribution Extensions Apis Dnr Startup Cache Write Size"
    group_item_label: "Sum"
  }

  dimension: metrics__memory_distribution__extensions_apis_dnr_startup_cache_write_size__values {
    sql: ${TABLE}.metrics.memory_distribution.extensions_apis_dnr_startup_cache_write_size.values ;;
    hidden: yes
  }

  dimension: metrics__memory_distribution__fog_ipc_buffer_sizes__count {
    sql: ${TABLE}.metrics.memory_distribution.fog_ipc_buffer_sizes.count ;;
    type: number
    group_label: "Metrics Memory Distribution Fog Ipc Buffer Sizes"
    group_item_label: "Count"
  }

  dimension: metrics__memory_distribution__fog_ipc_buffer_sizes__sum {
    sql: ${TABLE}.metrics.memory_distribution.fog_ipc_buffer_sizes.sum ;;
    type: number
    group_label: "Metrics Memory Distribution Fog Ipc Buffer Sizes"
    group_item_label: "Sum"
  }

  dimension: metrics__memory_distribution__fog_ipc_buffer_sizes__values {
    sql: ${TABLE}.metrics.memory_distribution.fog_ipc_buffer_sizes.values ;;
    hidden: yes
  }

  dimension: metrics__memory_distribution__glean_database_size__count {
    sql: ${TABLE}.metrics.memory_distribution.glean_database_size.count ;;
    type: number
    group_label: "Metrics Memory Distribution Glean Database Size"
    group_item_label: "Count"
  }

  dimension: metrics__memory_distribution__glean_database_size__sum {
    sql: ${TABLE}.metrics.memory_distribution.glean_database_size.sum ;;
    type: number
    group_label: "Metrics Memory Distribution Glean Database Size"
    group_item_label: "Sum"
  }

  dimension: metrics__memory_distribution__glean_database_size__values {
    sql: ${TABLE}.metrics.memory_distribution.glean_database_size.values ;;
    hidden: yes
  }

  dimension: metrics__memory_distribution__glean_upload_discarded_exceeding_pings_size__count {
    sql: ${TABLE}.metrics.memory_distribution.glean_upload_discarded_exceeding_pings_size.count ;;
    type: number
    group_label: "Metrics Memory Distribution Glean Upload Discarded Exceeding Pings Size"
    group_item_label: "Count"
  }

  dimension: metrics__memory_distribution__glean_upload_discarded_exceeding_pings_size__sum {
    sql: ${TABLE}.metrics.memory_distribution.glean_upload_discarded_exceeding_pings_size.sum ;;
    type: number
    group_label: "Metrics Memory Distribution Glean Upload Discarded Exceeding Pings Size"
    group_item_label: "Sum"
  }

  dimension: metrics__memory_distribution__glean_upload_discarded_exceeding_pings_size__values {
    sql: ${TABLE}.metrics.memory_distribution.glean_upload_discarded_exceeding_pings_size.values ;;
    hidden: yes
  }

  dimension: metrics__memory_distribution__glean_upload_pending_pings_directory_size__count {
    sql: ${TABLE}.metrics.memory_distribution.glean_upload_pending_pings_directory_size.count ;;
    type: number
    group_label: "Metrics Memory Distribution Glean Upload Pending Pings Directory Size"
    group_item_label: "Count"
  }

  dimension: metrics__memory_distribution__glean_upload_pending_pings_directory_size__sum {
    sql: ${TABLE}.metrics.memory_distribution.glean_upload_pending_pings_directory_size.sum ;;
    type: number
    group_label: "Metrics Memory Distribution Glean Upload Pending Pings Directory Size"
    group_item_label: "Sum"
  }

  dimension: metrics__memory_distribution__glean_upload_pending_pings_directory_size__values {
    sql: ${TABLE}.metrics.memory_distribution.glean_upload_pending_pings_directory_size.values ;;
    hidden: yes
  }

  dimension: metrics__memory_distribution__networking_cache_metadata_size__count {
    sql: ${TABLE}.metrics.memory_distribution.networking_cache_metadata_size.count ;;
    type: number
    group_label: "Metrics Memory Distribution Networking Cache Metadata Size"
    group_item_label: "Count"
  }

  dimension: metrics__memory_distribution__networking_cache_metadata_size__sum {
    sql: ${TABLE}.metrics.memory_distribution.networking_cache_metadata_size.sum ;;
    type: number
    group_label: "Metrics Memory Distribution Networking Cache Metadata Size"
    group_item_label: "Sum"
  }

  dimension: metrics__memory_distribution__networking_cache_metadata_size__values {
    sql: ${TABLE}.metrics.memory_distribution.networking_cache_metadata_size.values ;;
    hidden: yes
  }

  dimension: metrics__memory_distribution__networking_http_3_udp_datagram_segment_size_received__count {
    sql: ${TABLE}.metrics.memory_distribution.networking_http_3_udp_datagram_segment_size_received.count ;;
    type: number
    group_label: "Metrics Memory Distribution Networking Http 3 Udp Datagram Segment Size Received"
    group_item_label: "Count"
  }

  dimension: metrics__memory_distribution__networking_http_3_udp_datagram_segment_size_received__sum {
    sql: ${TABLE}.metrics.memory_distribution.networking_http_3_udp_datagram_segment_size_received.sum ;;
    type: number
    group_label: "Metrics Memory Distribution Networking Http 3 Udp Datagram Segment Size Received"
    group_item_label: "Sum"
  }

  dimension: metrics__memory_distribution__networking_http_3_udp_datagram_segment_size_received__values {
    sql: ${TABLE}.metrics.memory_distribution.networking_http_3_udp_datagram_segment_size_received.values ;;
    hidden: yes
  }

  dimension: metrics__memory_distribution__networking_http_3_udp_datagram_segment_size_sent__count {
    sql: ${TABLE}.metrics.memory_distribution.networking_http_3_udp_datagram_segment_size_sent.count ;;
    type: number
    group_label: "Metrics Memory Distribution Networking Http 3 Udp Datagram Segment Size Sent"
    group_item_label: "Count"
  }

  dimension: metrics__memory_distribution__networking_http_3_udp_datagram_segment_size_sent__sum {
    sql: ${TABLE}.metrics.memory_distribution.networking_http_3_udp_datagram_segment_size_sent.sum ;;
    type: number
    group_label: "Metrics Memory Distribution Networking Http 3 Udp Datagram Segment Size Sent"
    group_item_label: "Sum"
  }

  dimension: metrics__memory_distribution__networking_http_3_udp_datagram_segment_size_sent__values {
    sql: ${TABLE}.metrics.memory_distribution.networking_http_3_udp_datagram_segment_size_sent.values ;;
    hidden: yes
  }

  dimension: metrics__memory_distribution__networking_http_3_udp_datagram_size_received__count {
    sql: ${TABLE}.metrics.memory_distribution.networking_http_3_udp_datagram_size_received.count ;;
    type: number
    group_label: "Metrics Memory Distribution Networking Http 3 Udp Datagram Size Received"
    group_item_label: "Count"
  }

  dimension: metrics__memory_distribution__networking_http_3_udp_datagram_size_received__sum {
    sql: ${TABLE}.metrics.memory_distribution.networking_http_3_udp_datagram_size_received.sum ;;
    type: number
    group_label: "Metrics Memory Distribution Networking Http 3 Udp Datagram Size Received"
    group_item_label: "Sum"
  }

  dimension: metrics__memory_distribution__networking_http_3_udp_datagram_size_received__values {
    sql: ${TABLE}.metrics.memory_distribution.networking_http_3_udp_datagram_size_received.values ;;
    hidden: yes
  }

  dimension: metrics__memory_distribution__performance_clone_deserialize_size__count {
    sql: ${TABLE}.metrics.memory_distribution.performance_clone_deserialize_size.count ;;
    type: number
    group_label: "Metrics Memory Distribution Performance Clone Deserialize Size"
    group_item_label: "Count"
  }

  dimension: metrics__memory_distribution__performance_clone_deserialize_size__sum {
    sql: ${TABLE}.metrics.memory_distribution.performance_clone_deserialize_size.sum ;;
    type: number
    group_label: "Metrics Memory Distribution Performance Clone Deserialize Size"
    group_item_label: "Sum"
  }

  dimension: metrics__memory_distribution__performance_clone_deserialize_size__values {
    sql: ${TABLE}.metrics.memory_distribution.performance_clone_deserialize_size.values ;;
    hidden: yes
  }

  dimension: metrics__object__fog_validation_some_object {
    sql: ${TABLE}.metrics.object.fog_validation_some_object ;;
    hidden: yes
  }

  dimension: metrics__quantity__a11y_hcm_background {
    sql: ${TABLE}.metrics.quantity.a11y_hcm_background ;;
    type: number
    group_label: "Metrics Quantity"
    group_item_label: "A11Y Hcm Background"
  }

  dimension: metrics__quantity__a11y_hcm_foreground {
    sql: ${TABLE}.metrics.quantity.a11y_hcm_foreground ;;
    type: number
    group_label: "Metrics Quantity"
    group_item_label: "A11Y Hcm Foreground"
  }

  dimension: metrics__quantity__cert_verifier_trust_obj_count {
    sql: ${TABLE}.metrics.quantity.cert_verifier_trust_obj_count ;;
    type: number
    group_label: "Metrics Quantity"
    group_item_label: "Cert Verifier Trust Obj Count"
  }

  dimension: metrics__quantity__contentblocking_category {
    sql: ${TABLE}.metrics.quantity.contentblocking_category ;;
    type: number
    group_label: "Metrics Quantity"
    group_item_label: "Contentblocking Category"
  }

  dimension: metrics__quantity__data_storage_alternate_services {
    sql: ${TABLE}.metrics.quantity.data_storage_alternate_services ;;
    type: number
    group_label: "Metrics Quantity"
    group_item_label: "Data Storage Alternate Services"
  }

  dimension: metrics__quantity__data_storage_client_auth_remember_list {
    sql: ${TABLE}.metrics.quantity.data_storage_client_auth_remember_list ;;
    type: number
    group_label: "Metrics Quantity"
    group_item_label: "Data Storage Client Auth Remember List"
  }

  dimension: metrics__quantity__data_storage_site_security_service_state {
    sql: ${TABLE}.metrics.quantity.data_storage_site_security_service_state ;;
    type: number
    group_label: "Metrics Quantity"
    group_item_label: "Data Storage Site Security Service State"
  }

  dimension: metrics__quantity__extensions_apis_dnr_evaluate_rules_count_max {
    sql: ${TABLE}.metrics.quantity.extensions_apis_dnr_evaluate_rules_count_max ;;
    type: number
    group_label: "Metrics Quantity"
    group_item_label: "Extensions Apis Dnr Evaluate Rules Count Max"
  }

  dimension: metrics__quantity__extensions_quarantined_domains_listsize {
    sql: ${TABLE}.metrics.quantity.extensions_quarantined_domains_listsize ;;
    type: number
    group_label: "Metrics Quantity"
    group_item_label: "Extensions Quarantined Domains Listsize"
  }

  dimension: metrics__quantity__extensions_startup_cache_write_bytelength {
    sql: ${TABLE}.metrics.quantity.extensions_startup_cache_write_bytelength ;;
    type: number
    group_label: "Metrics Quantity"
    group_item_label: "Extensions Startup Cache Write Bytelength"
  }

  dimension: metrics__quantity__fog_max_pings_per_minute {
    sql: ${TABLE}.metrics.quantity.fog_max_pings_per_minute ;;
    type: number
    group_label: "Metrics Quantity"
    group_item_label: "Fog Max Pings Per Minute"
  }

  dimension: metrics__quantity__fog_validation_gvsv_primary_height {
    sql: ${TABLE}.metrics.quantity.fog_validation_gvsv_primary_height ;;
    type: number
    group_label: "Metrics Quantity"
    group_item_label: "Fog Validation Gvsv Primary Height"
  }

  dimension: metrics__quantity__fog_validation_gvsv_primary_width {
    sql: ${TABLE}.metrics.quantity.fog_validation_gvsv_primary_width ;;
    type: number
    group_label: "Metrics Quantity"
    group_item_label: "Fog Validation Gvsv Primary Width"
  }

  dimension: metrics__quantity__formautofill_creditcards_autofill_profiles_count {
    sql: ${TABLE}.metrics.quantity.formautofill_creditcards_autofill_profiles_count ;;
    type: number
    group_label: "Metrics Quantity"
    group_item_label: "Formautofill Creditcards Autofill Profiles Count"
  }

  dimension: metrics__quantity__gfx_adapter_primary_ram {
    sql: ${TABLE}.metrics.quantity.gfx_adapter_primary_ram ;;
    type: number
    group_label: "Metrics Quantity"
    group_item_label: "Gfx Adapter Primary Ram"
  }

  dimension: metrics__quantity__gfx_display_count {
    sql: ${TABLE}.metrics.quantity.gfx_display_count ;;
    type: number
    group_label: "Metrics Quantity"
    group_item_label: "Gfx Display Count"
  }

  dimension: metrics__quantity__gfx_display_primary_height {
    sql: ${TABLE}.metrics.quantity.gfx_display_primary_height ;;
    type: number
    group_label: "Metrics Quantity"
    group_item_label: "Gfx Display Primary Height"
  }

  dimension: metrics__quantity__gfx_display_primary_width {
    sql: ${TABLE}.metrics.quantity.gfx_display_primary_width ;;
    type: number
    group_label: "Metrics Quantity"
    group_item_label: "Gfx Display Primary Width"
  }

  dimension: metrics__quantity__gfx_hdr_windows_display_colorspace_bitfield {
    sql: ${TABLE}.metrics.quantity.gfx_hdr_windows_display_colorspace_bitfield ;;
    type: number
    group_label: "Metrics Quantity"
    group_item_label: "Gfx Hdr Windows Display Colorspace Bitfield"
  }

  dimension: metrics__quantity__gpu_process_total_launch_attempts {
    sql: ${TABLE}.metrics.quantity.gpu_process_total_launch_attempts ;;
    type: number
    group_label: "Metrics Quantity"
    group_item_label: "Gpu Process Total Launch Attempts"
  }

  dimension: metrics__quantity__gpu_process_unstable_launch_attempts {
    sql: ${TABLE}.metrics.quantity.gpu_process_unstable_launch_attempts ;;
    type: number
    group_label: "Metrics Quantity"
    group_item_label: "Gpu Process Unstable Launch Attempts"
  }

  dimension: metrics__quantity__networking_https_rr_prefs_usage {
    sql: ${TABLE}.metrics.quantity.networking_https_rr_prefs_usage ;;
    type: number
    group_label: "Metrics Quantity"
    group_item_label: "Networking Https Rr Prefs Usage"
  }

  dimension: metrics__quantity__pkcs11_third_party_modules_loaded {
    sql: ${TABLE}.metrics.quantity.pkcs11_third_party_modules_loaded ;;
    type: number
    group_label: "Metrics Quantity"
    group_item_label: "Pkcs11 Third Party Modules Loaded"
  }

  dimension: metrics__quantity__policies_count {
    sql: ${TABLE}.metrics.quantity.policies_count ;;
    type: number
    group_label: "Metrics Quantity"
    group_item_label: "Policies Count"
  }

  dimension: metrics__quantity__pwmgr_potentially_breached_passwords {
    sql: ${TABLE}.metrics.quantity.pwmgr_potentially_breached_passwords ;;
    type: number
    group_label: "Metrics Quantity"
    group_item_label: "Pwmgr Potentially Breached Passwords"
  }

  dimension: metrics__quantity__shortcuts_shortcuts_on_home_number {
    sql: ${TABLE}.metrics.quantity.shortcuts_shortcuts_on_home_number ;;
    type: number
    group_label: "Metrics Quantity"
    group_item_label: "Shortcuts Shortcuts On Home Number"
  }

  dimension: metrics__quantity__startup_profile_count {
    sql: ${TABLE}.metrics.quantity.startup_profile_count ;;
    type: number
    group_label: "Metrics Quantity"
    group_item_label: "Startup Profile Count"
  }

  dimension: metrics__rate__cert_signature_cache_hits__denominator {
    sql: ${TABLE}.metrics.rate.cert_signature_cache_hits.denominator ;;
    type: number
    group_label: "Metrics Rate Cert Signature Cache Hits"
    group_item_label: "Denominator"
  }

  dimension: metrics__rate__cert_signature_cache_hits__numerator {
    sql: ${TABLE}.metrics.rate.cert_signature_cache_hits.numerator ;;
    type: number
    group_label: "Metrics Rate Cert Signature Cache Hits"
    group_item_label: "Numerator"
  }

  dimension: metrics__rate__cert_trust_cache_hits__denominator {
    sql: ${TABLE}.metrics.rate.cert_trust_cache_hits.denominator ;;
    type: number
    group_label: "Metrics Rate Cert Trust Cache Hits"
    group_item_label: "Denominator"
  }

  dimension: metrics__rate__cert_trust_cache_hits__numerator {
    sql: ${TABLE}.metrics.rate.cert_trust_cache_hits.numerator ;;
    type: number
    group_label: "Metrics Rate Cert Trust Cache Hits"
    group_item_label: "Numerator"
  }

  dimension: metrics__rate__cookie_banners_cmp_ratio_handled_by_cmp_rule__denominator {
    sql: ${TABLE}.metrics.rate.cookie_banners_cmp_ratio_handled_by_cmp_rule.denominator ;;
    type: number
    group_label: "Metrics Rate Cookie Banners Cmp Ratio Handled By Cmp Rule"
    group_item_label: "Denominator"
  }

  dimension: metrics__rate__cookie_banners_cmp_ratio_handled_by_cmp_rule__numerator {
    sql: ${TABLE}.metrics.rate.cookie_banners_cmp_ratio_handled_by_cmp_rule.numerator ;;
    type: number
    group_label: "Metrics Rate Cookie Banners Cmp Ratio Handled By Cmp Rule"
    group_item_label: "Numerator"
  }

  dimension: metrics__rate__httpsfirst_downgraded_on_timer__denominator {
    sql: ${TABLE}.metrics.rate.httpsfirst_downgraded_on_timer.denominator ;;
    type: number
    group_label: "Metrics Rate Httpsfirst Downgraded On Timer"
    group_item_label: "Denominator"
  }

  dimension: metrics__rate__httpsfirst_downgraded_on_timer__numerator {
    sql: ${TABLE}.metrics.rate.httpsfirst_downgraded_on_timer.numerator ;;
    type: number
    group_label: "Metrics Rate Httpsfirst Downgraded On Timer"
    group_item_label: "Numerator"
  }

  dimension: metrics__rate__httpsfirst_downgraded_on_timer_schemeless__denominator {
    sql: ${TABLE}.metrics.rate.httpsfirst_downgraded_on_timer_schemeless.denominator ;;
    type: number
    group_label: "Metrics Rate Httpsfirst Downgraded On Timer Schemeless"
    group_item_label: "Denominator"
  }

  dimension: metrics__rate__httpsfirst_downgraded_on_timer_schemeless__numerator {
    sql: ${TABLE}.metrics.rate.httpsfirst_downgraded_on_timer_schemeless.numerator ;;
    type: number
    group_label: "Metrics Rate Httpsfirst Downgraded On Timer Schemeless"
    group_item_label: "Numerator"
  }

  dimension: metrics__rate__networking_set_cookie_expired_without_server_time__denominator {
    sql: ${TABLE}.metrics.rate.networking_set_cookie_expired_without_server_time.denominator ;;
    type: number
    group_label: "Metrics Rate Networking Set Cookie Expired Without Server Time"
    group_item_label: "Denominator"
  }

  dimension: metrics__rate__networking_set_cookie_expired_without_server_time__numerator {
    sql: ${TABLE}.metrics.rate.networking_set_cookie_expired_without_server_time.numerator ;;
    type: number
    group_label: "Metrics Rate Networking Set Cookie Expired Without Server Time"
    group_item_label: "Numerator"
  }

  dimension: metrics__rate__networking_set_cookie_foreign__denominator {
    sql: ${TABLE}.metrics.rate.networking_set_cookie_foreign.denominator ;;
    type: number
    group_label: "Metrics Rate Networking Set Cookie Foreign"
    group_item_label: "Denominator"
  }

  dimension: metrics__rate__networking_set_cookie_foreign__numerator {
    sql: ${TABLE}.metrics.rate.networking_set_cookie_foreign.numerator ;;
    type: number
    group_label: "Metrics Rate Networking Set Cookie Foreign"
    group_item_label: "Numerator"
  }

  dimension: metrics__rate__networking_set_cookie_foreign_partitioned__denominator {
    sql: ${TABLE}.metrics.rate.networking_set_cookie_foreign_partitioned.denominator ;;
    type: number
    group_label: "Metrics Rate Networking Set Cookie Foreign Partitioned"
    group_item_label: "Denominator"
  }

  dimension: metrics__rate__networking_set_cookie_foreign_partitioned__numerator {
    sql: ${TABLE}.metrics.rate.networking_set_cookie_foreign_partitioned.numerator ;;
    type: number
    group_label: "Metrics Rate Networking Set Cookie Foreign Partitioned"
    group_item_label: "Numerator"
  }

  dimension: metrics__rate__networking_set_cookie_partitioned__denominator {
    sql: ${TABLE}.metrics.rate.networking_set_cookie_partitioned.denominator ;;
    type: number
    group_label: "Metrics Rate Networking Set Cookie Partitioned"
    group_item_label: "Denominator"
  }

  dimension: metrics__rate__networking_set_cookie_partitioned__numerator {
    sql: ${TABLE}.metrics.rate.networking_set_cookie_partitioned.numerator ;;
    type: number
    group_label: "Metrics Rate Networking Set Cookie Partitioned"
    group_item_label: "Numerator"
  }

  dimension: metrics__rate__parsing_svg_unusual_pcdata__denominator {
    sql: ${TABLE}.metrics.rate.parsing_svg_unusual_pcdata.denominator ;;
    type: number
    group_label: "Metrics Rate Parsing Svg Unusual Pcdata"
    group_item_label: "Denominator"
  }

  dimension: metrics__rate__parsing_svg_unusual_pcdata__numerator {
    sql: ${TABLE}.metrics.rate.parsing_svg_unusual_pcdata.numerator ;;
    type: number
    group_label: "Metrics Rate Parsing Svg Unusual Pcdata"
    group_item_label: "Numerator"
  }

  dimension: metrics__rate__pkcs11_built_in_roots_module__denominator {
    sql: ${TABLE}.metrics.rate.pkcs11_built_in_roots_module.denominator ;;
    type: number
    group_label: "Metrics Rate Pkcs11 Built In Roots Module"
    group_item_label: "Denominator"
  }

  dimension: metrics__rate__pkcs11_built_in_roots_module__numerator {
    sql: ${TABLE}.metrics.rate.pkcs11_built_in_roots_module.numerator ;;
    type: number
    group_label: "Metrics Rate Pkcs11 Built In Roots Module"
    group_item_label: "Numerator"
  }

  dimension: metrics__rate__pkcs11_nss_cert_db__denominator {
    sql: ${TABLE}.metrics.rate.pkcs11_nss_cert_db.denominator ;;
    type: number
    group_label: "Metrics Rate Pkcs11 Nss Cert Db"
    group_item_label: "Denominator"
  }

  dimension: metrics__rate__pkcs11_nss_cert_db__numerator {
    sql: ${TABLE}.metrics.rate.pkcs11_nss_cert_db.numerator ;;
    type: number
    group_label: "Metrics Rate Pkcs11 Nss Cert Db"
    group_item_label: "Numerator"
  }

  dimension: metrics__rate__rtcrtpsender_setparameters_fail_length_changed__denominator {
    sql: ${TABLE}.metrics.rate.rtcrtpsender_setparameters_fail_length_changed.denominator ;;
    type: number
    group_label: "Metrics Rate Rtcrtpsender Setparameters Fail Length Changed"
    group_item_label: "Denominator"
  }

  dimension: metrics__rate__rtcrtpsender_setparameters_fail_length_changed__numerator {
    sql: ${TABLE}.metrics.rate.rtcrtpsender_setparameters_fail_length_changed.numerator ;;
    type: number
    group_label: "Metrics Rate Rtcrtpsender Setparameters Fail Length Changed"
    group_item_label: "Numerator"
  }

  dimension: metrics__rate__rtcrtpsender_setparameters_fail_no_encodings__denominator {
    sql: ${TABLE}.metrics.rate.rtcrtpsender_setparameters_fail_no_encodings.denominator ;;
    type: number
    group_label: "Metrics Rate Rtcrtpsender Setparameters Fail No Encodings"
    group_item_label: "Denominator"
  }

  dimension: metrics__rate__rtcrtpsender_setparameters_fail_no_encodings__numerator {
    sql: ${TABLE}.metrics.rate.rtcrtpsender_setparameters_fail_no_encodings.numerator ;;
    type: number
    group_label: "Metrics Rate Rtcrtpsender Setparameters Fail No Encodings"
    group_item_label: "Numerator"
  }

  dimension: metrics__rate__rtcrtpsender_setparameters_fail_no_getparameters__denominator {
    sql: ${TABLE}.metrics.rate.rtcrtpsender_setparameters_fail_no_getparameters.denominator ;;
    type: number
    group_label: "Metrics Rate Rtcrtpsender Setparameters Fail No Getparameters"
    group_item_label: "Denominator"
  }

  dimension: metrics__rate__rtcrtpsender_setparameters_fail_no_getparameters__numerator {
    sql: ${TABLE}.metrics.rate.rtcrtpsender_setparameters_fail_no_getparameters.numerator ;;
    type: number
    group_label: "Metrics Rate Rtcrtpsender Setparameters Fail No Getparameters"
    group_item_label: "Numerator"
  }

  dimension: metrics__rate__rtcrtpsender_setparameters_fail_no_transactionid__denominator {
    sql: ${TABLE}.metrics.rate.rtcrtpsender_setparameters_fail_no_transactionid.denominator ;;
    type: number
    group_label: "Metrics Rate Rtcrtpsender Setparameters Fail No Transactionid"
    group_item_label: "Denominator"
  }

  dimension: metrics__rate__rtcrtpsender_setparameters_fail_no_transactionid__numerator {
    sql: ${TABLE}.metrics.rate.rtcrtpsender_setparameters_fail_no_transactionid.numerator ;;
    type: number
    group_label: "Metrics Rate Rtcrtpsender Setparameters Fail No Transactionid"
    group_item_label: "Numerator"
  }

  dimension: metrics__rate__rtcrtpsender_setparameters_fail_other__denominator {
    sql: ${TABLE}.metrics.rate.rtcrtpsender_setparameters_fail_other.denominator ;;
    type: number
    group_label: "Metrics Rate Rtcrtpsender Setparameters Fail Other"
    group_item_label: "Denominator"
  }

  dimension: metrics__rate__rtcrtpsender_setparameters_fail_other__numerator {
    sql: ${TABLE}.metrics.rate.rtcrtpsender_setparameters_fail_other.numerator ;;
    type: number
    group_label: "Metrics Rate Rtcrtpsender Setparameters Fail Other"
    group_item_label: "Numerator"
  }

  dimension: metrics__rate__rtcrtpsender_setparameters_fail_rid_changed__denominator {
    sql: ${TABLE}.metrics.rate.rtcrtpsender_setparameters_fail_rid_changed.denominator ;;
    type: number
    group_label: "Metrics Rate Rtcrtpsender Setparameters Fail Rid Changed"
    group_item_label: "Denominator"
  }

  dimension: metrics__rate__rtcrtpsender_setparameters_fail_rid_changed__numerator {
    sql: ${TABLE}.metrics.rate.rtcrtpsender_setparameters_fail_rid_changed.numerator ;;
    type: number
    group_label: "Metrics Rate Rtcrtpsender Setparameters Fail Rid Changed"
    group_item_label: "Numerator"
  }

  dimension: metrics__rate__rtcrtpsender_setparameters_fail_stale_transactionid__denominator {
    sql: ${TABLE}.metrics.rate.rtcrtpsender_setparameters_fail_stale_transactionid.denominator ;;
    type: number
    group_label: "Metrics Rate Rtcrtpsender Setparameters Fail Stale Transactionid"
    group_item_label: "Denominator"
  }

  dimension: metrics__rate__rtcrtpsender_setparameters_fail_stale_transactionid__numerator {
    sql: ${TABLE}.metrics.rate.rtcrtpsender_setparameters_fail_stale_transactionid.numerator ;;
    type: number
    group_label: "Metrics Rate Rtcrtpsender Setparameters Fail Stale Transactionid"
    group_item_label: "Numerator"
  }

  dimension: metrics__rate__rtcrtpsender_setparameters_warn_length_changed__denominator {
    sql: ${TABLE}.metrics.rate.rtcrtpsender_setparameters_warn_length_changed.denominator ;;
    type: number
    group_label: "Metrics Rate Rtcrtpsender Setparameters Warn Length Changed"
    group_item_label: "Denominator"
  }

  dimension: metrics__rate__rtcrtpsender_setparameters_warn_length_changed__numerator {
    sql: ${TABLE}.metrics.rate.rtcrtpsender_setparameters_warn_length_changed.numerator ;;
    type: number
    group_label: "Metrics Rate Rtcrtpsender Setparameters Warn Length Changed"
    group_item_label: "Numerator"
  }

  dimension: metrics__rate__rtcrtpsender_setparameters_warn_no_getparameters__denominator {
    sql: ${TABLE}.metrics.rate.rtcrtpsender_setparameters_warn_no_getparameters.denominator ;;
    type: number
    group_label: "Metrics Rate Rtcrtpsender Setparameters Warn No Getparameters"
    group_item_label: "Denominator"
  }

  dimension: metrics__rate__rtcrtpsender_setparameters_warn_no_getparameters__numerator {
    sql: ${TABLE}.metrics.rate.rtcrtpsender_setparameters_warn_no_getparameters.numerator ;;
    type: number
    group_label: "Metrics Rate Rtcrtpsender Setparameters Warn No Getparameters"
    group_item_label: "Numerator"
  }

  dimension: metrics__rate__rtcrtpsender_setparameters_warn_no_transactionid__denominator {
    sql: ${TABLE}.metrics.rate.rtcrtpsender_setparameters_warn_no_transactionid.denominator ;;
    type: number
    group_label: "Metrics Rate Rtcrtpsender Setparameters Warn No Transactionid"
    group_item_label: "Denominator"
  }

  dimension: metrics__rate__rtcrtpsender_setparameters_warn_no_transactionid__numerator {
    sql: ${TABLE}.metrics.rate.rtcrtpsender_setparameters_warn_no_transactionid.numerator ;;
    type: number
    group_label: "Metrics Rate Rtcrtpsender Setparameters Warn No Transactionid"
    group_item_label: "Numerator"
  }

  dimension: metrics__rate__rtcrtpsender_setparameters_warn_rid_changed__denominator {
    sql: ${TABLE}.metrics.rate.rtcrtpsender_setparameters_warn_rid_changed.denominator ;;
    type: number
    group_label: "Metrics Rate Rtcrtpsender Setparameters Warn Rid Changed"
    group_item_label: "Denominator"
  }

  dimension: metrics__rate__rtcrtpsender_setparameters_warn_rid_changed__numerator {
    sql: ${TABLE}.metrics.rate.rtcrtpsender_setparameters_warn_rid_changed.numerator ;;
    type: number
    group_label: "Metrics Rate Rtcrtpsender Setparameters Warn Rid Changed"
    group_item_label: "Numerator"
  }

  dimension: metrics__rate__rtcrtpsender_setparameters_warn_stale_transactionid__denominator {
    sql: ${TABLE}.metrics.rate.rtcrtpsender_setparameters_warn_stale_transactionid.denominator ;;
    type: number
    group_label: "Metrics Rate Rtcrtpsender Setparameters Warn Stale Transactionid"
    group_item_label: "Denominator"
  }

  dimension: metrics__rate__rtcrtpsender_setparameters_warn_stale_transactionid__numerator {
    sql: ${TABLE}.metrics.rate.rtcrtpsender_setparameters_warn_stale_transactionid.numerator ;;
    type: number
    group_label: "Metrics Rate Rtcrtpsender Setparameters Warn Stale Transactionid"
    group_item_label: "Numerator"
  }

  dimension: metrics__rate__rtcrtpsender_used_sendencodings__denominator {
    sql: ${TABLE}.metrics.rate.rtcrtpsender_used_sendencodings.denominator ;;
    type: number
    group_label: "Metrics Rate Rtcrtpsender Used Sendencodings"
    group_item_label: "Denominator"
  }

  dimension: metrics__rate__rtcrtpsender_used_sendencodings__numerator {
    sql: ${TABLE}.metrics.rate.rtcrtpsender_used_sendencodings.numerator ;;
    type: number
    group_label: "Metrics Rate Rtcrtpsender Used Sendencodings"
    group_item_label: "Numerator"
  }

  dimension: metrics__rate__sct_signature_cache_hits__denominator {
    sql: ${TABLE}.metrics.rate.sct_signature_cache_hits.denominator ;;
    type: number
    group_label: "Metrics Rate Sct Signature Cache Hits"
    group_item_label: "Denominator"
  }

  dimension: metrics__rate__sct_signature_cache_hits__numerator {
    sql: ${TABLE}.metrics.rate.sct_signature_cache_hits.numerator ;;
    type: number
    group_label: "Metrics Rate Sct Signature Cache Hits"
    group_item_label: "Numerator"
  }

  dimension: metrics__rate__translations_error_rate__denominator {
    sql: ${TABLE}.metrics.rate.translations_error_rate.denominator ;;
    type: number
    group_label: "Metrics Rate Translations Error Rate"
    group_item_label: "Denominator"
  }

  dimension: metrics__rate__translations_error_rate__numerator {
    sql: ${TABLE}.metrics.rate.translations_error_rate.numerator ;;
    type: number
    group_label: "Metrics Rate Translations Error Rate"
    group_item_label: "Numerator"
  }

  dimension: metrics__rate__verification_used_cert_from_built_in_roots_module__denominator {
    sql: ${TABLE}.metrics.rate.verification_used_cert_from_built_in_roots_module.denominator ;;
    type: number
    group_label: "Metrics Rate Verification Used Cert From Built In Roots Module"
    group_item_label: "Denominator"
  }

  dimension: metrics__rate__verification_used_cert_from_built_in_roots_module__numerator {
    sql: ${TABLE}.metrics.rate.verification_used_cert_from_built_in_roots_module.numerator ;;
    type: number
    group_label: "Metrics Rate Verification Used Cert From Built In Roots Module"
    group_item_label: "Numerator"
  }

  dimension: metrics__rate__verification_used_cert_from_nss_cert_db__denominator {
    sql: ${TABLE}.metrics.rate.verification_used_cert_from_nss_cert_db.denominator ;;
    type: number
    group_label: "Metrics Rate Verification Used Cert From Nss Cert Db"
    group_item_label: "Denominator"
  }

  dimension: metrics__rate__verification_used_cert_from_nss_cert_db__numerator {
    sql: ${TABLE}.metrics.rate.verification_used_cert_from_nss_cert_db.numerator ;;
    type: number
    group_label: "Metrics Rate Verification Used Cert From Nss Cert Db"
    group_item_label: "Numerator"
  }

  dimension: metrics__rate__verification_used_cert_from_preloaded_intermediates__denominator {
    sql: ${TABLE}.metrics.rate.verification_used_cert_from_preloaded_intermediates.denominator ;;
    type: number
    group_label: "Metrics Rate Verification Used Cert From Preloaded Intermediates"
    group_item_label: "Denominator"
  }

  dimension: metrics__rate__verification_used_cert_from_preloaded_intermediates__numerator {
    sql: ${TABLE}.metrics.rate.verification_used_cert_from_preloaded_intermediates.numerator ;;
    type: number
    group_label: "Metrics Rate Verification Used Cert From Preloaded Intermediates"
    group_item_label: "Numerator"
  }

  dimension: metrics__rate__verification_used_cert_from_third_party_certificates__denominator {
    sql: ${TABLE}.metrics.rate.verification_used_cert_from_third_party_certificates.denominator ;;
    type: number
    group_label: "Metrics Rate Verification Used Cert From Third Party Certificates"
    group_item_label: "Denominator"
  }

  dimension: metrics__rate__verification_used_cert_from_third_party_certificates__numerator {
    sql: ${TABLE}.metrics.rate.verification_used_cert_from_third_party_certificates.numerator ;;
    type: number
    group_label: "Metrics Rate Verification Used Cert From Third Party Certificates"
    group_item_label: "Numerator"
  }

  dimension: metrics__rate__verification_used_cert_from_tls_handshake__denominator {
    sql: ${TABLE}.metrics.rate.verification_used_cert_from_tls_handshake.denominator ;;
    type: number
    group_label: "Metrics Rate Verification Used Cert From Tls Handshake"
    group_item_label: "Denominator"
  }

  dimension: metrics__rate__verification_used_cert_from_tls_handshake__numerator {
    sql: ${TABLE}.metrics.rate.verification_used_cert_from_tls_handshake.numerator ;;
    type: number
    group_label: "Metrics Rate Verification Used Cert From Tls Handshake"
    group_item_label: "Numerator"
  }

  dimension: metrics__string__a11y_instantiators {
    sql: ${TABLE}.metrics.string.a11y_instantiators ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "A11Y Instantiators"
  }

  dimension: metrics__string__blocklist_mlbf_softblocks_source {
    sql: ${TABLE}.metrics.string.blocklist_mlbf_softblocks_source ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Blocklist Mlbf Softblocks Source"
  }

  dimension: metrics__string__blocklist_mlbf_source {
    sql: ${TABLE}.metrics.string.blocklist_mlbf_source ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Blocklist Mlbf Source"
  }

  dimension: metrics__string__browser_default_search_engine {
    sql: ${TABLE}.metrics.string.browser_default_search_engine ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Browser Default Search Engine"
  }

  dimension: metrics__string__browser_install_source {
    sql: ${TABLE}.metrics.string.browser_install_source ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Browser Install Source"
  }

  dimension: metrics__string__browser_locale_override {
    sql: ${TABLE}.metrics.string.browser_locale_override ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Browser Locale Override"
  }

  dimension: metrics__string__extensions_quarantined_domains_listhash {
    sql: ${TABLE}.metrics.string.extensions_quarantined_domains_listhash ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Extensions Quarantined Domains Listhash"
  }

  dimension: metrics__string__extensions_quarantined_domains_remotehash {
    sql: ${TABLE}.metrics.string.extensions_quarantined_domains_remotehash ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Extensions Quarantined Domains Remotehash"
  }

  dimension: metrics__string__gecko_build_id {
    sql: ${TABLE}.metrics.string.gecko_build_id ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Gecko Build Id"
  }

  dimension: metrics__string__gecko_version {
    sql: ${TABLE}.metrics.string.gecko_version ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Gecko Version"
  }

  dimension: metrics__string__geckoview_validation_build_id {
    sql: ${TABLE}.metrics.string.geckoview_validation_build_id ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Geckoview Validation Build Id"
  }

  dimension: metrics__string__geckoview_validation_version {
    sql: ${TABLE}.metrics.string.geckoview_validation_version ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Geckoview Validation Version"
  }

  dimension: metrics__string__gfx_adapter_primary_description {
    sql: ${TABLE}.metrics.string.gfx_adapter_primary_description ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Gfx Adapter Primary Description"
  }

  dimension: metrics__string__gfx_adapter_primary_device_id {
    sql: ${TABLE}.metrics.string.gfx_adapter_primary_device_id ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Gfx Adapter Primary Device Id"
  }

  dimension: metrics__string__gfx_adapter_primary_driver_date {
    sql: ${TABLE}.metrics.string.gfx_adapter_primary_driver_date ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Gfx Adapter Primary Driver Date"
  }

  dimension: metrics__string__gfx_adapter_primary_driver_files {
    sql: ${TABLE}.metrics.string.gfx_adapter_primary_driver_files ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Gfx Adapter Primary Driver Files"
  }

  dimension: metrics__string__gfx_adapter_primary_driver_vendor {
    sql: ${TABLE}.metrics.string.gfx_adapter_primary_driver_vendor ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Gfx Adapter Primary Driver Vendor"
  }

  dimension: metrics__string__gfx_adapter_primary_driver_version {
    sql: ${TABLE}.metrics.string.gfx_adapter_primary_driver_version ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Gfx Adapter Primary Driver Version"
  }

  dimension: metrics__string__gfx_adapter_primary_subsystem_id {
    sql: ${TABLE}.metrics.string.gfx_adapter_primary_subsystem_id ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Gfx Adapter Primary Subsystem Id"
  }

  dimension: metrics__string__gfx_adapter_primary_vendor_id {
    sql: ${TABLE}.metrics.string.gfx_adapter_primary_vendor_id ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Gfx Adapter Primary Vendor Id"
  }

  dimension: metrics__string__gfx_feature_webrender {
    sql: ${TABLE}.metrics.string.gfx_feature_webrender ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Gfx Feature Webrender"
  }

  dimension: metrics__string__gfx_linux_window_protocol {
    sql: ${TABLE}.metrics.string.gfx_linux_window_protocol ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Gfx Linux Window Protocol"
  }

  dimension: metrics__string__gfx_status_compositor {
    sql: ${TABLE}.metrics.string.gfx_status_compositor ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Gfx Status Compositor"
  }

  dimension: metrics__string__gfx_status_last_compositor_gecko_version {
    sql: ${TABLE}.metrics.string.gfx_status_last_compositor_gecko_version ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Gfx Status Last Compositor Gecko Version"
  }

  dimension: metrics__string__glean_client_annotation_experimentation_id {
    sql: ${TABLE}.metrics.string.glean_client_annotation_experimentation_id ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Glean Client Annotation Experimentation Id"
  }

  dimension: metrics__string__glean_database_rkv_load_error {
    sql: ${TABLE}.metrics.string.glean_database_rkv_load_error ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Glean Database Rkv Load Error"
  }

  dimension: metrics__string__gpu_process_feature_status {
    sql: ${TABLE}.metrics.string.gpu_process_feature_status ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Gpu Process Feature Status"
  }

  dimension: metrics__string__ping_reason {
    sql: ${TABLE}.metrics.string.ping_reason ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Ping Reason"
  }

  dimension: metrics__string__preferences_user_theme {
    sql: ${TABLE}.metrics.string.preferences_user_theme ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Preferences User Theme"
  }

  dimension: metrics__string__startup_profile_database_version {
    sql: ${TABLE}.metrics.string.startup_profile_database_version ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Startup Profile Database Version"
  }

  dimension: metrics__string__startup_profile_selection_reason {
    sql: ${TABLE}.metrics.string.startup_profile_selection_reason ;;
    type: string
    group_label: "Metrics String"
    group_item_label: "Startup Profile Selection Reason"
  }

  dimension: metrics__timespan__extensions_startup_cache_load_time__time_unit {
    sql: ${TABLE}.metrics.timespan.extensions_startup_cache_load_time.time_unit ;;
    type: string
    group_label: "Metrics Timespan Extensions Startup Cache Load Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timespan__extensions_startup_cache_load_time__value {
    sql: ${TABLE}.metrics.timespan.extensions_startup_cache_load_time.value ;;
    type: number
    group_label: "Metrics Timespan Extensions Startup Cache Load Time"
    group_item_label: "Value"
  }

  dimension: metrics__timespan__fog_initialization__time_unit {
    sql: ${TABLE}.metrics.timespan.fog_initialization.time_unit ;;
    type: string
    group_label: "Metrics Timespan Fog Initialization"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timespan__fog_initialization__value {
    sql: ${TABLE}.metrics.timespan.fog_initialization.value ;;
    type: number
    group_label: "Metrics Timespan Fog Initialization"
    group_item_label: "Value"
  }

  dimension: metrics__timespan__networking_loading_certs_task__time_unit {
    sql: ${TABLE}.metrics.timespan.networking_loading_certs_task.time_unit ;;
    type: string
    group_label: "Metrics Timespan Networking Loading Certs Task"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timespan__networking_loading_certs_task__value {
    sql: ${TABLE}.metrics.timespan.networking_loading_certs_task.value ;;
    type: number
    group_label: "Metrics Timespan Networking Loading Certs Task"
    group_item_label: "Value"
  }

  dimension: metrics__timespan__networking_nss_initialization__time_unit {
    sql: ${TABLE}.metrics.timespan.networking_nss_initialization.time_unit ;;
    type: string
    group_label: "Metrics Timespan Networking Nss Initialization"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timespan__networking_nss_initialization__value {
    sql: ${TABLE}.metrics.timespan.networking_nss_initialization.value ;;
    type: number
    group_label: "Metrics Timespan Networking Nss Initialization"
    group_item_label: "Value"
  }

  dimension: metrics__timespan__nimbus_experiments_nimbus_initial_fetch__time_unit {
    sql: ${TABLE}.metrics.timespan.nimbus_experiments_nimbus_initial_fetch.time_unit ;;
    type: string
    group_label: "Metrics Timespan Nimbus Experiments Nimbus Initial Fetch"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timespan__nimbus_experiments_nimbus_initial_fetch__value {
    sql: ${TABLE}.metrics.timespan.nimbus_experiments_nimbus_initial_fetch.value ;;
    type: number
    group_label: "Metrics Timespan Nimbus Experiments Nimbus Initial Fetch"
    group_item_label: "Value"
  }

  dimension: metrics__timing_distribution__bounce_tracking_protection_purge_duration__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.bounce_tracking_protection_purge_duration.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Bounce Tracking Protection Purge Duration"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__bounce_tracking_protection_purge_duration__count {
    sql: ${TABLE}.metrics.timing_distribution.bounce_tracking_protection_purge_duration.count ;;
    type: number
    group_label: "Metrics Timing Distribution Bounce Tracking Protection Purge Duration"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__bounce_tracking_protection_purge_duration__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.bounce_tracking_protection_purge_duration.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Bounce Tracking Protection Purge Duration"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__bounce_tracking_protection_purge_duration__overflow {
    sql: ${TABLE}.metrics.timing_distribution.bounce_tracking_protection_purge_duration.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Bounce Tracking Protection Purge Duration"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__bounce_tracking_protection_purge_duration__range {
    sql: ${TABLE}.metrics.timing_distribution.bounce_tracking_protection_purge_duration.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__bounce_tracking_protection_purge_duration__sum {
    sql: ${TABLE}.metrics.timing_distribution.bounce_tracking_protection_purge_duration.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Bounce Tracking Protection Purge Duration"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__bounce_tracking_protection_purge_duration__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.bounce_tracking_protection_purge_duration.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Bounce Tracking Protection Purge Duration"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__bounce_tracking_protection_purge_duration__underflow {
    sql: ${TABLE}.metrics.timing_distribution.bounce_tracking_protection_purge_duration.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Bounce Tracking Protection Purge Duration"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__bounce_tracking_protection_purge_duration__values {
    sql: ${TABLE}.metrics.timing_distribution.bounce_tracking_protection_purge_duration.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__cert_verification_time_failure__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.cert_verification_time_failure.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Cert Verification Time Failure"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__cert_verification_time_failure__count {
    sql: ${TABLE}.metrics.timing_distribution.cert_verification_time_failure.count ;;
    type: number
    group_label: "Metrics Timing Distribution Cert Verification Time Failure"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__cert_verification_time_failure__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.cert_verification_time_failure.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Cert Verification Time Failure"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__cert_verification_time_failure__overflow {
    sql: ${TABLE}.metrics.timing_distribution.cert_verification_time_failure.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Cert Verification Time Failure"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__cert_verification_time_failure__range {
    sql: ${TABLE}.metrics.timing_distribution.cert_verification_time_failure.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__cert_verification_time_failure__sum {
    sql: ${TABLE}.metrics.timing_distribution.cert_verification_time_failure.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Cert Verification Time Failure"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__cert_verification_time_failure__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.cert_verification_time_failure.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Cert Verification Time Failure"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__cert_verification_time_failure__underflow {
    sql: ${TABLE}.metrics.timing_distribution.cert_verification_time_failure.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Cert Verification Time Failure"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__cert_verification_time_failure__values {
    sql: ${TABLE}.metrics.timing_distribution.cert_verification_time_failure.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__cert_verification_time_success__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.cert_verification_time_success.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Cert Verification Time Success"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__cert_verification_time_success__count {
    sql: ${TABLE}.metrics.timing_distribution.cert_verification_time_success.count ;;
    type: number
    group_label: "Metrics Timing Distribution Cert Verification Time Success"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__cert_verification_time_success__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.cert_verification_time_success.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Cert Verification Time Success"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__cert_verification_time_success__overflow {
    sql: ${TABLE}.metrics.timing_distribution.cert_verification_time_success.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Cert Verification Time Success"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__cert_verification_time_success__range {
    sql: ${TABLE}.metrics.timing_distribution.cert_verification_time_success.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__cert_verification_time_success__sum {
    sql: ${TABLE}.metrics.timing_distribution.cert_verification_time_success.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Cert Verification Time Success"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__cert_verification_time_success__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.cert_verification_time_success.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Cert Verification Time Success"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__cert_verification_time_success__underflow {
    sql: ${TABLE}.metrics.timing_distribution.cert_verification_time_success.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Cert Verification Time Success"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__cert_verification_time_success__values {
    sql: ${TABLE}.metrics.timing_distribution.cert_verification_time_success.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__cert_verifier_cert_trust_evaluation_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.cert_verifier_cert_trust_evaluation_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Cert Verifier Cert Trust Evaluation Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__cert_verifier_cert_trust_evaluation_time__count {
    sql: ${TABLE}.metrics.timing_distribution.cert_verifier_cert_trust_evaluation_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Cert Verifier Cert Trust Evaluation Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__cert_verifier_cert_trust_evaluation_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.cert_verifier_cert_trust_evaluation_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Cert Verifier Cert Trust Evaluation Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__cert_verifier_cert_trust_evaluation_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.cert_verifier_cert_trust_evaluation_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Cert Verifier Cert Trust Evaluation Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__cert_verifier_cert_trust_evaluation_time__range {
    sql: ${TABLE}.metrics.timing_distribution.cert_verifier_cert_trust_evaluation_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__cert_verifier_cert_trust_evaluation_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.cert_verifier_cert_trust_evaluation_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Cert Verifier Cert Trust Evaluation Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__cert_verifier_cert_trust_evaluation_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.cert_verifier_cert_trust_evaluation_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Cert Verifier Cert Trust Evaluation Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__cert_verifier_cert_trust_evaluation_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.cert_verifier_cert_trust_evaluation_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Cert Verifier Cert Trust Evaluation Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__cert_verifier_cert_trust_evaluation_time__values {
    sql: ${TABLE}.metrics.timing_distribution.cert_verifier_cert_trust_evaluation_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__cookie_banners_click_handle_duration__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.cookie_banners_click_handle_duration.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Cookie Banners Click Handle Duration"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__cookie_banners_click_handle_duration__count {
    sql: ${TABLE}.metrics.timing_distribution.cookie_banners_click_handle_duration.count ;;
    type: number
    group_label: "Metrics Timing Distribution Cookie Banners Click Handle Duration"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__cookie_banners_click_handle_duration__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.cookie_banners_click_handle_duration.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Cookie Banners Click Handle Duration"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__cookie_banners_click_handle_duration__overflow {
    sql: ${TABLE}.metrics.timing_distribution.cookie_banners_click_handle_duration.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Cookie Banners Click Handle Duration"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__cookie_banners_click_handle_duration__range {
    sql: ${TABLE}.metrics.timing_distribution.cookie_banners_click_handle_duration.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__cookie_banners_click_handle_duration__sum {
    sql: ${TABLE}.metrics.timing_distribution.cookie_banners_click_handle_duration.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Cookie Banners Click Handle Duration"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__cookie_banners_click_handle_duration__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.cookie_banners_click_handle_duration.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Cookie Banners Click Handle Duration"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__cookie_banners_click_handle_duration__underflow {
    sql: ${TABLE}.metrics.timing_distribution.cookie_banners_click_handle_duration.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Cookie Banners Click Handle Duration"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__cookie_banners_click_handle_duration__values {
    sql: ${TABLE}.metrics.timing_distribution.cookie_banners_click_handle_duration.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__cookie_banners_cmp_handle_duration__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.cookie_banners_cmp_handle_duration.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Cookie Banners Cmp Handle Duration"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__cookie_banners_cmp_handle_duration__count {
    sql: ${TABLE}.metrics.timing_distribution.cookie_banners_cmp_handle_duration.count ;;
    type: number
    group_label: "Metrics Timing Distribution Cookie Banners Cmp Handle Duration"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__cookie_banners_cmp_handle_duration__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.cookie_banners_cmp_handle_duration.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Cookie Banners Cmp Handle Duration"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__cookie_banners_cmp_handle_duration__overflow {
    sql: ${TABLE}.metrics.timing_distribution.cookie_banners_cmp_handle_duration.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Cookie Banners Cmp Handle Duration"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__cookie_banners_cmp_handle_duration__range {
    sql: ${TABLE}.metrics.timing_distribution.cookie_banners_cmp_handle_duration.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__cookie_banners_cmp_handle_duration__sum {
    sql: ${TABLE}.metrics.timing_distribution.cookie_banners_cmp_handle_duration.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Cookie Banners Cmp Handle Duration"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__cookie_banners_cmp_handle_duration__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.cookie_banners_cmp_handle_duration.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Cookie Banners Cmp Handle Duration"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__cookie_banners_cmp_handle_duration__underflow {
    sql: ${TABLE}.metrics.timing_distribution.cookie_banners_cmp_handle_duration.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Cookie Banners Cmp Handle Duration"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__cookie_banners_cmp_handle_duration__values {
    sql: ${TABLE}.metrics.timing_distribution.cookie_banners_cmp_handle_duration.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_evaluate_rules_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_evaluate_rules_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Apis Dnr Evaluate Rules Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_evaluate_rules_time__count {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_evaluate_rules_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Apis Dnr Evaluate Rules Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_evaluate_rules_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_evaluate_rules_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Extensions Apis Dnr Evaluate Rules Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_evaluate_rules_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_evaluate_rules_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Apis Dnr Evaluate Rules Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_evaluate_rules_time__range {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_evaluate_rules_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_evaluate_rules_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_evaluate_rules_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Apis Dnr Evaluate Rules Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_evaluate_rules_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_evaluate_rules_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Extensions Apis Dnr Evaluate Rules Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_evaluate_rules_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_evaluate_rules_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Apis Dnr Evaluate Rules Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_evaluate_rules_time__values {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_evaluate_rules_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_startup_cache_read_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_startup_cache_read_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Apis Dnr Startup Cache Read Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_startup_cache_read_time__count {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_startup_cache_read_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Apis Dnr Startup Cache Read Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_startup_cache_read_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_startup_cache_read_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Extensions Apis Dnr Startup Cache Read Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_startup_cache_read_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_startup_cache_read_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Apis Dnr Startup Cache Read Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_startup_cache_read_time__range {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_startup_cache_read_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_startup_cache_read_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_startup_cache_read_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Apis Dnr Startup Cache Read Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_startup_cache_read_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_startup_cache_read_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Extensions Apis Dnr Startup Cache Read Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_startup_cache_read_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_startup_cache_read_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Apis Dnr Startup Cache Read Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_startup_cache_read_time__values {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_startup_cache_read_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_startup_cache_write_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_startup_cache_write_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Apis Dnr Startup Cache Write Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_startup_cache_write_time__count {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_startup_cache_write_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Apis Dnr Startup Cache Write Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_startup_cache_write_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_startup_cache_write_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Extensions Apis Dnr Startup Cache Write Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_startup_cache_write_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_startup_cache_write_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Apis Dnr Startup Cache Write Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_startup_cache_write_time__range {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_startup_cache_write_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_startup_cache_write_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_startup_cache_write_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Apis Dnr Startup Cache Write Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_startup_cache_write_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_startup_cache_write_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Extensions Apis Dnr Startup Cache Write Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_startup_cache_write_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_startup_cache_write_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Apis Dnr Startup Cache Write Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_startup_cache_write_time__values {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_startup_cache_write_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_validate_rules_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_validate_rules_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Apis Dnr Validate Rules Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_validate_rules_time__count {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_validate_rules_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Apis Dnr Validate Rules Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_validate_rules_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_validate_rules_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Extensions Apis Dnr Validate Rules Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_validate_rules_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_validate_rules_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Apis Dnr Validate Rules Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_validate_rules_time__range {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_validate_rules_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_validate_rules_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_validate_rules_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Apis Dnr Validate Rules Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_validate_rules_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_validate_rules_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Extensions Apis Dnr Validate Rules Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_validate_rules_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_validate_rules_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Apis Dnr Validate Rules Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__extensions_apis_dnr_validate_rules_time__values {
    sql: ${TABLE}.metrics.timing_distribution.extensions_apis_dnr_validate_rules_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__extensions_timing_background_page_load__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_background_page_load.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Background Page Load"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__extensions_timing_background_page_load__count {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_background_page_load.count ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Background Page Load"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__extensions_timing_background_page_load__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_background_page_load.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Extensions Timing Background Page Load"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__extensions_timing_background_page_load__overflow {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_background_page_load.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Background Page Load"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__extensions_timing_background_page_load__range {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_background_page_load.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__extensions_timing_background_page_load__sum {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_background_page_load.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Background Page Load"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__extensions_timing_background_page_load__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_background_page_load.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Extensions Timing Background Page Load"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__extensions_timing_background_page_load__underflow {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_background_page_load.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Background Page Load"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__extensions_timing_background_page_load__values {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_background_page_load.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__extensions_timing_browser_action_popup_open__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_browser_action_popup_open.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Browser Action Popup Open"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__extensions_timing_browser_action_popup_open__count {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_browser_action_popup_open.count ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Browser Action Popup Open"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__extensions_timing_browser_action_popup_open__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_browser_action_popup_open.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Extensions Timing Browser Action Popup Open"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__extensions_timing_browser_action_popup_open__overflow {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_browser_action_popup_open.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Browser Action Popup Open"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__extensions_timing_browser_action_popup_open__range {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_browser_action_popup_open.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__extensions_timing_browser_action_popup_open__sum {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_browser_action_popup_open.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Browser Action Popup Open"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__extensions_timing_browser_action_popup_open__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_browser_action_popup_open.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Extensions Timing Browser Action Popup Open"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__extensions_timing_browser_action_popup_open__underflow {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_browser_action_popup_open.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Browser Action Popup Open"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__extensions_timing_browser_action_popup_open__values {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_browser_action_popup_open.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__extensions_timing_content_script_injection__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_content_script_injection.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Content Script Injection"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__extensions_timing_content_script_injection__count {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_content_script_injection.count ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Content Script Injection"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__extensions_timing_content_script_injection__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_content_script_injection.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Extensions Timing Content Script Injection"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__extensions_timing_content_script_injection__overflow {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_content_script_injection.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Content Script Injection"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__extensions_timing_content_script_injection__range {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_content_script_injection.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__extensions_timing_content_script_injection__sum {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_content_script_injection.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Content Script Injection"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__extensions_timing_content_script_injection__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_content_script_injection.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Extensions Timing Content Script Injection"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__extensions_timing_content_script_injection__underflow {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_content_script_injection.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Content Script Injection"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__extensions_timing_content_script_injection__values {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_content_script_injection.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__extensions_timing_extension_startup__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_extension_startup.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Extension Startup"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__extensions_timing_extension_startup__count {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_extension_startup.count ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Extension Startup"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__extensions_timing_extension_startup__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_extension_startup.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Extensions Timing Extension Startup"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__extensions_timing_extension_startup__overflow {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_extension_startup.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Extension Startup"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__extensions_timing_extension_startup__range {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_extension_startup.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__extensions_timing_extension_startup__sum {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_extension_startup.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Extension Startup"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__extensions_timing_extension_startup__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_extension_startup.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Extensions Timing Extension Startup"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__extensions_timing_extension_startup__underflow {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_extension_startup.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Extension Startup"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__extensions_timing_extension_startup__values {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_extension_startup.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__extensions_timing_page_action_popup_open__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_page_action_popup_open.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Page Action Popup Open"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__extensions_timing_page_action_popup_open__count {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_page_action_popup_open.count ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Page Action Popup Open"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__extensions_timing_page_action_popup_open__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_page_action_popup_open.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Extensions Timing Page Action Popup Open"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__extensions_timing_page_action_popup_open__overflow {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_page_action_popup_open.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Page Action Popup Open"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__extensions_timing_page_action_popup_open__range {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_page_action_popup_open.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__extensions_timing_page_action_popup_open__sum {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_page_action_popup_open.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Page Action Popup Open"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__extensions_timing_page_action_popup_open__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_page_action_popup_open.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Extensions Timing Page Action Popup Open"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__extensions_timing_page_action_popup_open__underflow {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_page_action_popup_open.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Page Action Popup Open"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__extensions_timing_page_action_popup_open__values {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_page_action_popup_open.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_get_idb__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_get_idb.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Storage Local Get Idb"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_get_idb__count {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_get_idb.count ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Storage Local Get Idb"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_get_idb__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_get_idb.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Extensions Timing Storage Local Get Idb"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_get_idb__overflow {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_get_idb.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Storage Local Get Idb"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_get_idb__range {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_get_idb.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_get_idb__sum {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_get_idb.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Storage Local Get Idb"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_get_idb__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_get_idb.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Extensions Timing Storage Local Get Idb"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_get_idb__underflow {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_get_idb.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Storage Local Get Idb"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_get_idb__values {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_get_idb.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_get_json__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_get_json.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Storage Local Get Json"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_get_json__count {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_get_json.count ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Storage Local Get Json"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_get_json__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_get_json.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Extensions Timing Storage Local Get Json"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_get_json__overflow {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_get_json.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Storage Local Get Json"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_get_json__range {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_get_json.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_get_json__sum {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_get_json.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Storage Local Get Json"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_get_json__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_get_json.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Extensions Timing Storage Local Get Json"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_get_json__underflow {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_get_json.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Storage Local Get Json"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_get_json__values {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_get_json.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_set_idb__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_set_idb.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Storage Local Set Idb"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_set_idb__count {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_set_idb.count ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Storage Local Set Idb"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_set_idb__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_set_idb.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Extensions Timing Storage Local Set Idb"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_set_idb__overflow {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_set_idb.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Storage Local Set Idb"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_set_idb__range {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_set_idb.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_set_idb__sum {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_set_idb.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Storage Local Set Idb"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_set_idb__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_set_idb.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Extensions Timing Storage Local Set Idb"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_set_idb__underflow {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_set_idb.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Storage Local Set Idb"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_set_idb__values {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_set_idb.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_set_json__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_set_json.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Storage Local Set Json"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_set_json__count {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_set_json.count ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Storage Local Set Json"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_set_json__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_set_json.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Extensions Timing Storage Local Set Json"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_set_json__overflow {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_set_json.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Storage Local Set Json"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_set_json__range {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_set_json.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_set_json__sum {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_set_json.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Storage Local Set Json"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_set_json__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_set_json.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Extensions Timing Storage Local Set Json"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_set_json__underflow {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_set_json.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Extensions Timing Storage Local Set Json"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__extensions_timing_storage_local_set_json__values {
    sql: ${TABLE}.metrics.timing_distribution.extensions_timing_storage_local_set_json.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__fingerprinting_protection_canvas_noise_calculate_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.fingerprinting_protection_canvas_noise_calculate_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Fingerprinting Protection Canvas Noise Calculate Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__fingerprinting_protection_canvas_noise_calculate_time__count {
    sql: ${TABLE}.metrics.timing_distribution.fingerprinting_protection_canvas_noise_calculate_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Fingerprinting Protection Canvas Noise Calculate Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__fingerprinting_protection_canvas_noise_calculate_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.fingerprinting_protection_canvas_noise_calculate_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Fingerprinting Protection Canvas Noise Calculate Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__fingerprinting_protection_canvas_noise_calculate_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.fingerprinting_protection_canvas_noise_calculate_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Fingerprinting Protection Canvas Noise Calculate Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__fingerprinting_protection_canvas_noise_calculate_time__range {
    sql: ${TABLE}.metrics.timing_distribution.fingerprinting_protection_canvas_noise_calculate_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__fingerprinting_protection_canvas_noise_calculate_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.fingerprinting_protection_canvas_noise_calculate_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Fingerprinting Protection Canvas Noise Calculate Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__fingerprinting_protection_canvas_noise_calculate_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.fingerprinting_protection_canvas_noise_calculate_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Fingerprinting Protection Canvas Noise Calculate Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__fingerprinting_protection_canvas_noise_calculate_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.fingerprinting_protection_canvas_noise_calculate_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Fingerprinting Protection Canvas Noise Calculate Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__fingerprinting_protection_canvas_noise_calculate_time__values {
    sql: ${TABLE}.metrics.timing_distribution.fingerprinting_protection_canvas_noise_calculate_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__fog_ipc_flush_durations__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.fog_ipc_flush_durations.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Fog Ipc Flush Durations"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__fog_ipc_flush_durations__count {
    sql: ${TABLE}.metrics.timing_distribution.fog_ipc_flush_durations.count ;;
    type: number
    group_label: "Metrics Timing Distribution Fog Ipc Flush Durations"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__fog_ipc_flush_durations__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.fog_ipc_flush_durations.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Fog Ipc Flush Durations"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__fog_ipc_flush_durations__overflow {
    sql: ${TABLE}.metrics.timing_distribution.fog_ipc_flush_durations.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Fog Ipc Flush Durations"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__fog_ipc_flush_durations__range {
    sql: ${TABLE}.metrics.timing_distribution.fog_ipc_flush_durations.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__fog_ipc_flush_durations__sum {
    sql: ${TABLE}.metrics.timing_distribution.fog_ipc_flush_durations.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Fog Ipc Flush Durations"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__fog_ipc_flush_durations__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.fog_ipc_flush_durations.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Fog Ipc Flush Durations"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__fog_ipc_flush_durations__underflow {
    sql: ${TABLE}.metrics.timing_distribution.fog_ipc_flush_durations.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Fog Ipc Flush Durations"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__fog_ipc_flush_durations__values {
    sql: ${TABLE}.metrics.timing_distribution.fog_ipc_flush_durations.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__fog_validation_gvsv_composite_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.fog_validation_gvsv_composite_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Fog Validation Gvsv Composite Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__fog_validation_gvsv_composite_time__count {
    sql: ${TABLE}.metrics.timing_distribution.fog_validation_gvsv_composite_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Fog Validation Gvsv Composite Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__fog_validation_gvsv_composite_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.fog_validation_gvsv_composite_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Fog Validation Gvsv Composite Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__fog_validation_gvsv_composite_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.fog_validation_gvsv_composite_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Fog Validation Gvsv Composite Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__fog_validation_gvsv_composite_time__range {
    sql: ${TABLE}.metrics.timing_distribution.fog_validation_gvsv_composite_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__fog_validation_gvsv_composite_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.fog_validation_gvsv_composite_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Fog Validation Gvsv Composite Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__fog_validation_gvsv_composite_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.fog_validation_gvsv_composite_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Fog Validation Gvsv Composite Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__fog_validation_gvsv_composite_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.fog_validation_gvsv_composite_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Fog Validation Gvsv Composite Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__fog_validation_gvsv_composite_time__values {
    sql: ${TABLE}.metrics.timing_distribution.fog_validation_gvsv_composite_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__geckoview_content_process_lifetime__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_content_process_lifetime.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Geckoview Content Process Lifetime"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__geckoview_content_process_lifetime__count {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_content_process_lifetime.count ;;
    type: number
    group_label: "Metrics Timing Distribution Geckoview Content Process Lifetime"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__geckoview_content_process_lifetime__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_content_process_lifetime.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Geckoview Content Process Lifetime"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__geckoview_content_process_lifetime__overflow {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_content_process_lifetime.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Geckoview Content Process Lifetime"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__geckoview_content_process_lifetime__range {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_content_process_lifetime.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__geckoview_content_process_lifetime__sum {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_content_process_lifetime.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Geckoview Content Process Lifetime"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__geckoview_content_process_lifetime__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_content_process_lifetime.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Geckoview Content Process Lifetime"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__geckoview_content_process_lifetime__underflow {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_content_process_lifetime.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Geckoview Content Process Lifetime"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__geckoview_content_process_lifetime__values {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_content_process_lifetime.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__geckoview_page_load_progress_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_page_load_progress_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Geckoview Page Load Progress Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__geckoview_page_load_progress_time__count {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_page_load_progress_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Geckoview Page Load Progress Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__geckoview_page_load_progress_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_page_load_progress_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Geckoview Page Load Progress Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__geckoview_page_load_progress_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_page_load_progress_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Geckoview Page Load Progress Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__geckoview_page_load_progress_time__range {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_page_load_progress_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__geckoview_page_load_progress_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_page_load_progress_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Geckoview Page Load Progress Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__geckoview_page_load_progress_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_page_load_progress_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Geckoview Page Load Progress Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__geckoview_page_load_progress_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_page_load_progress_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Geckoview Page Load Progress Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__geckoview_page_load_progress_time__values {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_page_load_progress_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__geckoview_page_load_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_page_load_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Geckoview Page Load Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__geckoview_page_load_time__count {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_page_load_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Geckoview Page Load Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__geckoview_page_load_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_page_load_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Geckoview Page Load Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__geckoview_page_load_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_page_load_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Geckoview Page Load Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__geckoview_page_load_time__range {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_page_load_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__geckoview_page_load_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_page_load_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Geckoview Page Load Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__geckoview_page_load_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_page_load_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Geckoview Page Load Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__geckoview_page_load_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_page_load_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Geckoview Page Load Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__geckoview_page_load_time__values {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_page_load_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__geckoview_page_reload_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_page_reload_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Geckoview Page Reload Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__geckoview_page_reload_time__count {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_page_reload_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Geckoview Page Reload Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__geckoview_page_reload_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_page_reload_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Geckoview Page Reload Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__geckoview_page_reload_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_page_reload_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Geckoview Page Reload Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__geckoview_page_reload_time__range {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_page_reload_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__geckoview_page_reload_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_page_reload_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Geckoview Page Reload Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__geckoview_page_reload_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_page_reload_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Geckoview Page Reload Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__geckoview_page_reload_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_page_reload_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Geckoview Page Reload Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__geckoview_page_reload_time__values {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_page_reload_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__geckoview_startup_runtime__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_startup_runtime.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Geckoview Startup Runtime"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__geckoview_startup_runtime__count {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_startup_runtime.count ;;
    type: number
    group_label: "Metrics Timing Distribution Geckoview Startup Runtime"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__geckoview_startup_runtime__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_startup_runtime.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Geckoview Startup Runtime"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__geckoview_startup_runtime__overflow {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_startup_runtime.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Geckoview Startup Runtime"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__geckoview_startup_runtime__range {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_startup_runtime.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__geckoview_startup_runtime__sum {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_startup_runtime.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Geckoview Startup Runtime"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__geckoview_startup_runtime__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_startup_runtime.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Geckoview Startup Runtime"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__geckoview_startup_runtime__underflow {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_startup_runtime.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Geckoview Startup Runtime"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__geckoview_startup_runtime__values {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_startup_runtime.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__gfx_checkerboard_duration__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.gfx_checkerboard_duration.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Gfx Checkerboard Duration"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__gfx_checkerboard_duration__count {
    sql: ${TABLE}.metrics.timing_distribution.gfx_checkerboard_duration.count ;;
    type: number
    group_label: "Metrics Timing Distribution Gfx Checkerboard Duration"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__gfx_checkerboard_duration__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.gfx_checkerboard_duration.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Gfx Checkerboard Duration"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__gfx_checkerboard_duration__overflow {
    sql: ${TABLE}.metrics.timing_distribution.gfx_checkerboard_duration.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Gfx Checkerboard Duration"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__gfx_checkerboard_duration__range {
    sql: ${TABLE}.metrics.timing_distribution.gfx_checkerboard_duration.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__gfx_checkerboard_duration__sum {
    sql: ${TABLE}.metrics.timing_distribution.gfx_checkerboard_duration.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Gfx Checkerboard Duration"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__gfx_checkerboard_duration__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.gfx_checkerboard_duration.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Gfx Checkerboard Duration"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__gfx_checkerboard_duration__underflow {
    sql: ${TABLE}.metrics.timing_distribution.gfx_checkerboard_duration.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Gfx Checkerboard Duration"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__gfx_checkerboard_duration__values {
    sql: ${TABLE}.metrics.timing_distribution.gfx_checkerboard_duration.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__gfx_checkerboard_potential_duration__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.gfx_checkerboard_potential_duration.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Gfx Checkerboard Potential Duration"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__gfx_checkerboard_potential_duration__count {
    sql: ${TABLE}.metrics.timing_distribution.gfx_checkerboard_potential_duration.count ;;
    type: number
    group_label: "Metrics Timing Distribution Gfx Checkerboard Potential Duration"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__gfx_checkerboard_potential_duration__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.gfx_checkerboard_potential_duration.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Gfx Checkerboard Potential Duration"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__gfx_checkerboard_potential_duration__overflow {
    sql: ${TABLE}.metrics.timing_distribution.gfx_checkerboard_potential_duration.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Gfx Checkerboard Potential Duration"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__gfx_checkerboard_potential_duration__range {
    sql: ${TABLE}.metrics.timing_distribution.gfx_checkerboard_potential_duration.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__gfx_checkerboard_potential_duration__sum {
    sql: ${TABLE}.metrics.timing_distribution.gfx_checkerboard_potential_duration.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Gfx Checkerboard Potential Duration"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__gfx_checkerboard_potential_duration__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.gfx_checkerboard_potential_duration.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Gfx Checkerboard Potential Duration"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__gfx_checkerboard_potential_duration__underflow {
    sql: ${TABLE}.metrics.timing_distribution.gfx_checkerboard_potential_duration.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Gfx Checkerboard Potential Duration"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__gfx_checkerboard_potential_duration__values {
    sql: ${TABLE}.metrics.timing_distribution.gfx_checkerboard_potential_duration.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__gfx_composite_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.gfx_composite_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Gfx Composite Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__gfx_composite_time__count {
    sql: ${TABLE}.metrics.timing_distribution.gfx_composite_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Gfx Composite Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__gfx_composite_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.gfx_composite_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Gfx Composite Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__gfx_composite_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.gfx_composite_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Gfx Composite Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__gfx_composite_time__range {
    sql: ${TABLE}.metrics.timing_distribution.gfx_composite_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__gfx_composite_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.gfx_composite_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Gfx Composite Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__gfx_composite_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.gfx_composite_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Gfx Composite Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__gfx_composite_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.gfx_composite_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Gfx Composite Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__gfx_composite_time__values {
    sql: ${TABLE}.metrics.timing_distribution.gfx_composite_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__gfx_content_full_paint_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.gfx_content_full_paint_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Gfx Content Full Paint Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__gfx_content_full_paint_time__count {
    sql: ${TABLE}.metrics.timing_distribution.gfx_content_full_paint_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Gfx Content Full Paint Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__gfx_content_full_paint_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.gfx_content_full_paint_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Gfx Content Full Paint Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__gfx_content_full_paint_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.gfx_content_full_paint_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Gfx Content Full Paint Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__gfx_content_full_paint_time__range {
    sql: ${TABLE}.metrics.timing_distribution.gfx_content_full_paint_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__gfx_content_full_paint_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.gfx_content_full_paint_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Gfx Content Full Paint Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__gfx_content_full_paint_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.gfx_content_full_paint_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Gfx Content Full Paint Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__gfx_content_full_paint_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.gfx_content_full_paint_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Gfx Content Full Paint Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__gfx_content_full_paint_time__values {
    sql: ${TABLE}.metrics.timing_distribution.gfx_content_full_paint_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__gfx_content_paint_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.gfx_content_paint_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Gfx Content Paint Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__gfx_content_paint_time__count {
    sql: ${TABLE}.metrics.timing_distribution.gfx_content_paint_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Gfx Content Paint Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__gfx_content_paint_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.gfx_content_paint_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Gfx Content Paint Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__gfx_content_paint_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.gfx_content_paint_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Gfx Content Paint Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__gfx_content_paint_time__range {
    sql: ${TABLE}.metrics.timing_distribution.gfx_content_paint_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__gfx_content_paint_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.gfx_content_paint_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Gfx Content Paint Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__gfx_content_paint_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.gfx_content_paint_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Gfx Content Paint Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__gfx_content_paint_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.gfx_content_paint_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Gfx Content Paint Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__gfx_content_paint_time__values {
    sql: ${TABLE}.metrics.timing_distribution.gfx_content_paint_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__gfx_scroll_present_latency__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.gfx_scroll_present_latency.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Gfx Scroll Present Latency"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__gfx_scroll_present_latency__count {
    sql: ${TABLE}.metrics.timing_distribution.gfx_scroll_present_latency.count ;;
    type: number
    group_label: "Metrics Timing Distribution Gfx Scroll Present Latency"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__gfx_scroll_present_latency__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.gfx_scroll_present_latency.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Gfx Scroll Present Latency"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__gfx_scroll_present_latency__overflow {
    sql: ${TABLE}.metrics.timing_distribution.gfx_scroll_present_latency.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Gfx Scroll Present Latency"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__gfx_scroll_present_latency__range {
    sql: ${TABLE}.metrics.timing_distribution.gfx_scroll_present_latency.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__gfx_scroll_present_latency__sum {
    sql: ${TABLE}.metrics.timing_distribution.gfx_scroll_present_latency.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Gfx Scroll Present Latency"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__gfx_scroll_present_latency__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.gfx_scroll_present_latency.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Gfx Scroll Present Latency"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__gfx_scroll_present_latency__underflow {
    sql: ${TABLE}.metrics.timing_distribution.gfx_scroll_present_latency.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Gfx Scroll Present Latency"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__gfx_scroll_present_latency__values {
    sql: ${TABLE}.metrics.timing_distribution.gfx_scroll_present_latency.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__glean_database_write_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.glean_database_write_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Database Write Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__glean_database_write_time__count {
    sql: ${TABLE}.metrics.timing_distribution.glean_database_write_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Database Write Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__glean_database_write_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.glean_database_write_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Glean Database Write Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__glean_database_write_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.glean_database_write_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Database Write Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__glean_database_write_time__range {
    sql: ${TABLE}.metrics.timing_distribution.glean_database_write_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__glean_database_write_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.glean_database_write_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Database Write Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__glean_database_write_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.glean_database_write_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Glean Database Write Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__glean_database_write_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.glean_database_write_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Database Write Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__glean_database_write_time__values {
    sql: ${TABLE}.metrics.timing_distribution.glean_database_write_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__glean_upload_send_failure__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_failure.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Upload Send Failure"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__glean_upload_send_failure__count {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_failure.count ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Upload Send Failure"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__glean_upload_send_failure__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_failure.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Glean Upload Send Failure"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__glean_upload_send_failure__overflow {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_failure.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Upload Send Failure"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__glean_upload_send_failure__range {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_failure.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__glean_upload_send_failure__sum {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_failure.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Upload Send Failure"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__glean_upload_send_failure__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_failure.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Glean Upload Send Failure"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__glean_upload_send_failure__underflow {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_failure.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Upload Send Failure"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__glean_upload_send_failure__values {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_failure.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__glean_upload_send_success__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_success.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Upload Send Success"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__glean_upload_send_success__count {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_success.count ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Upload Send Success"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__glean_upload_send_success__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_success.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Glean Upload Send Success"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__glean_upload_send_success__overflow {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_success.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Upload Send Success"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__glean_upload_send_success__range {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_success.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__glean_upload_send_success__sum {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_success.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Upload Send Success"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__glean_upload_send_success__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_success.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Glean Upload Send Success"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__glean_upload_send_success__underflow {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_success.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Upload Send Success"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__glean_upload_send_success__values {
    sql: ${TABLE}.metrics.timing_distribution.glean_upload_send_success.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_dispatcher_wait__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_dispatcher_wait.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Validation Shutdown Dispatcher Wait"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_dispatcher_wait__count {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_dispatcher_wait.count ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Validation Shutdown Dispatcher Wait"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_dispatcher_wait__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_dispatcher_wait.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Glean Validation Shutdown Dispatcher Wait"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_dispatcher_wait__overflow {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_dispatcher_wait.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Validation Shutdown Dispatcher Wait"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_dispatcher_wait__range {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_dispatcher_wait.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_dispatcher_wait__sum {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_dispatcher_wait.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Validation Shutdown Dispatcher Wait"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_dispatcher_wait__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_dispatcher_wait.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Glean Validation Shutdown Dispatcher Wait"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_dispatcher_wait__underflow {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_dispatcher_wait.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Validation Shutdown Dispatcher Wait"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_dispatcher_wait__values {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_dispatcher_wait.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_wait__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_wait.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Validation Shutdown Wait"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_wait__count {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_wait.count ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Validation Shutdown Wait"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_wait__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_wait.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Glean Validation Shutdown Wait"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_wait__overflow {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_wait.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Validation Shutdown Wait"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_wait__range {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_wait.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_wait__sum {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_wait.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Validation Shutdown Wait"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_wait__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_wait.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Glean Validation Shutdown Wait"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_wait__underflow {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_wait.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Glean Validation Shutdown Wait"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__glean_validation_shutdown_wait__values {
    sql: ${TABLE}.metrics.timing_distribution.glean_validation_shutdown_wait.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__httpsfirst_downgrade_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.httpsfirst_downgrade_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Httpsfirst Downgrade Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__httpsfirst_downgrade_time__count {
    sql: ${TABLE}.metrics.timing_distribution.httpsfirst_downgrade_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Httpsfirst Downgrade Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__httpsfirst_downgrade_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.httpsfirst_downgrade_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Httpsfirst Downgrade Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__httpsfirst_downgrade_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.httpsfirst_downgrade_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Httpsfirst Downgrade Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__httpsfirst_downgrade_time__range {
    sql: ${TABLE}.metrics.timing_distribution.httpsfirst_downgrade_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__httpsfirst_downgrade_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.httpsfirst_downgrade_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Httpsfirst Downgrade Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__httpsfirst_downgrade_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.httpsfirst_downgrade_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Httpsfirst Downgrade Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__httpsfirst_downgrade_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.httpsfirst_downgrade_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Httpsfirst Downgrade Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__httpsfirst_downgrade_time__values {
    sql: ${TABLE}.metrics.timing_distribution.httpsfirst_downgrade_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__httpsfirst_downgrade_time_schemeless__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.httpsfirst_downgrade_time_schemeless.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Httpsfirst Downgrade Time Schemeless"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__httpsfirst_downgrade_time_schemeless__count {
    sql: ${TABLE}.metrics.timing_distribution.httpsfirst_downgrade_time_schemeless.count ;;
    type: number
    group_label: "Metrics Timing Distribution Httpsfirst Downgrade Time Schemeless"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__httpsfirst_downgrade_time_schemeless__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.httpsfirst_downgrade_time_schemeless.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Httpsfirst Downgrade Time Schemeless"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__httpsfirst_downgrade_time_schemeless__overflow {
    sql: ${TABLE}.metrics.timing_distribution.httpsfirst_downgrade_time_schemeless.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Httpsfirst Downgrade Time Schemeless"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__httpsfirst_downgrade_time_schemeless__range {
    sql: ${TABLE}.metrics.timing_distribution.httpsfirst_downgrade_time_schemeless.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__httpsfirst_downgrade_time_schemeless__sum {
    sql: ${TABLE}.metrics.timing_distribution.httpsfirst_downgrade_time_schemeless.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Httpsfirst Downgrade Time Schemeless"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__httpsfirst_downgrade_time_schemeless__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.httpsfirst_downgrade_time_schemeless.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Httpsfirst Downgrade Time Schemeless"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__httpsfirst_downgrade_time_schemeless__underflow {
    sql: ${TABLE}.metrics.timing_distribution.httpsfirst_downgrade_time_schemeless.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Httpsfirst Downgrade Time Schemeless"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__httpsfirst_downgrade_time_schemeless__values {
    sql: ${TABLE}.metrics.timing_distribution.httpsfirst_downgrade_time_schemeless.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__javascript_gc_compact_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_compact_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Compact Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__javascript_gc_compact_time__count {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_compact_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Compact Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__javascript_gc_compact_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_compact_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Javascript Gc Compact Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__javascript_gc_compact_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_compact_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Compact Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__javascript_gc_compact_time__range {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_compact_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__javascript_gc_compact_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_compact_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Compact Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__javascript_gc_compact_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_compact_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Javascript Gc Compact Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__javascript_gc_compact_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_compact_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Compact Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__javascript_gc_compact_time__values {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_compact_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__javascript_gc_mark_roots_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_mark_roots_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Mark Roots Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__javascript_gc_mark_roots_time__count {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_mark_roots_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Mark Roots Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__javascript_gc_mark_roots_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_mark_roots_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Javascript Gc Mark Roots Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__javascript_gc_mark_roots_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_mark_roots_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Mark Roots Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__javascript_gc_mark_roots_time__range {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_mark_roots_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__javascript_gc_mark_roots_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_mark_roots_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Mark Roots Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__javascript_gc_mark_roots_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_mark_roots_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Javascript Gc Mark Roots Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__javascript_gc_mark_roots_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_mark_roots_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Mark Roots Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__javascript_gc_mark_roots_time__values {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_mark_roots_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__javascript_gc_mark_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_mark_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Mark Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__javascript_gc_mark_time__count {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_mark_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Mark Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__javascript_gc_mark_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_mark_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Javascript Gc Mark Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__javascript_gc_mark_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_mark_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Mark Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__javascript_gc_mark_time__range {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_mark_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__javascript_gc_mark_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_mark_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Mark Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__javascript_gc_mark_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_mark_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Javascript Gc Mark Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__javascript_gc_mark_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_mark_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Mark Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__javascript_gc_mark_time__values {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_mark_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__javascript_gc_minor_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_minor_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Minor Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__javascript_gc_minor_time__count {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_minor_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Minor Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__javascript_gc_minor_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_minor_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Javascript Gc Minor Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__javascript_gc_minor_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_minor_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Minor Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__javascript_gc_minor_time__range {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_minor_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__javascript_gc_minor_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_minor_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Minor Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__javascript_gc_minor_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_minor_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Javascript Gc Minor Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__javascript_gc_minor_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_minor_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Minor Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__javascript_gc_minor_time__values {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_minor_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__javascript_gc_prepare_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_prepare_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Prepare Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__javascript_gc_prepare_time__count {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_prepare_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Prepare Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__javascript_gc_prepare_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_prepare_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Javascript Gc Prepare Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__javascript_gc_prepare_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_prepare_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Prepare Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__javascript_gc_prepare_time__range {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_prepare_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__javascript_gc_prepare_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_prepare_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Prepare Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__javascript_gc_prepare_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_prepare_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Javascript Gc Prepare Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__javascript_gc_prepare_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_prepare_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Prepare Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__javascript_gc_prepare_time__values {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_prepare_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__javascript_gc_slice_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_slice_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Slice Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__javascript_gc_slice_time__count {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_slice_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Slice Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__javascript_gc_slice_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_slice_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Javascript Gc Slice Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__javascript_gc_slice_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_slice_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Slice Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__javascript_gc_slice_time__range {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_slice_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__javascript_gc_slice_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_slice_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Slice Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__javascript_gc_slice_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_slice_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Javascript Gc Slice Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__javascript_gc_slice_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_slice_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Slice Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__javascript_gc_slice_time__values {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_slice_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__javascript_gc_sweep_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_sweep_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Sweep Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__javascript_gc_sweep_time__count {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_sweep_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Sweep Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__javascript_gc_sweep_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_sweep_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Javascript Gc Sweep Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__javascript_gc_sweep_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_sweep_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Sweep Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__javascript_gc_sweep_time__range {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_sweep_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__javascript_gc_sweep_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_sweep_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Sweep Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__javascript_gc_sweep_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_sweep_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Javascript Gc Sweep Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__javascript_gc_sweep_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_sweep_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Sweep Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__javascript_gc_sweep_time__values {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_sweep_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__javascript_gc_total_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_total_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Total Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__javascript_gc_total_time__count {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_total_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Total Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__javascript_gc_total_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_total_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Javascript Gc Total Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__javascript_gc_total_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_total_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Total Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__javascript_gc_total_time__range {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_total_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__javascript_gc_total_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_total_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Total Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__javascript_gc_total_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_total_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Javascript Gc Total Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__javascript_gc_total_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_total_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Gc Total Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__javascript_gc_total_time__values {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_total_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__javascript_pageload_baseline_compile_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_baseline_compile_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Baseline Compile Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__javascript_pageload_baseline_compile_time__count {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_baseline_compile_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Baseline Compile Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__javascript_pageload_baseline_compile_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_baseline_compile_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Javascript Pageload Baseline Compile Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__javascript_pageload_baseline_compile_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_baseline_compile_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Baseline Compile Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__javascript_pageload_baseline_compile_time__range {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_baseline_compile_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__javascript_pageload_baseline_compile_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_baseline_compile_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Baseline Compile Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__javascript_pageload_baseline_compile_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_baseline_compile_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Javascript Pageload Baseline Compile Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__javascript_pageload_baseline_compile_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_baseline_compile_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Baseline Compile Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__javascript_pageload_baseline_compile_time__values {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_baseline_compile_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__javascript_pageload_delazification_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_delazification_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Delazification Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__javascript_pageload_delazification_time__count {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_delazification_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Delazification Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__javascript_pageload_delazification_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_delazification_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Javascript Pageload Delazification Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__javascript_pageload_delazification_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_delazification_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Delazification Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__javascript_pageload_delazification_time__range {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_delazification_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__javascript_pageload_delazification_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_delazification_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Delazification Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__javascript_pageload_delazification_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_delazification_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Javascript Pageload Delazification Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__javascript_pageload_delazification_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_delazification_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Delazification Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__javascript_pageload_delazification_time__values {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_delazification_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__javascript_pageload_execution_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_execution_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Execution Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__javascript_pageload_execution_time__count {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_execution_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Execution Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__javascript_pageload_execution_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_execution_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Javascript Pageload Execution Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__javascript_pageload_execution_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_execution_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Execution Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__javascript_pageload_execution_time__range {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_execution_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__javascript_pageload_execution_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_execution_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Execution Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__javascript_pageload_execution_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_execution_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Javascript Pageload Execution Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__javascript_pageload_execution_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_execution_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Execution Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__javascript_pageload_execution_time__values {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_execution_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__javascript_pageload_gc_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_gc_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Gc Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__javascript_pageload_gc_time__count {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_gc_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Gc Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__javascript_pageload_gc_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_gc_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Javascript Pageload Gc Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__javascript_pageload_gc_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_gc_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Gc Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__javascript_pageload_gc_time__range {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_gc_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__javascript_pageload_gc_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_gc_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Gc Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__javascript_pageload_gc_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_gc_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Javascript Pageload Gc Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__javascript_pageload_gc_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_gc_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Gc Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__javascript_pageload_gc_time__values {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_gc_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__javascript_pageload_parse_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_parse_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Parse Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__javascript_pageload_parse_time__count {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_parse_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Parse Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__javascript_pageload_parse_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_parse_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Javascript Pageload Parse Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__javascript_pageload_parse_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_parse_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Parse Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__javascript_pageload_parse_time__range {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_parse_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__javascript_pageload_parse_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_parse_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Parse Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__javascript_pageload_parse_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_parse_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Javascript Pageload Parse Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__javascript_pageload_parse_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_parse_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Parse Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__javascript_pageload_parse_time__values {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_parse_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__javascript_pageload_protect_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_protect_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Protect Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__javascript_pageload_protect_time__count {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_protect_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Protect Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__javascript_pageload_protect_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_protect_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Javascript Pageload Protect Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__javascript_pageload_protect_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_protect_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Protect Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__javascript_pageload_protect_time__range {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_protect_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__javascript_pageload_protect_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_protect_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Protect Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__javascript_pageload_protect_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_protect_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Javascript Pageload Protect Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__javascript_pageload_protect_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_protect_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Protect Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__javascript_pageload_protect_time__values {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_protect_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__javascript_pageload_xdr_encode_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_xdr_encode_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Xdr Encode Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__javascript_pageload_xdr_encode_time__count {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_xdr_encode_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Xdr Encode Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__javascript_pageload_xdr_encode_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_xdr_encode_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Javascript Pageload Xdr Encode Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__javascript_pageload_xdr_encode_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_xdr_encode_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Xdr Encode Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__javascript_pageload_xdr_encode_time__range {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_xdr_encode_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__javascript_pageload_xdr_encode_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_xdr_encode_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Xdr Encode Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__javascript_pageload_xdr_encode_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_xdr_encode_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Javascript Pageload Xdr Encode Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__javascript_pageload_xdr_encode_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_xdr_encode_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Javascript Pageload Xdr Encode Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__javascript_pageload_xdr_encode_time__values {
    sql: ${TABLE}.metrics.timing_distribution.javascript_pageload_xdr_encode_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__ls_preparedatastore_processing_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.ls_preparedatastore_processing_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Ls Preparedatastore Processing Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__ls_preparedatastore_processing_time__count {
    sql: ${TABLE}.metrics.timing_distribution.ls_preparedatastore_processing_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Ls Preparedatastore Processing Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__ls_preparedatastore_processing_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.ls_preparedatastore_processing_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Ls Preparedatastore Processing Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__ls_preparedatastore_processing_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.ls_preparedatastore_processing_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Ls Preparedatastore Processing Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__ls_preparedatastore_processing_time__range {
    sql: ${TABLE}.metrics.timing_distribution.ls_preparedatastore_processing_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__ls_preparedatastore_processing_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.ls_preparedatastore_processing_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Ls Preparedatastore Processing Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__ls_preparedatastore_processing_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.ls_preparedatastore_processing_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Ls Preparedatastore Processing Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__ls_preparedatastore_processing_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.ls_preparedatastore_processing_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Ls Preparedatastore Processing Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__ls_preparedatastore_processing_time__values {
    sql: ${TABLE}.metrics.timing_distribution.ls_preparedatastore_processing_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__ls_preparelsdatabase_processing_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.ls_preparelsdatabase_processing_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Ls Preparelsdatabase Processing Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__ls_preparelsdatabase_processing_time__count {
    sql: ${TABLE}.metrics.timing_distribution.ls_preparelsdatabase_processing_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Ls Preparelsdatabase Processing Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__ls_preparelsdatabase_processing_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.ls_preparelsdatabase_processing_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Ls Preparelsdatabase Processing Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__ls_preparelsdatabase_processing_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.ls_preparelsdatabase_processing_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Ls Preparelsdatabase Processing Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__ls_preparelsdatabase_processing_time__range {
    sql: ${TABLE}.metrics.timing_distribution.ls_preparelsdatabase_processing_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__ls_preparelsdatabase_processing_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.ls_preparelsdatabase_processing_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Ls Preparelsdatabase Processing Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__ls_preparelsdatabase_processing_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.ls_preparelsdatabase_processing_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Ls Preparelsdatabase Processing Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__ls_preparelsdatabase_processing_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.ls_preparelsdatabase_processing_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Ls Preparelsdatabase Processing Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__ls_preparelsdatabase_processing_time__values {
    sql: ${TABLE}.metrics.timing_distribution.ls_preparelsdatabase_processing_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_cache_hit_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.network_cache_hit_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Cache Hit Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__network_cache_hit_time__count {
    sql: ${TABLE}.metrics.timing_distribution.network_cache_hit_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Cache Hit Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__network_cache_hit_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.network_cache_hit_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Network Cache Hit Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__network_cache_hit_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.network_cache_hit_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Cache Hit Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__network_cache_hit_time__range {
    sql: ${TABLE}.metrics.timing_distribution.network_cache_hit_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_cache_hit_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_cache_hit_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Network Cache Hit Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__network_cache_hit_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.network_cache_hit_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Network Cache Hit Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__network_cache_hit_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.network_cache_hit_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Cache Hit Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__network_cache_hit_time__values {
    sql: ${TABLE}.metrics.timing_distribution.network_cache_hit_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_cache_read_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.network_cache_read_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Cache Read Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__network_cache_read_time__count {
    sql: ${TABLE}.metrics.timing_distribution.network_cache_read_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Cache Read Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__network_cache_read_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.network_cache_read_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Network Cache Read Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__network_cache_read_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.network_cache_read_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Cache Read Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__network_cache_read_time__range {
    sql: ${TABLE}.metrics.timing_distribution.network_cache_read_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_cache_read_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_cache_read_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Network Cache Read Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__network_cache_read_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.network_cache_read_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Network Cache Read Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__network_cache_read_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.network_cache_read_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Cache Read Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__network_cache_read_time__values {
    sql: ${TABLE}.metrics.timing_distribution.network_cache_read_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_complete_load__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.network_complete_load.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Complete Load"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__network_complete_load__count {
    sql: ${TABLE}.metrics.timing_distribution.network_complete_load.count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Complete Load"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__network_complete_load__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.network_complete_load.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Network Complete Load"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__network_complete_load__overflow {
    sql: ${TABLE}.metrics.timing_distribution.network_complete_load.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Complete Load"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__network_complete_load__range {
    sql: ${TABLE}.metrics.timing_distribution.network_complete_load.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_complete_load__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_complete_load.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Network Complete Load"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__network_complete_load__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.network_complete_load.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Network Complete Load"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__network_complete_load__underflow {
    sql: ${TABLE}.metrics.timing_distribution.network_complete_load.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Complete Load"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__network_complete_load__values {
    sql: ${TABLE}.metrics.timing_distribution.network_complete_load.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_complete_load_cached__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.network_complete_load_cached.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Complete Load Cached"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__network_complete_load_cached__count {
    sql: ${TABLE}.metrics.timing_distribution.network_complete_load_cached.count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Complete Load Cached"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__network_complete_load_cached__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.network_complete_load_cached.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Network Complete Load Cached"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__network_complete_load_cached__overflow {
    sql: ${TABLE}.metrics.timing_distribution.network_complete_load_cached.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Complete Load Cached"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__network_complete_load_cached__range {
    sql: ${TABLE}.metrics.timing_distribution.network_complete_load_cached.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_complete_load_cached__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_complete_load_cached.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Network Complete Load Cached"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__network_complete_load_cached__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.network_complete_load_cached.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Network Complete Load Cached"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__network_complete_load_cached__underflow {
    sql: ${TABLE}.metrics.timing_distribution.network_complete_load_cached.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Complete Load Cached"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__network_complete_load_cached__values {
    sql: ${TABLE}.metrics.timing_distribution.network_complete_load_cached.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_complete_load_net__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.network_complete_load_net.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Complete Load Net"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__network_complete_load_net__count {
    sql: ${TABLE}.metrics.timing_distribution.network_complete_load_net.count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Complete Load Net"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__network_complete_load_net__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.network_complete_load_net.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Network Complete Load Net"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__network_complete_load_net__overflow {
    sql: ${TABLE}.metrics.timing_distribution.network_complete_load_net.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Complete Load Net"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__network_complete_load_net__range {
    sql: ${TABLE}.metrics.timing_distribution.network_complete_load_net.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_complete_load_net__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_complete_load_net.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Network Complete Load Net"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__network_complete_load_net__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.network_complete_load_net.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Network Complete Load Net"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__network_complete_load_net__underflow {
    sql: ${TABLE}.metrics.timing_distribution.network_complete_load_net.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Complete Load Net"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__network_complete_load_net__values {
    sql: ${TABLE}.metrics.timing_distribution.network_complete_load_net.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_dns_end__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.network_dns_end.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Dns End"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__network_dns_end__count {
    sql: ${TABLE}.metrics.timing_distribution.network_dns_end.count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Dns End"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__network_dns_end__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.network_dns_end.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Network Dns End"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__network_dns_end__overflow {
    sql: ${TABLE}.metrics.timing_distribution.network_dns_end.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Dns End"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__network_dns_end__range {
    sql: ${TABLE}.metrics.timing_distribution.network_dns_end.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_dns_end__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_dns_end.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Network Dns End"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__network_dns_end__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.network_dns_end.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Network Dns End"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__network_dns_end__underflow {
    sql: ${TABLE}.metrics.timing_distribution.network_dns_end.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Dns End"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__network_dns_end__values {
    sql: ${TABLE}.metrics.timing_distribution.network_dns_end.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_dns_start__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.network_dns_start.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Dns Start"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__network_dns_start__count {
    sql: ${TABLE}.metrics.timing_distribution.network_dns_start.count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Dns Start"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__network_dns_start__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.network_dns_start.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Network Dns Start"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__network_dns_start__overflow {
    sql: ${TABLE}.metrics.timing_distribution.network_dns_start.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Dns Start"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__network_dns_start__range {
    sql: ${TABLE}.metrics.timing_distribution.network_dns_start.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_dns_start__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_dns_start.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Network Dns Start"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__network_dns_start__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.network_dns_start.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Network Dns Start"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__network_dns_start__underflow {
    sql: ${TABLE}.metrics.timing_distribution.network_dns_start.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Dns Start"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__network_dns_start__values {
    sql: ${TABLE}.metrics.timing_distribution.network_dns_start.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_first_from_cache__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.network_first_from_cache.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Network First From Cache"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__network_first_from_cache__count {
    sql: ${TABLE}.metrics.timing_distribution.network_first_from_cache.count ;;
    type: number
    group_label: "Metrics Timing Distribution Network First From Cache"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__network_first_from_cache__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.network_first_from_cache.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Network First From Cache"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__network_first_from_cache__overflow {
    sql: ${TABLE}.metrics.timing_distribution.network_first_from_cache.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network First From Cache"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__network_first_from_cache__range {
    sql: ${TABLE}.metrics.timing_distribution.network_first_from_cache.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_first_from_cache__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_first_from_cache.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Network First From Cache"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__network_first_from_cache__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.network_first_from_cache.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Network First From Cache"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__network_first_from_cache__underflow {
    sql: ${TABLE}.metrics.timing_distribution.network_first_from_cache.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network First From Cache"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__network_first_from_cache__values {
    sql: ${TABLE}.metrics.timing_distribution.network_first_from_cache.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_first_sent_to_last_received__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.network_first_sent_to_last_received.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Network First Sent To Last Received"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__network_first_sent_to_last_received__count {
    sql: ${TABLE}.metrics.timing_distribution.network_first_sent_to_last_received.count ;;
    type: number
    group_label: "Metrics Timing Distribution Network First Sent To Last Received"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__network_first_sent_to_last_received__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.network_first_sent_to_last_received.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Network First Sent To Last Received"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__network_first_sent_to_last_received__overflow {
    sql: ${TABLE}.metrics.timing_distribution.network_first_sent_to_last_received.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network First Sent To Last Received"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__network_first_sent_to_last_received__range {
    sql: ${TABLE}.metrics.timing_distribution.network_first_sent_to_last_received.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_first_sent_to_last_received__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_first_sent_to_last_received.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Network First Sent To Last Received"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__network_first_sent_to_last_received__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.network_first_sent_to_last_received.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Network First Sent To Last Received"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__network_first_sent_to_last_received__underflow {
    sql: ${TABLE}.metrics.timing_distribution.network_first_sent_to_last_received.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network First Sent To Last Received"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__network_first_sent_to_last_received__values {
    sql: ${TABLE}.metrics.timing_distribution.network_first_sent_to_last_received.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_font_download_end__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.network_font_download_end.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Font Download End"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__network_font_download_end__count {
    sql: ${TABLE}.metrics.timing_distribution.network_font_download_end.count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Font Download End"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__network_font_download_end__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.network_font_download_end.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Network Font Download End"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__network_font_download_end__overflow {
    sql: ${TABLE}.metrics.timing_distribution.network_font_download_end.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Font Download End"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__network_font_download_end__range {
    sql: ${TABLE}.metrics.timing_distribution.network_font_download_end.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_font_download_end__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_font_download_end.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Network Font Download End"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__network_font_download_end__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.network_font_download_end.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Network Font Download End"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__network_font_download_end__underflow {
    sql: ${TABLE}.metrics.timing_distribution.network_font_download_end.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Font Download End"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__network_font_download_end__values {
    sql: ${TABLE}.metrics.timing_distribution.network_font_download_end.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_http_revalidation__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.network_http_revalidation.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Http Revalidation"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__network_http_revalidation__count {
    sql: ${TABLE}.metrics.timing_distribution.network_http_revalidation.count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Http Revalidation"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__network_http_revalidation__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.network_http_revalidation.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Network Http Revalidation"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__network_http_revalidation__overflow {
    sql: ${TABLE}.metrics.timing_distribution.network_http_revalidation.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Http Revalidation"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__network_http_revalidation__range {
    sql: ${TABLE}.metrics.timing_distribution.network_http_revalidation.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_http_revalidation__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_http_revalidation.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Network Http Revalidation"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__network_http_revalidation__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.network_http_revalidation.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Network Http Revalidation"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__network_http_revalidation__underflow {
    sql: ${TABLE}.metrics.timing_distribution.network_http_revalidation.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Http Revalidation"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__network_http_revalidation__values {
    sql: ${TABLE}.metrics.timing_distribution.network_http_revalidation.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_open_to_first_received__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.network_open_to_first_received.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Open To First Received"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__network_open_to_first_received__count {
    sql: ${TABLE}.metrics.timing_distribution.network_open_to_first_received.count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Open To First Received"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__network_open_to_first_received__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.network_open_to_first_received.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Network Open To First Received"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__network_open_to_first_received__overflow {
    sql: ${TABLE}.metrics.timing_distribution.network_open_to_first_received.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Open To First Received"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__network_open_to_first_received__range {
    sql: ${TABLE}.metrics.timing_distribution.network_open_to_first_received.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_open_to_first_received__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_open_to_first_received.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Network Open To First Received"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__network_open_to_first_received__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.network_open_to_first_received.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Network Open To First Received"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__network_open_to_first_received__underflow {
    sql: ${TABLE}.metrics.timing_distribution.network_open_to_first_received.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Open To First Received"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__network_open_to_first_received__values {
    sql: ${TABLE}.metrics.timing_distribution.network_open_to_first_received.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_open_to_first_sent__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.network_open_to_first_sent.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Open To First Sent"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__network_open_to_first_sent__count {
    sql: ${TABLE}.metrics.timing_distribution.network_open_to_first_sent.count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Open To First Sent"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__network_open_to_first_sent__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.network_open_to_first_sent.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Network Open To First Sent"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__network_open_to_first_sent__overflow {
    sql: ${TABLE}.metrics.timing_distribution.network_open_to_first_sent.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Open To First Sent"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__network_open_to_first_sent__range {
    sql: ${TABLE}.metrics.timing_distribution.network_open_to_first_sent.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_open_to_first_sent__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_open_to_first_sent.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Network Open To First Sent"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__network_open_to_first_sent__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.network_open_to_first_sent.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Network Open To First Sent"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__network_open_to_first_sent__underflow {
    sql: ${TABLE}.metrics.timing_distribution.network_open_to_first_sent.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Open To First Sent"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__network_open_to_first_sent__values {
    sql: ${TABLE}.metrics.timing_distribution.network_open_to_first_sent.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_open_to_transaction_pending__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.network_open_to_transaction_pending.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Open To Transaction Pending"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__network_open_to_transaction_pending__count {
    sql: ${TABLE}.metrics.timing_distribution.network_open_to_transaction_pending.count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Open To Transaction Pending"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__network_open_to_transaction_pending__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.network_open_to_transaction_pending.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Network Open To Transaction Pending"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__network_open_to_transaction_pending__overflow {
    sql: ${TABLE}.metrics.timing_distribution.network_open_to_transaction_pending.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Open To Transaction Pending"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__network_open_to_transaction_pending__range {
    sql: ${TABLE}.metrics.timing_distribution.network_open_to_transaction_pending.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_open_to_transaction_pending__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_open_to_transaction_pending.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Network Open To Transaction Pending"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__network_open_to_transaction_pending__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.network_open_to_transaction_pending.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Network Open To Transaction Pending"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__network_open_to_transaction_pending__underflow {
    sql: ${TABLE}.metrics.timing_distribution.network_open_to_transaction_pending.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Open To Transaction Pending"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__network_open_to_transaction_pending__values {
    sql: ${TABLE}.metrics.timing_distribution.network_open_to_transaction_pending.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_sub_cache_read_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_cache_read_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Cache Read Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__network_sub_cache_read_time__count {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_cache_read_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Cache Read Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__network_sub_cache_read_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_cache_read_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Network Sub Cache Read Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__network_sub_cache_read_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_cache_read_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Cache Read Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__network_sub_cache_read_time__range {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_cache_read_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_sub_cache_read_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_cache_read_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Cache Read Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__network_sub_cache_read_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_cache_read_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Network Sub Cache Read Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__network_sub_cache_read_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_cache_read_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Cache Read Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__network_sub_cache_read_time__values {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_cache_read_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_sub_complete_load__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_complete_load.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Complete Load"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__network_sub_complete_load__count {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_complete_load.count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Complete Load"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__network_sub_complete_load__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_complete_load.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Network Sub Complete Load"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__network_sub_complete_load__overflow {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_complete_load.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Complete Load"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__network_sub_complete_load__range {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_complete_load.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_sub_complete_load__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_complete_load.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Complete Load"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__network_sub_complete_load__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_complete_load.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Network Sub Complete Load"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__network_sub_complete_load__underflow {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_complete_load.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Complete Load"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__network_sub_complete_load__values {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_complete_load.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_sub_complete_load_cached__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_complete_load_cached.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Complete Load Cached"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__network_sub_complete_load_cached__count {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_complete_load_cached.count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Complete Load Cached"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__network_sub_complete_load_cached__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_complete_load_cached.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Network Sub Complete Load Cached"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__network_sub_complete_load_cached__overflow {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_complete_load_cached.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Complete Load Cached"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__network_sub_complete_load_cached__range {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_complete_load_cached.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_sub_complete_load_cached__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_complete_load_cached.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Complete Load Cached"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__network_sub_complete_load_cached__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_complete_load_cached.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Network Sub Complete Load Cached"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__network_sub_complete_load_cached__underflow {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_complete_load_cached.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Complete Load Cached"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__network_sub_complete_load_cached__values {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_complete_load_cached.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_sub_complete_load_net__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_complete_load_net.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Complete Load Net"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__network_sub_complete_load_net__count {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_complete_load_net.count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Complete Load Net"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__network_sub_complete_load_net__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_complete_load_net.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Network Sub Complete Load Net"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__network_sub_complete_load_net__overflow {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_complete_load_net.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Complete Load Net"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__network_sub_complete_load_net__range {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_complete_load_net.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_sub_complete_load_net__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_complete_load_net.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Complete Load Net"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__network_sub_complete_load_net__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_complete_load_net.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Network Sub Complete Load Net"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__network_sub_complete_load_net__underflow {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_complete_load_net.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Complete Load Net"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__network_sub_complete_load_net__values {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_complete_load_net.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_sub_dns_end__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_dns_end.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Dns End"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__network_sub_dns_end__count {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_dns_end.count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Dns End"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__network_sub_dns_end__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_dns_end.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Network Sub Dns End"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__network_sub_dns_end__overflow {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_dns_end.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Dns End"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__network_sub_dns_end__range {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_dns_end.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_sub_dns_end__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_dns_end.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Dns End"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__network_sub_dns_end__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_dns_end.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Network Sub Dns End"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__network_sub_dns_end__underflow {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_dns_end.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Dns End"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__network_sub_dns_end__values {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_dns_end.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_sub_dns_start__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_dns_start.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Dns Start"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__network_sub_dns_start__count {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_dns_start.count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Dns Start"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__network_sub_dns_start__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_dns_start.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Network Sub Dns Start"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__network_sub_dns_start__overflow {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_dns_start.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Dns Start"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__network_sub_dns_start__range {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_dns_start.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_sub_dns_start__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_dns_start.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Dns Start"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__network_sub_dns_start__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_dns_start.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Network Sub Dns Start"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__network_sub_dns_start__underflow {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_dns_start.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Dns Start"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__network_sub_dns_start__values {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_dns_start.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_sub_first_from_cache__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_first_from_cache.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub First From Cache"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__network_sub_first_from_cache__count {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_first_from_cache.count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub First From Cache"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__network_sub_first_from_cache__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_first_from_cache.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Network Sub First From Cache"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__network_sub_first_from_cache__overflow {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_first_from_cache.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub First From Cache"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__network_sub_first_from_cache__range {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_first_from_cache.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_sub_first_from_cache__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_first_from_cache.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub First From Cache"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__network_sub_first_from_cache__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_first_from_cache.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Network Sub First From Cache"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__network_sub_first_from_cache__underflow {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_first_from_cache.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub First From Cache"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__network_sub_first_from_cache__values {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_first_from_cache.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_sub_first_sent_to_last_received__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_first_sent_to_last_received.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub First Sent To Last Received"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__network_sub_first_sent_to_last_received__count {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_first_sent_to_last_received.count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub First Sent To Last Received"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__network_sub_first_sent_to_last_received__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_first_sent_to_last_received.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Network Sub First Sent To Last Received"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__network_sub_first_sent_to_last_received__overflow {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_first_sent_to_last_received.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub First Sent To Last Received"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__network_sub_first_sent_to_last_received__range {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_first_sent_to_last_received.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_sub_first_sent_to_last_received__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_first_sent_to_last_received.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub First Sent To Last Received"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__network_sub_first_sent_to_last_received__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_first_sent_to_last_received.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Network Sub First Sent To Last Received"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__network_sub_first_sent_to_last_received__underflow {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_first_sent_to_last_received.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub First Sent To Last Received"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__network_sub_first_sent_to_last_received__values {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_first_sent_to_last_received.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_sub_http_revalidation__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_http_revalidation.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Http Revalidation"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__network_sub_http_revalidation__count {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_http_revalidation.count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Http Revalidation"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__network_sub_http_revalidation__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_http_revalidation.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Network Sub Http Revalidation"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__network_sub_http_revalidation__overflow {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_http_revalidation.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Http Revalidation"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__network_sub_http_revalidation__range {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_http_revalidation.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_sub_http_revalidation__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_http_revalidation.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Http Revalidation"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__network_sub_http_revalidation__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_http_revalidation.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Network Sub Http Revalidation"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__network_sub_http_revalidation__underflow {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_http_revalidation.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Http Revalidation"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__network_sub_http_revalidation__values {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_http_revalidation.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_sub_open_to_first_received__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_open_to_first_received.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Open To First Received"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__network_sub_open_to_first_received__count {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_open_to_first_received.count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Open To First Received"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__network_sub_open_to_first_received__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_open_to_first_received.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Network Sub Open To First Received"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__network_sub_open_to_first_received__overflow {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_open_to_first_received.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Open To First Received"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__network_sub_open_to_first_received__range {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_open_to_first_received.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_sub_open_to_first_received__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_open_to_first_received.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Open To First Received"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__network_sub_open_to_first_received__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_open_to_first_received.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Network Sub Open To First Received"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__network_sub_open_to_first_received__underflow {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_open_to_first_received.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Open To First Received"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__network_sub_open_to_first_received__values {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_open_to_first_received.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_sub_open_to_first_sent__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_open_to_first_sent.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Open To First Sent"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__network_sub_open_to_first_sent__count {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_open_to_first_sent.count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Open To First Sent"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__network_sub_open_to_first_sent__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_open_to_first_sent.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Network Sub Open To First Sent"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__network_sub_open_to_first_sent__overflow {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_open_to_first_sent.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Open To First Sent"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__network_sub_open_to_first_sent__range {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_open_to_first_sent.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_sub_open_to_first_sent__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_open_to_first_sent.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Open To First Sent"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__network_sub_open_to_first_sent__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_open_to_first_sent.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Network Sub Open To First Sent"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__network_sub_open_to_first_sent__underflow {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_open_to_first_sent.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Open To First Sent"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__network_sub_open_to_first_sent__values {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_open_to_first_sent.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_sub_tcp_connection__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_tcp_connection.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Tcp Connection"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__network_sub_tcp_connection__count {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_tcp_connection.count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Tcp Connection"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__network_sub_tcp_connection__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_tcp_connection.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Network Sub Tcp Connection"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__network_sub_tcp_connection__overflow {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_tcp_connection.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Tcp Connection"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__network_sub_tcp_connection__range {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_tcp_connection.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_sub_tcp_connection__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_tcp_connection.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Tcp Connection"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__network_sub_tcp_connection__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_tcp_connection.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Network Sub Tcp Connection"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__network_sub_tcp_connection__underflow {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_tcp_connection.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Tcp Connection"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__network_sub_tcp_connection__values {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_tcp_connection.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_sub_tls_handshake__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_tls_handshake.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Tls Handshake"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__network_sub_tls_handshake__count {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_tls_handshake.count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Tls Handshake"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__network_sub_tls_handshake__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_tls_handshake.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Network Sub Tls Handshake"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__network_sub_tls_handshake__overflow {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_tls_handshake.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Tls Handshake"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__network_sub_tls_handshake__range {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_tls_handshake.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_sub_tls_handshake__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_tls_handshake.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Tls Handshake"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__network_sub_tls_handshake__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_tls_handshake.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Network Sub Tls Handshake"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__network_sub_tls_handshake__underflow {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_tls_handshake.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Sub Tls Handshake"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__network_sub_tls_handshake__values {
    sql: ${TABLE}.metrics.timing_distribution.network_sub_tls_handshake.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_tcp_connection__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.network_tcp_connection.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Tcp Connection"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__network_tcp_connection__count {
    sql: ${TABLE}.metrics.timing_distribution.network_tcp_connection.count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Tcp Connection"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__network_tcp_connection__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.network_tcp_connection.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Network Tcp Connection"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__network_tcp_connection__overflow {
    sql: ${TABLE}.metrics.timing_distribution.network_tcp_connection.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Tcp Connection"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__network_tcp_connection__range {
    sql: ${TABLE}.metrics.timing_distribution.network_tcp_connection.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_tcp_connection__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_tcp_connection.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Network Tcp Connection"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__network_tcp_connection__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.network_tcp_connection.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Network Tcp Connection"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__network_tcp_connection__underflow {
    sql: ${TABLE}.metrics.timing_distribution.network_tcp_connection.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Tcp Connection"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__network_tcp_connection__values {
    sql: ${TABLE}.metrics.timing_distribution.network_tcp_connection.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_tls_handshake__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.network_tls_handshake.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Tls Handshake"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__network_tls_handshake__count {
    sql: ${TABLE}.metrics.timing_distribution.network_tls_handshake.count ;;
    type: number
    group_label: "Metrics Timing Distribution Network Tls Handshake"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__network_tls_handshake__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.network_tls_handshake.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Network Tls Handshake"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__network_tls_handshake__overflow {
    sql: ${TABLE}.metrics.timing_distribution.network_tls_handshake.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Tls Handshake"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__network_tls_handshake__range {
    sql: ${TABLE}.metrics.timing_distribution.network_tls_handshake.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__network_tls_handshake__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_tls_handshake.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Network Tls Handshake"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__network_tls_handshake__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.network_tls_handshake.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Network Tls Handshake"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__network_tls_handshake__underflow {
    sql: ${TABLE}.metrics.timing_distribution.network_tls_handshake.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Network Tls Handshake"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__network_tls_handshake__values {
    sql: ${TABLE}.metrics.timing_distribution.network_tls_handshake.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_cache_metadata_first_read_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.networking_cache_metadata_first_read_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Cache Metadata First Read Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__networking_cache_metadata_first_read_time__count {
    sql: ${TABLE}.metrics.timing_distribution.networking_cache_metadata_first_read_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Cache Metadata First Read Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__networking_cache_metadata_first_read_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.networking_cache_metadata_first_read_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Cache Metadata First Read Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__networking_cache_metadata_first_read_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_cache_metadata_first_read_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Cache Metadata First Read Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__networking_cache_metadata_first_read_time__range {
    sql: ${TABLE}.metrics.timing_distribution.networking_cache_metadata_first_read_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_cache_metadata_first_read_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.networking_cache_metadata_first_read_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Cache Metadata First Read Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__networking_cache_metadata_first_read_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.networking_cache_metadata_first_read_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Cache Metadata First Read Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__networking_cache_metadata_first_read_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_cache_metadata_first_read_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Cache Metadata First Read Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__networking_cache_metadata_first_read_time__values {
    sql: ${TABLE}.metrics.timing_distribution.networking_cache_metadata_first_read_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_cache_metadata_second_read_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.networking_cache_metadata_second_read_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Cache Metadata Second Read Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__networking_cache_metadata_second_read_time__count {
    sql: ${TABLE}.metrics.timing_distribution.networking_cache_metadata_second_read_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Cache Metadata Second Read Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__networking_cache_metadata_second_read_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.networking_cache_metadata_second_read_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Cache Metadata Second Read Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__networking_cache_metadata_second_read_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_cache_metadata_second_read_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Cache Metadata Second Read Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__networking_cache_metadata_second_read_time__range {
    sql: ${TABLE}.metrics.timing_distribution.networking_cache_metadata_second_read_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_cache_metadata_second_read_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.networking_cache_metadata_second_read_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Cache Metadata Second Read Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__networking_cache_metadata_second_read_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.networking_cache_metadata_second_read_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Cache Metadata Second Read Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__networking_cache_metadata_second_read_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_cache_metadata_second_read_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Cache Metadata Second Read Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__networking_cache_metadata_second_read_time__values {
    sql: ${TABLE}.metrics.timing_distribution.networking_cache_metadata_second_read_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_dns_failed_lookup_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_failed_lookup_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Dns Failed Lookup Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__networking_dns_failed_lookup_time__count {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_failed_lookup_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Dns Failed Lookup Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__networking_dns_failed_lookup_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_failed_lookup_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Dns Failed Lookup Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__networking_dns_failed_lookup_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_failed_lookup_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Dns Failed Lookup Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__networking_dns_failed_lookup_time__range {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_failed_lookup_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_dns_failed_lookup_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_failed_lookup_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Dns Failed Lookup Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__networking_dns_failed_lookup_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_failed_lookup_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Dns Failed Lookup Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__networking_dns_failed_lookup_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_failed_lookup_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Dns Failed Lookup Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__networking_dns_failed_lookup_time__values {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_failed_lookup_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_dns_lookup_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_lookup_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Dns Lookup Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__networking_dns_lookup_time__count {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_lookup_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Dns Lookup Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__networking_dns_lookup_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_lookup_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Dns Lookup Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__networking_dns_lookup_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_lookup_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Dns Lookup Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__networking_dns_lookup_time__range {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_lookup_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_dns_lookup_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_lookup_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Dns Lookup Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__networking_dns_lookup_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_lookup_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Dns Lookup Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__networking_dns_lookup_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_lookup_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Dns Lookup Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__networking_dns_lookup_time__values {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_lookup_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_dns_native_https_call_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_native_https_call_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Dns Native Https Call Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__networking_dns_native_https_call_time__count {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_native_https_call_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Dns Native Https Call Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__networking_dns_native_https_call_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_native_https_call_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Dns Native Https Call Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__networking_dns_native_https_call_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_native_https_call_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Dns Native Https Call Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__networking_dns_native_https_call_time__range {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_native_https_call_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_dns_native_https_call_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_native_https_call_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Dns Native Https Call Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__networking_dns_native_https_call_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_native_https_call_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Dns Native Https Call Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__networking_dns_native_https_call_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_native_https_call_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Dns Native Https Call Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__networking_dns_native_https_call_time__values {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_native_https_call_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_dns_renewal_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_renewal_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Dns Renewal Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__networking_dns_renewal_time__count {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_renewal_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Dns Renewal Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__networking_dns_renewal_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_renewal_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Dns Renewal Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__networking_dns_renewal_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_renewal_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Dns Renewal Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__networking_dns_renewal_time__range {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_renewal_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_dns_renewal_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_renewal_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Dns Renewal Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__networking_dns_renewal_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_renewal_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Dns Renewal Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__networking_dns_renewal_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_renewal_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Dns Renewal Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__networking_dns_renewal_time__values {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_renewal_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_dns_renewal_time_for_ttl__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_renewal_time_for_ttl.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Dns Renewal Time For Ttl"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__networking_dns_renewal_time_for_ttl__count {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_renewal_time_for_ttl.count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Dns Renewal Time For Ttl"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__networking_dns_renewal_time_for_ttl__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_renewal_time_for_ttl.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Dns Renewal Time For Ttl"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__networking_dns_renewal_time_for_ttl__overflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_renewal_time_for_ttl.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Dns Renewal Time For Ttl"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__networking_dns_renewal_time_for_ttl__range {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_renewal_time_for_ttl.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_dns_renewal_time_for_ttl__sum {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_renewal_time_for_ttl.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Dns Renewal Time For Ttl"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__networking_dns_renewal_time_for_ttl__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_renewal_time_for_ttl.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Dns Renewal Time For Ttl"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__networking_dns_renewal_time_for_ttl__underflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_renewal_time_for_ttl.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Dns Renewal Time For Ttl"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__networking_dns_renewal_time_for_ttl__values {
    sql: ${TABLE}.metrics.timing_distribution.networking_dns_renewal_time_for_ttl.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_http_channel_page_open_to_first_sent__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_page_open_to_first_sent.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Channel Page Open To First Sent"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__networking_http_channel_page_open_to_first_sent__count {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_page_open_to_first_sent.count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Channel Page Open To First Sent"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__networking_http_channel_page_open_to_first_sent__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_page_open_to_first_sent.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Http Channel Page Open To First Sent"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__networking_http_channel_page_open_to_first_sent__overflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_page_open_to_first_sent.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Channel Page Open To First Sent"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__networking_http_channel_page_open_to_first_sent__range {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_page_open_to_first_sent.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_http_channel_page_open_to_first_sent__sum {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_page_open_to_first_sent.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Channel Page Open To First Sent"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__networking_http_channel_page_open_to_first_sent__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_page_open_to_first_sent.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Http Channel Page Open To First Sent"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__networking_http_channel_page_open_to_first_sent__underflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_page_open_to_first_sent.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Channel Page Open To First Sent"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__networking_http_channel_page_open_to_first_sent__values {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_page_open_to_first_sent.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_http_channel_page_open_to_first_sent_https_rr__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_page_open_to_first_sent_https_rr.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Channel Page Open To First Sent Https Rr"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__networking_http_channel_page_open_to_first_sent_https_rr__count {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_page_open_to_first_sent_https_rr.count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Channel Page Open To First Sent Https Rr"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__networking_http_channel_page_open_to_first_sent_https_rr__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_page_open_to_first_sent_https_rr.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Http Channel Page Open To First Sent Https Rr"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__networking_http_channel_page_open_to_first_sent_https_rr__overflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_page_open_to_first_sent_https_rr.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Channel Page Open To First Sent Https Rr"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__networking_http_channel_page_open_to_first_sent_https_rr__range {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_page_open_to_first_sent_https_rr.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_http_channel_page_open_to_first_sent_https_rr__sum {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_page_open_to_first_sent_https_rr.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Channel Page Open To First Sent Https Rr"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__networking_http_channel_page_open_to_first_sent_https_rr__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_page_open_to_first_sent_https_rr.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Http Channel Page Open To First Sent Https Rr"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__networking_http_channel_page_open_to_first_sent_https_rr__underflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_page_open_to_first_sent_https_rr.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Channel Page Open To First Sent Https Rr"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__networking_http_channel_page_open_to_first_sent_https_rr__values {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_page_open_to_first_sent_https_rr.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_http_channel_sub_open_to_first_sent__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_sub_open_to_first_sent.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Channel Sub Open To First Sent"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__networking_http_channel_sub_open_to_first_sent__count {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_sub_open_to_first_sent.count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Channel Sub Open To First Sent"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__networking_http_channel_sub_open_to_first_sent__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_sub_open_to_first_sent.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Http Channel Sub Open To First Sent"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__networking_http_channel_sub_open_to_first_sent__overflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_sub_open_to_first_sent.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Channel Sub Open To First Sent"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__networking_http_channel_sub_open_to_first_sent__range {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_sub_open_to_first_sent.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_http_channel_sub_open_to_first_sent__sum {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_sub_open_to_first_sent.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Channel Sub Open To First Sent"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__networking_http_channel_sub_open_to_first_sent__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_sub_open_to_first_sent.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Http Channel Sub Open To First Sent"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__networking_http_channel_sub_open_to_first_sent__underflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_sub_open_to_first_sent.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Channel Sub Open To First Sent"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__networking_http_channel_sub_open_to_first_sent__values {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_sub_open_to_first_sent.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_http_channel_sub_open_to_first_sent_https_rr__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_sub_open_to_first_sent_https_rr.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Channel Sub Open To First Sent Https Rr"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__networking_http_channel_sub_open_to_first_sent_https_rr__count {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_sub_open_to_first_sent_https_rr.count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Channel Sub Open To First Sent Https Rr"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__networking_http_channel_sub_open_to_first_sent_https_rr__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_sub_open_to_first_sent_https_rr.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Http Channel Sub Open To First Sent Https Rr"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__networking_http_channel_sub_open_to_first_sent_https_rr__overflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_sub_open_to_first_sent_https_rr.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Channel Sub Open To First Sent Https Rr"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__networking_http_channel_sub_open_to_first_sent_https_rr__range {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_sub_open_to_first_sent_https_rr.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_http_channel_sub_open_to_first_sent_https_rr__sum {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_sub_open_to_first_sent_https_rr.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Channel Sub Open To First Sent Https Rr"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__networking_http_channel_sub_open_to_first_sent_https_rr__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_sub_open_to_first_sent_https_rr.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Http Channel Sub Open To First Sent Https Rr"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__networking_http_channel_sub_open_to_first_sent_https_rr__underflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_sub_open_to_first_sent_https_rr.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Channel Sub Open To First Sent Https Rr"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__networking_http_channel_sub_open_to_first_sent_https_rr__values {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_channel_sub_open_to_first_sent_https_rr.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_http_content_cssloader_ondatafinished_to_onstop_delay__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_cssloader_ondatafinished_to_onstop_delay.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Cssloader Ondatafinished To Onstop Delay"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__networking_http_content_cssloader_ondatafinished_to_onstop_delay__count {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_cssloader_ondatafinished_to_onstop_delay.count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Cssloader Ondatafinished To Onstop Delay"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__networking_http_content_cssloader_ondatafinished_to_onstop_delay__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_cssloader_ondatafinished_to_onstop_delay.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Http Content Cssloader Ondatafinished To Onstop Delay"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__networking_http_content_cssloader_ondatafinished_to_onstop_delay__overflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_cssloader_ondatafinished_to_onstop_delay.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Cssloader Ondatafinished To Onstop Delay"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__networking_http_content_cssloader_ondatafinished_to_onstop_delay__range {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_cssloader_ondatafinished_to_onstop_delay.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_http_content_cssloader_ondatafinished_to_onstop_delay__sum {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_cssloader_ondatafinished_to_onstop_delay.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Cssloader Ondatafinished To Onstop Delay"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__networking_http_content_cssloader_ondatafinished_to_onstop_delay__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_cssloader_ondatafinished_to_onstop_delay.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Http Content Cssloader Ondatafinished To Onstop Delay"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__networking_http_content_cssloader_ondatafinished_to_onstop_delay__underflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_cssloader_ondatafinished_to_onstop_delay.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Cssloader Ondatafinished To Onstop Delay"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__networking_http_content_cssloader_ondatafinished_to_onstop_delay__values {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_cssloader_ondatafinished_to_onstop_delay.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_http_content_html5parser_ondatafinished_to_onstop_delay__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_html5parser_ondatafinished_to_onstop_delay.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Html5Parser Ondatafinished To Onstop Delay"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__networking_http_content_html5parser_ondatafinished_to_onstop_delay__count {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_html5parser_ondatafinished_to_onstop_delay.count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Html5Parser Ondatafinished To Onstop Delay"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__networking_http_content_html5parser_ondatafinished_to_onstop_delay__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_html5parser_ondatafinished_to_onstop_delay.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Http Content Html5Parser Ondatafinished To Onstop Delay"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__networking_http_content_html5parser_ondatafinished_to_onstop_delay__overflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_html5parser_ondatafinished_to_onstop_delay.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Html5Parser Ondatafinished To Onstop Delay"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__networking_http_content_html5parser_ondatafinished_to_onstop_delay__range {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_html5parser_ondatafinished_to_onstop_delay.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_http_content_html5parser_ondatafinished_to_onstop_delay__sum {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_html5parser_ondatafinished_to_onstop_delay.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Html5Parser Ondatafinished To Onstop Delay"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__networking_http_content_html5parser_ondatafinished_to_onstop_delay__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_html5parser_ondatafinished_to_onstop_delay.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Http Content Html5Parser Ondatafinished To Onstop Delay"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__networking_http_content_html5parser_ondatafinished_to_onstop_delay__underflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_html5parser_ondatafinished_to_onstop_delay.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Html5Parser Ondatafinished To Onstop Delay"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__networking_http_content_html5parser_ondatafinished_to_onstop_delay__values {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_html5parser_ondatafinished_to_onstop_delay.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_http_content_html5parser_ondatafinished_to_onstop_delay_negative__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_html5parser_ondatafinished_to_onstop_delay_negative.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Html5Parser Ondatafinished To Onstop Delay Negative"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__networking_http_content_html5parser_ondatafinished_to_onstop_delay_negative__count {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_html5parser_ondatafinished_to_onstop_delay_negative.count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Html5Parser Ondatafinished To Onstop Delay Negative"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__networking_http_content_html5parser_ondatafinished_to_onstop_delay_negative__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_html5parser_ondatafinished_to_onstop_delay_negative.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Http Content Html5Parser Ondatafinished To Onstop Delay Negative"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__networking_http_content_html5parser_ondatafinished_to_onstop_delay_negative__overflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_html5parser_ondatafinished_to_onstop_delay_negative.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Html5Parser Ondatafinished To Onstop Delay Negative"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__networking_http_content_html5parser_ondatafinished_to_onstop_delay_negative__range {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_html5parser_ondatafinished_to_onstop_delay_negative.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_http_content_html5parser_ondatafinished_to_onstop_delay_negative__sum {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_html5parser_ondatafinished_to_onstop_delay_negative.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Html5Parser Ondatafinished To Onstop Delay Negative"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__networking_http_content_html5parser_ondatafinished_to_onstop_delay_negative__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_html5parser_ondatafinished_to_onstop_delay_negative.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Http Content Html5Parser Ondatafinished To Onstop Delay Negative"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__networking_http_content_html5parser_ondatafinished_to_onstop_delay_negative__underflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_html5parser_ondatafinished_to_onstop_delay_negative.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Html5Parser Ondatafinished To Onstop Delay Negative"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__networking_http_content_html5parser_ondatafinished_to_onstop_delay_negative__values {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_html5parser_ondatafinished_to_onstop_delay_negative.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_delay__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_delay.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Ondatafinished Delay"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_delay__count {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_delay.count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Ondatafinished Delay"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_delay__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_delay.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Http Content Ondatafinished Delay"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_delay__overflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_delay.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Ondatafinished Delay"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_delay__range {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_delay.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_delay__sum {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_delay.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Ondatafinished Delay"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_delay__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_delay.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Http Content Ondatafinished Delay"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_delay__underflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_delay.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Ondatafinished Delay"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_delay__values {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_delay.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_delay_2__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_delay_2.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Ondatafinished Delay 2"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_delay_2__count {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_delay_2.count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Ondatafinished Delay 2"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_delay_2__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_delay_2.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Http Content Ondatafinished Delay 2"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_delay_2__overflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_delay_2.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Ondatafinished Delay 2"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_delay_2__range {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_delay_2.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_delay_2__sum {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_delay_2.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Ondatafinished Delay 2"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_delay_2__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_delay_2.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Http Content Ondatafinished Delay 2"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_delay_2__underflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_delay_2.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Ondatafinished Delay 2"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_delay_2__values {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_delay_2.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_to_onstop_delay__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_to_onstop_delay.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Ondatafinished To Onstop Delay"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_to_onstop_delay__count {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_to_onstop_delay.count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Ondatafinished To Onstop Delay"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_to_onstop_delay__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_to_onstop_delay.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Http Content Ondatafinished To Onstop Delay"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_to_onstop_delay__overflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_to_onstop_delay.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Ondatafinished To Onstop Delay"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_to_onstop_delay__range {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_to_onstop_delay.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_to_onstop_delay__sum {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_to_onstop_delay.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Ondatafinished To Onstop Delay"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_to_onstop_delay__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_to_onstop_delay.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Http Content Ondatafinished To Onstop Delay"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_to_onstop_delay__underflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_to_onstop_delay.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Ondatafinished To Onstop Delay"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_to_onstop_delay__values {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_to_onstop_delay.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_to_onstop_delay_negative__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_to_onstop_delay_negative.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Ondatafinished To Onstop Delay Negative"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_to_onstop_delay_negative__count {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_to_onstop_delay_negative.count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Ondatafinished To Onstop Delay Negative"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_to_onstop_delay_negative__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_to_onstop_delay_negative.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Http Content Ondatafinished To Onstop Delay Negative"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_to_onstop_delay_negative__overflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_to_onstop_delay_negative.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Ondatafinished To Onstop Delay Negative"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_to_onstop_delay_negative__range {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_to_onstop_delay_negative.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_to_onstop_delay_negative__sum {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_to_onstop_delay_negative.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Ondatafinished To Onstop Delay Negative"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_to_onstop_delay_negative__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_to_onstop_delay_negative.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Http Content Ondatafinished To Onstop Delay Negative"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_to_onstop_delay_negative__underflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_to_onstop_delay_negative.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Ondatafinished To Onstop Delay Negative"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__networking_http_content_ondatafinished_to_onstop_delay_negative__values {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_ondatafinished_to_onstop_delay_negative.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_http_content_onstart_delay__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_onstart_delay.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Onstart Delay"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__networking_http_content_onstart_delay__count {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_onstart_delay.count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Onstart Delay"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__networking_http_content_onstart_delay__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_onstart_delay.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Http Content Onstart Delay"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__networking_http_content_onstart_delay__overflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_onstart_delay.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Onstart Delay"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__networking_http_content_onstart_delay__range {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_onstart_delay.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_http_content_onstart_delay__sum {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_onstart_delay.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Onstart Delay"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__networking_http_content_onstart_delay__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_onstart_delay.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Http Content Onstart Delay"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__networking_http_content_onstart_delay__underflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_onstart_delay.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Onstart Delay"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__networking_http_content_onstart_delay__values {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_onstart_delay.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_http_content_onstop_delay__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_onstop_delay.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Onstop Delay"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__networking_http_content_onstop_delay__count {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_onstop_delay.count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Onstop Delay"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__networking_http_content_onstop_delay__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_onstop_delay.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Http Content Onstop Delay"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__networking_http_content_onstop_delay__overflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_onstop_delay.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Onstop Delay"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__networking_http_content_onstop_delay__range {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_onstop_delay.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_http_content_onstop_delay__sum {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_onstop_delay.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Onstop Delay"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__networking_http_content_onstop_delay__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_onstop_delay.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Http Content Onstop Delay"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__networking_http_content_onstop_delay__underflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_onstop_delay.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Content Onstop Delay"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__networking_http_content_onstop_delay__values {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_content_onstop_delay.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_http_onstart_suspend_total_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_onstart_suspend_total_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Onstart Suspend Total Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__networking_http_onstart_suspend_total_time__count {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_onstart_suspend_total_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Onstart Suspend Total Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__networking_http_onstart_suspend_total_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_onstart_suspend_total_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Http Onstart Suspend Total Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__networking_http_onstart_suspend_total_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_onstart_suspend_total_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Onstart Suspend Total Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__networking_http_onstart_suspend_total_time__range {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_onstart_suspend_total_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_http_onstart_suspend_total_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_onstart_suspend_total_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Onstart Suspend Total Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__networking_http_onstart_suspend_total_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_onstart_suspend_total_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Http Onstart Suspend Total Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__networking_http_onstart_suspend_total_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_onstart_suspend_total_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Http Onstart Suspend Total Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__networking_http_onstart_suspend_total_time__values {
    sql: ${TABLE}.metrics.timing_distribution.networking_http_onstart_suspend_total_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_sqlite_cookies_block_main_thread__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.networking_sqlite_cookies_block_main_thread.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Sqlite Cookies Block Main Thread"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__networking_sqlite_cookies_block_main_thread__count {
    sql: ${TABLE}.metrics.timing_distribution.networking_sqlite_cookies_block_main_thread.count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Sqlite Cookies Block Main Thread"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__networking_sqlite_cookies_block_main_thread__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.networking_sqlite_cookies_block_main_thread.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Sqlite Cookies Block Main Thread"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__networking_sqlite_cookies_block_main_thread__overflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_sqlite_cookies_block_main_thread.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Sqlite Cookies Block Main Thread"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__networking_sqlite_cookies_block_main_thread__range {
    sql: ${TABLE}.metrics.timing_distribution.networking_sqlite_cookies_block_main_thread.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_sqlite_cookies_block_main_thread__sum {
    sql: ${TABLE}.metrics.timing_distribution.networking_sqlite_cookies_block_main_thread.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Sqlite Cookies Block Main Thread"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__networking_sqlite_cookies_block_main_thread__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.networking_sqlite_cookies_block_main_thread.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Sqlite Cookies Block Main Thread"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__networking_sqlite_cookies_block_main_thread__underflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_sqlite_cookies_block_main_thread.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Sqlite Cookies Block Main Thread"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__networking_sqlite_cookies_block_main_thread__values {
    sql: ${TABLE}.metrics.timing_distribution.networking_sqlite_cookies_block_main_thread.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_sqlite_cookies_time_to_block_main_thread__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.networking_sqlite_cookies_time_to_block_main_thread.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Sqlite Cookies Time To Block Main Thread"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__networking_sqlite_cookies_time_to_block_main_thread__count {
    sql: ${TABLE}.metrics.timing_distribution.networking_sqlite_cookies_time_to_block_main_thread.count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Sqlite Cookies Time To Block Main Thread"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__networking_sqlite_cookies_time_to_block_main_thread__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.networking_sqlite_cookies_time_to_block_main_thread.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Sqlite Cookies Time To Block Main Thread"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__networking_sqlite_cookies_time_to_block_main_thread__overflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_sqlite_cookies_time_to_block_main_thread.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Sqlite Cookies Time To Block Main Thread"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__networking_sqlite_cookies_time_to_block_main_thread__range {
    sql: ${TABLE}.metrics.timing_distribution.networking_sqlite_cookies_time_to_block_main_thread.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_sqlite_cookies_time_to_block_main_thread__sum {
    sql: ${TABLE}.metrics.timing_distribution.networking_sqlite_cookies_time_to_block_main_thread.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Sqlite Cookies Time To Block Main Thread"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__networking_sqlite_cookies_time_to_block_main_thread__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.networking_sqlite_cookies_time_to_block_main_thread.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Sqlite Cookies Time To Block Main Thread"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__networking_sqlite_cookies_time_to_block_main_thread__underflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_sqlite_cookies_time_to_block_main_thread.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Sqlite Cookies Time To Block Main Thread"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__networking_sqlite_cookies_time_to_block_main_thread__values {
    sql: ${TABLE}.metrics.timing_distribution.networking_sqlite_cookies_time_to_block_main_thread.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_transaction_wait_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.networking_transaction_wait_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Transaction Wait Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__networking_transaction_wait_time__count {
    sql: ${TABLE}.metrics.timing_distribution.networking_transaction_wait_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Transaction Wait Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__networking_transaction_wait_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.networking_transaction_wait_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Transaction Wait Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__networking_transaction_wait_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_transaction_wait_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Transaction Wait Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__networking_transaction_wait_time__range {
    sql: ${TABLE}.metrics.timing_distribution.networking_transaction_wait_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_transaction_wait_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.networking_transaction_wait_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Transaction Wait Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__networking_transaction_wait_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.networking_transaction_wait_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Transaction Wait Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__networking_transaction_wait_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_transaction_wait_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Transaction Wait Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__networking_transaction_wait_time__values {
    sql: ${TABLE}.metrics.timing_distribution.networking_transaction_wait_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_transaction_wait_time_https_rr__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.networking_transaction_wait_time_https_rr.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Transaction Wait Time Https Rr"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__networking_transaction_wait_time_https_rr__count {
    sql: ${TABLE}.metrics.timing_distribution.networking_transaction_wait_time_https_rr.count ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Transaction Wait Time Https Rr"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__networking_transaction_wait_time_https_rr__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.networking_transaction_wait_time_https_rr.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Transaction Wait Time Https Rr"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__networking_transaction_wait_time_https_rr__overflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_transaction_wait_time_https_rr.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Transaction Wait Time Https Rr"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__networking_transaction_wait_time_https_rr__range {
    sql: ${TABLE}.metrics.timing_distribution.networking_transaction_wait_time_https_rr.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__networking_transaction_wait_time_https_rr__sum {
    sql: ${TABLE}.metrics.timing_distribution.networking_transaction_wait_time_https_rr.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Transaction Wait Time Https Rr"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__networking_transaction_wait_time_https_rr__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.networking_transaction_wait_time_https_rr.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Networking Transaction Wait Time Https Rr"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__networking_transaction_wait_time_https_rr__underflow {
    sql: ${TABLE}.metrics.timing_distribution.networking_transaction_wait_time_https_rr.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Networking Transaction Wait Time Https Rr"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__networking_transaction_wait_time_https_rr__values {
    sql: ${TABLE}.metrics.timing_distribution.networking_transaction_wait_time_https_rr.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__nimbus_health_apply_pending_experiments_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.nimbus_health_apply_pending_experiments_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Nimbus Health Apply Pending Experiments Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__nimbus_health_apply_pending_experiments_time__count {
    sql: ${TABLE}.metrics.timing_distribution.nimbus_health_apply_pending_experiments_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Nimbus Health Apply Pending Experiments Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__nimbus_health_apply_pending_experiments_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.nimbus_health_apply_pending_experiments_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Nimbus Health Apply Pending Experiments Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__nimbus_health_apply_pending_experiments_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.nimbus_health_apply_pending_experiments_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Nimbus Health Apply Pending Experiments Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__nimbus_health_apply_pending_experiments_time__range {
    sql: ${TABLE}.metrics.timing_distribution.nimbus_health_apply_pending_experiments_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__nimbus_health_apply_pending_experiments_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.nimbus_health_apply_pending_experiments_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Nimbus Health Apply Pending Experiments Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__nimbus_health_apply_pending_experiments_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.nimbus_health_apply_pending_experiments_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Nimbus Health Apply Pending Experiments Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__nimbus_health_apply_pending_experiments_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.nimbus_health_apply_pending_experiments_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Nimbus Health Apply Pending Experiments Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__nimbus_health_apply_pending_experiments_time__values {
    sql: ${TABLE}.metrics.timing_distribution.nimbus_health_apply_pending_experiments_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__nimbus_health_fetch_experiments_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.nimbus_health_fetch_experiments_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Nimbus Health Fetch Experiments Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__nimbus_health_fetch_experiments_time__count {
    sql: ${TABLE}.metrics.timing_distribution.nimbus_health_fetch_experiments_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Nimbus Health Fetch Experiments Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__nimbus_health_fetch_experiments_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.nimbus_health_fetch_experiments_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Nimbus Health Fetch Experiments Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__nimbus_health_fetch_experiments_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.nimbus_health_fetch_experiments_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Nimbus Health Fetch Experiments Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__nimbus_health_fetch_experiments_time__range {
    sql: ${TABLE}.metrics.timing_distribution.nimbus_health_fetch_experiments_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__nimbus_health_fetch_experiments_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.nimbus_health_fetch_experiments_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Nimbus Health Fetch Experiments Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__nimbus_health_fetch_experiments_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.nimbus_health_fetch_experiments_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Nimbus Health Fetch Experiments Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__nimbus_health_fetch_experiments_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.nimbus_health_fetch_experiments_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Nimbus Health Fetch Experiments Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__nimbus_health_fetch_experiments_time__values {
    sql: ${TABLE}.metrics.timing_distribution.nimbus_health_fetch_experiments_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__ocsp_request_time_cancel__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.ocsp_request_time_cancel.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Ocsp Request Time Cancel"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__ocsp_request_time_cancel__count {
    sql: ${TABLE}.metrics.timing_distribution.ocsp_request_time_cancel.count ;;
    type: number
    group_label: "Metrics Timing Distribution Ocsp Request Time Cancel"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__ocsp_request_time_cancel__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.ocsp_request_time_cancel.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Ocsp Request Time Cancel"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__ocsp_request_time_cancel__overflow {
    sql: ${TABLE}.metrics.timing_distribution.ocsp_request_time_cancel.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Ocsp Request Time Cancel"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__ocsp_request_time_cancel__range {
    sql: ${TABLE}.metrics.timing_distribution.ocsp_request_time_cancel.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__ocsp_request_time_cancel__sum {
    sql: ${TABLE}.metrics.timing_distribution.ocsp_request_time_cancel.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Ocsp Request Time Cancel"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__ocsp_request_time_cancel__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.ocsp_request_time_cancel.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Ocsp Request Time Cancel"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__ocsp_request_time_cancel__underflow {
    sql: ${TABLE}.metrics.timing_distribution.ocsp_request_time_cancel.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Ocsp Request Time Cancel"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__ocsp_request_time_cancel__values {
    sql: ${TABLE}.metrics.timing_distribution.ocsp_request_time_cancel.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__ocsp_request_time_failure__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.ocsp_request_time_failure.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Ocsp Request Time Failure"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__ocsp_request_time_failure__count {
    sql: ${TABLE}.metrics.timing_distribution.ocsp_request_time_failure.count ;;
    type: number
    group_label: "Metrics Timing Distribution Ocsp Request Time Failure"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__ocsp_request_time_failure__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.ocsp_request_time_failure.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Ocsp Request Time Failure"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__ocsp_request_time_failure__overflow {
    sql: ${TABLE}.metrics.timing_distribution.ocsp_request_time_failure.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Ocsp Request Time Failure"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__ocsp_request_time_failure__range {
    sql: ${TABLE}.metrics.timing_distribution.ocsp_request_time_failure.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__ocsp_request_time_failure__sum {
    sql: ${TABLE}.metrics.timing_distribution.ocsp_request_time_failure.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Ocsp Request Time Failure"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__ocsp_request_time_failure__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.ocsp_request_time_failure.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Ocsp Request Time Failure"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__ocsp_request_time_failure__underflow {
    sql: ${TABLE}.metrics.timing_distribution.ocsp_request_time_failure.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Ocsp Request Time Failure"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__ocsp_request_time_failure__values {
    sql: ${TABLE}.metrics.timing_distribution.ocsp_request_time_failure.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__ocsp_request_time_success__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.ocsp_request_time_success.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Ocsp Request Time Success"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__ocsp_request_time_success__count {
    sql: ${TABLE}.metrics.timing_distribution.ocsp_request_time_success.count ;;
    type: number
    group_label: "Metrics Timing Distribution Ocsp Request Time Success"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__ocsp_request_time_success__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.ocsp_request_time_success.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Ocsp Request Time Success"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__ocsp_request_time_success__overflow {
    sql: ${TABLE}.metrics.timing_distribution.ocsp_request_time_success.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Ocsp Request Time Success"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__ocsp_request_time_success__range {
    sql: ${TABLE}.metrics.timing_distribution.ocsp_request_time_success.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__ocsp_request_time_success__sum {
    sql: ${TABLE}.metrics.timing_distribution.ocsp_request_time_success.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Ocsp Request Time Success"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__ocsp_request_time_success__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.ocsp_request_time_success.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Ocsp Request Time Success"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__ocsp_request_time_success__underflow {
    sql: ${TABLE}.metrics.timing_distribution.ocsp_request_time_success.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Ocsp Request Time Success"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__ocsp_request_time_success__values {
    sql: ${TABLE}.metrics.timing_distribution.ocsp_request_time_success.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__paint_build_displaylist_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.paint_build_displaylist_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Paint Build Displaylist Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__paint_build_displaylist_time__count {
    sql: ${TABLE}.metrics.timing_distribution.paint_build_displaylist_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Paint Build Displaylist Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__paint_build_displaylist_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.paint_build_displaylist_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Paint Build Displaylist Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__paint_build_displaylist_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.paint_build_displaylist_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Paint Build Displaylist Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__paint_build_displaylist_time__range {
    sql: ${TABLE}.metrics.timing_distribution.paint_build_displaylist_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__paint_build_displaylist_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.paint_build_displaylist_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Paint Build Displaylist Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__paint_build_displaylist_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.paint_build_displaylist_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Paint Build Displaylist Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__paint_build_displaylist_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.paint_build_displaylist_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Paint Build Displaylist Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__paint_build_displaylist_time__values {
    sql: ${TABLE}.metrics.timing_distribution.paint_build_displaylist_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__perf_largest_contentful_paint__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.perf_largest_contentful_paint.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Perf Largest Contentful Paint"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__perf_largest_contentful_paint__count {
    sql: ${TABLE}.metrics.timing_distribution.perf_largest_contentful_paint.count ;;
    type: number
    group_label: "Metrics Timing Distribution Perf Largest Contentful Paint"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__perf_largest_contentful_paint__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.perf_largest_contentful_paint.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Perf Largest Contentful Paint"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__perf_largest_contentful_paint__overflow {
    sql: ${TABLE}.metrics.timing_distribution.perf_largest_contentful_paint.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Perf Largest Contentful Paint"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__perf_largest_contentful_paint__range {
    sql: ${TABLE}.metrics.timing_distribution.perf_largest_contentful_paint.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__perf_largest_contentful_paint__sum {
    sql: ${TABLE}.metrics.timing_distribution.perf_largest_contentful_paint.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Perf Largest Contentful Paint"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__perf_largest_contentful_paint__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.perf_largest_contentful_paint.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Perf Largest Contentful Paint"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__perf_largest_contentful_paint__underflow {
    sql: ${TABLE}.metrics.timing_distribution.perf_largest_contentful_paint.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Perf Largest Contentful Paint"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__perf_largest_contentful_paint__values {
    sql: ${TABLE}.metrics.timing_distribution.perf_largest_contentful_paint.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__perf_largest_contentful_paint_from_response_start__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.perf_largest_contentful_paint_from_response_start.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Perf Largest Contentful Paint From Response Start"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__perf_largest_contentful_paint_from_response_start__count {
    sql: ${TABLE}.metrics.timing_distribution.perf_largest_contentful_paint_from_response_start.count ;;
    type: number
    group_label: "Metrics Timing Distribution Perf Largest Contentful Paint From Response Start"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__perf_largest_contentful_paint_from_response_start__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.perf_largest_contentful_paint_from_response_start.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Perf Largest Contentful Paint From Response Start"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__perf_largest_contentful_paint_from_response_start__overflow {
    sql: ${TABLE}.metrics.timing_distribution.perf_largest_contentful_paint_from_response_start.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Perf Largest Contentful Paint From Response Start"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__perf_largest_contentful_paint_from_response_start__range {
    sql: ${TABLE}.metrics.timing_distribution.perf_largest_contentful_paint_from_response_start.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__perf_largest_contentful_paint_from_response_start__sum {
    sql: ${TABLE}.metrics.timing_distribution.perf_largest_contentful_paint_from_response_start.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Perf Largest Contentful Paint From Response Start"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__perf_largest_contentful_paint_from_response_start__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.perf_largest_contentful_paint_from_response_start.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Perf Largest Contentful Paint From Response Start"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__perf_largest_contentful_paint_from_response_start__underflow {
    sql: ${TABLE}.metrics.timing_distribution.perf_largest_contentful_paint_from_response_start.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Perf Largest Contentful Paint From Response Start"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__perf_largest_contentful_paint_from_response_start__values {
    sql: ${TABLE}.metrics.timing_distribution.perf_largest_contentful_paint_from_response_start.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_clone_deserialize_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.performance_clone_deserialize_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Clone Deserialize Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__performance_clone_deserialize_time__count {
    sql: ${TABLE}.metrics.timing_distribution.performance_clone_deserialize_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Clone Deserialize Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__performance_clone_deserialize_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.performance_clone_deserialize_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Clone Deserialize Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__performance_clone_deserialize_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_clone_deserialize_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Clone Deserialize Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__performance_clone_deserialize_time__range {
    sql: ${TABLE}.metrics.timing_distribution.performance_clone_deserialize_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_clone_deserialize_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_clone_deserialize_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Clone Deserialize Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__performance_clone_deserialize_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.performance_clone_deserialize_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Clone Deserialize Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__performance_clone_deserialize_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_clone_deserialize_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Clone Deserialize Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__performance_clone_deserialize_time__values {
    sql: ${TABLE}.metrics.timing_distribution.performance_clone_deserialize_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_interaction_keypress_present_latency__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.performance_interaction_keypress_present_latency.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Interaction Keypress Present Latency"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__performance_interaction_keypress_present_latency__count {
    sql: ${TABLE}.metrics.timing_distribution.performance_interaction_keypress_present_latency.count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Interaction Keypress Present Latency"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__performance_interaction_keypress_present_latency__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.performance_interaction_keypress_present_latency.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Interaction Keypress Present Latency"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__performance_interaction_keypress_present_latency__overflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_interaction_keypress_present_latency.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Interaction Keypress Present Latency"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__performance_interaction_keypress_present_latency__range {
    sql: ${TABLE}.metrics.timing_distribution.performance_interaction_keypress_present_latency.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_interaction_keypress_present_latency__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_interaction_keypress_present_latency.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Interaction Keypress Present Latency"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__performance_interaction_keypress_present_latency__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.performance_interaction_keypress_present_latency.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Interaction Keypress Present Latency"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__performance_interaction_keypress_present_latency__underflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_interaction_keypress_present_latency.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Interaction Keypress Present Latency"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__performance_interaction_keypress_present_latency__values {
    sql: ${TABLE}.metrics.timing_distribution.performance_interaction_keypress_present_latency.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_interaction_mouseup_click_present_latency__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.performance_interaction_mouseup_click_present_latency.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Interaction Mouseup Click Present Latency"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__performance_interaction_mouseup_click_present_latency__count {
    sql: ${TABLE}.metrics.timing_distribution.performance_interaction_mouseup_click_present_latency.count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Interaction Mouseup Click Present Latency"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__performance_interaction_mouseup_click_present_latency__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.performance_interaction_mouseup_click_present_latency.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Interaction Mouseup Click Present Latency"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__performance_interaction_mouseup_click_present_latency__overflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_interaction_mouseup_click_present_latency.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Interaction Mouseup Click Present Latency"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__performance_interaction_mouseup_click_present_latency__range {
    sql: ${TABLE}.metrics.timing_distribution.performance_interaction_mouseup_click_present_latency.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_interaction_mouseup_click_present_latency__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_interaction_mouseup_click_present_latency.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Interaction Mouseup Click Present Latency"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__performance_interaction_mouseup_click_present_latency__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.performance_interaction_mouseup_click_present_latency.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Interaction Mouseup Click Present Latency"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__performance_interaction_mouseup_click_present_latency__underflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_interaction_mouseup_click_present_latency.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Interaction Mouseup Click Present Latency"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__performance_interaction_mouseup_click_present_latency__values {
    sql: ${TABLE}.metrics.timing_distribution.performance_interaction_mouseup_click_present_latency.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_page_non_blank_paint__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.performance_page_non_blank_paint.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Page Non Blank Paint"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__performance_page_non_blank_paint__count {
    sql: ${TABLE}.metrics.timing_distribution.performance_page_non_blank_paint.count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Page Non Blank Paint"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__performance_page_non_blank_paint__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.performance_page_non_blank_paint.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Page Non Blank Paint"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__performance_page_non_blank_paint__overflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_page_non_blank_paint.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Page Non Blank Paint"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__performance_page_non_blank_paint__range {
    sql: ${TABLE}.metrics.timing_distribution.performance_page_non_blank_paint.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_page_non_blank_paint__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_page_non_blank_paint.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Page Non Blank Paint"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__performance_page_non_blank_paint__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.performance_page_non_blank_paint.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Page Non Blank Paint"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__performance_page_non_blank_paint__underflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_page_non_blank_paint.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Page Non Blank Paint"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__performance_page_non_blank_paint__values {
    sql: ${TABLE}.metrics.timing_distribution.performance_page_non_blank_paint.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_page_total_content_page_load__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.performance_page_total_content_page_load.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Page Total Content Page Load"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__performance_page_total_content_page_load__count {
    sql: ${TABLE}.metrics.timing_distribution.performance_page_total_content_page_load.count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Page Total Content Page Load"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__performance_page_total_content_page_load__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.performance_page_total_content_page_load.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Page Total Content Page Load"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__performance_page_total_content_page_load__overflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_page_total_content_page_load.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Page Total Content Page Load"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__performance_page_total_content_page_load__range {
    sql: ${TABLE}.metrics.timing_distribution.performance_page_total_content_page_load.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_page_total_content_page_load__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_page_total_content_page_load.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Page Total Content Page Load"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__performance_page_total_content_page_load__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.performance_page_total_content_page_load.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Page Total Content Page Load"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__performance_page_total_content_page_load__underflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_page_total_content_page_load.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Page Total Content Page Load"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__performance_page_total_content_page_load__values {
    sql: ${TABLE}.metrics.timing_distribution.performance_page_total_content_page_load.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_pageload_async_sheet_load__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_async_sheet_load.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Async Sheet Load"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__performance_pageload_async_sheet_load__count {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_async_sheet_load.count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Async Sheet Load"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__performance_pageload_async_sheet_load__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_async_sheet_load.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Pageload Async Sheet Load"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__performance_pageload_async_sheet_load__overflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_async_sheet_load.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Async Sheet Load"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__performance_pageload_async_sheet_load__range {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_async_sheet_load.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_pageload_async_sheet_load__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_async_sheet_load.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Async Sheet Load"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__performance_pageload_async_sheet_load__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_async_sheet_load.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Pageload Async Sheet Load"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__performance_pageload_async_sheet_load__underflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_async_sheet_load.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Async Sheet Load"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__performance_pageload_async_sheet_load__values {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_async_sheet_load.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preconnect__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preconnect.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preconnect"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preconnect__count {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preconnect.count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preconnect"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preconnect__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preconnect.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preconnect"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preconnect__overflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preconnect.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preconnect"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preconnect__range {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preconnect.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preconnect__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preconnect.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preconnect"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preconnect__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preconnect.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preconnect"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preconnect__underflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preconnect.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preconnect"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preconnect__values {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preconnect.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preconnect_preload_with_eh__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preconnect_preload_with_eh.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preconnect Preload With Eh"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preconnect_preload_with_eh__count {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preconnect_preload_with_eh.count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preconnect Preload With Eh"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preconnect_preload_with_eh__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preconnect_preload_with_eh.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preconnect Preload With Eh"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preconnect_preload_with_eh__overflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preconnect_preload_with_eh.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preconnect Preload With Eh"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preconnect_preload_with_eh__range {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preconnect_preload_with_eh.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preconnect_preload_with_eh__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preconnect_preload_with_eh.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preconnect Preload With Eh"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preconnect_preload_with_eh__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preconnect_preload_with_eh.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preconnect Preload With Eh"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preconnect_preload_with_eh__underflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preconnect_preload_with_eh.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preconnect Preload With Eh"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preconnect_preload_with_eh__values {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preconnect_preload_with_eh.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preconnect_preload_without_eh__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preconnect_preload_without_eh.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preconnect Preload Without Eh"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preconnect_preload_without_eh__count {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preconnect_preload_without_eh.count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preconnect Preload Without Eh"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preconnect_preload_without_eh__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preconnect_preload_without_eh.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preconnect Preload Without Eh"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preconnect_preload_without_eh__overflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preconnect_preload_without_eh.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preconnect Preload Without Eh"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preconnect_preload_without_eh__range {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preconnect_preload_without_eh.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preconnect_preload_without_eh__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preconnect_preload_without_eh.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preconnect Preload Without Eh"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preconnect_preload_without_eh__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preconnect_preload_without_eh.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preconnect Preload Without Eh"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preconnect_preload_without_eh__underflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preconnect_preload_without_eh.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preconnect Preload Without Eh"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preconnect_preload_without_eh__values {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preconnect_preload_without_eh.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preload_with_eh__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preload_with_eh.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preload With Eh"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preload_with_eh__count {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preload_with_eh.count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preload With Eh"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preload_with_eh__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preload_with_eh.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preload With Eh"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preload_with_eh__overflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preload_with_eh.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preload With Eh"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preload_with_eh__range {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preload_with_eh.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preload_with_eh__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preload_with_eh.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preload With Eh"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preload_with_eh__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preload_with_eh.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preload With Eh"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preload_with_eh__underflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preload_with_eh.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preload With Eh"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preload_with_eh__values {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preload_with_eh.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preload_without_eh__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preload_without_eh.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preload Without Eh"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preload_without_eh__count {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preload_without_eh.count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preload Without Eh"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preload_without_eh__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preload_without_eh.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preload Without Eh"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preload_without_eh__overflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preload_without_eh.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preload Without Eh"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preload_without_eh__range {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preload_without_eh.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preload_without_eh__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preload_without_eh.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preload Without Eh"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preload_without_eh__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preload_without_eh.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preload Without Eh"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preload_without_eh__underflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preload_without_eh.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Eh Fcp Preload Without Eh"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__performance_pageload_eh_fcp_preload_without_eh__values {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_eh_fcp_preload_without_eh.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_pageload_fcp__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_fcp.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Fcp"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__performance_pageload_fcp__count {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_fcp.count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Fcp"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__performance_pageload_fcp__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_fcp.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Pageload Fcp"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__performance_pageload_fcp__overflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_fcp.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Fcp"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__performance_pageload_fcp__range {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_fcp.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_pageload_fcp__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_fcp.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Fcp"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__performance_pageload_fcp__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_fcp.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Pageload Fcp"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__performance_pageload_fcp__underflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_fcp.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Fcp"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__performance_pageload_fcp__values {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_fcp.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_pageload_fcp_responsestart__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_fcp_responsestart.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Fcp Responsestart"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__performance_pageload_fcp_responsestart__count {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_fcp_responsestart.count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Fcp Responsestart"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__performance_pageload_fcp_responsestart__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_fcp_responsestart.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Pageload Fcp Responsestart"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__performance_pageload_fcp_responsestart__overflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_fcp_responsestart.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Fcp Responsestart"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__performance_pageload_fcp_responsestart__range {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_fcp_responsestart.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_pageload_fcp_responsestart__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_fcp_responsestart.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Fcp Responsestart"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__performance_pageload_fcp_responsestart__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_fcp_responsestart.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Pageload Fcp Responsestart"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__performance_pageload_fcp_responsestart__underflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_fcp_responsestart.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Fcp Responsestart"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__performance_pageload_fcp_responsestart__values {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_fcp_responsestart.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_pageload_h3p_fcp_with_priority__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_h3p_fcp_with_priority.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload H3P Fcp With Priority"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__performance_pageload_h3p_fcp_with_priority__count {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_h3p_fcp_with_priority.count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload H3P Fcp With Priority"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__performance_pageload_h3p_fcp_with_priority__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_h3p_fcp_with_priority.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Pageload H3P Fcp With Priority"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__performance_pageload_h3p_fcp_with_priority__overflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_h3p_fcp_with_priority.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload H3P Fcp With Priority"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__performance_pageload_h3p_fcp_with_priority__range {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_h3p_fcp_with_priority.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_pageload_h3p_fcp_with_priority__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_h3p_fcp_with_priority.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload H3P Fcp With Priority"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__performance_pageload_h3p_fcp_with_priority__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_h3p_fcp_with_priority.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Pageload H3P Fcp With Priority"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__performance_pageload_h3p_fcp_with_priority__underflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_h3p_fcp_with_priority.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload H3P Fcp With Priority"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__performance_pageload_h3p_fcp_with_priority__values {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_h3p_fcp_with_priority.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_pageload_http3_fcp_http3__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_http3_fcp_http3.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Http3 Fcp Http3"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__performance_pageload_http3_fcp_http3__count {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_http3_fcp_http3.count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Http3 Fcp Http3"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__performance_pageload_http3_fcp_http3__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_http3_fcp_http3.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Pageload Http3 Fcp Http3"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__performance_pageload_http3_fcp_http3__overflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_http3_fcp_http3.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Http3 Fcp Http3"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__performance_pageload_http3_fcp_http3__range {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_http3_fcp_http3.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_pageload_http3_fcp_http3__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_http3_fcp_http3.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Http3 Fcp Http3"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__performance_pageload_http3_fcp_http3__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_http3_fcp_http3.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Pageload Http3 Fcp Http3"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__performance_pageload_http3_fcp_http3__underflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_http3_fcp_http3.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Http3 Fcp Http3"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__performance_pageload_http3_fcp_http3__values {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_http3_fcp_http3.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_pageload_http3_fcp_supports_http3__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_http3_fcp_supports_http3.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Http3 Fcp Supports Http3"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__performance_pageload_http3_fcp_supports_http3__count {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_http3_fcp_supports_http3.count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Http3 Fcp Supports Http3"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__performance_pageload_http3_fcp_supports_http3__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_http3_fcp_supports_http3.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Pageload Http3 Fcp Supports Http3"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__performance_pageload_http3_fcp_supports_http3__overflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_http3_fcp_supports_http3.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Http3 Fcp Supports Http3"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__performance_pageload_http3_fcp_supports_http3__range {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_http3_fcp_supports_http3.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_pageload_http3_fcp_supports_http3__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_http3_fcp_supports_http3.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Http3 Fcp Supports Http3"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__performance_pageload_http3_fcp_supports_http3__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_http3_fcp_supports_http3.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Pageload Http3 Fcp Supports Http3"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__performance_pageload_http3_fcp_supports_http3__underflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_http3_fcp_supports_http3.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Http3 Fcp Supports Http3"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__performance_pageload_http3_fcp_supports_http3__values {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_http3_fcp_supports_http3.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_pageload_http3_fcp_without_priority__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_http3_fcp_without_priority.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Http3 Fcp Without Priority"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__performance_pageload_http3_fcp_without_priority__count {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_http3_fcp_without_priority.count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Http3 Fcp Without Priority"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__performance_pageload_http3_fcp_without_priority__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_http3_fcp_without_priority.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Pageload Http3 Fcp Without Priority"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__performance_pageload_http3_fcp_without_priority__overflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_http3_fcp_without_priority.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Http3 Fcp Without Priority"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__performance_pageload_http3_fcp_without_priority__range {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_http3_fcp_without_priority.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_pageload_http3_fcp_without_priority__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_http3_fcp_without_priority.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Http3 Fcp Without Priority"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__performance_pageload_http3_fcp_without_priority__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_http3_fcp_without_priority.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Pageload Http3 Fcp Without Priority"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__performance_pageload_http3_fcp_without_priority__underflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_http3_fcp_without_priority.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Http3 Fcp Without Priority"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__performance_pageload_http3_fcp_without_priority__values {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_http3_fcp_without_priority.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_pageload_load_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_load_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Load Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__performance_pageload_load_time__count {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_load_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Load Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__performance_pageload_load_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_load_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Pageload Load Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__performance_pageload_load_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_load_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Load Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__performance_pageload_load_time__range {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_load_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_pageload_load_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_load_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Load Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__performance_pageload_load_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_load_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Pageload Load Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__performance_pageload_load_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_load_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Load Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__performance_pageload_load_time__values {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_load_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_pageload_load_time_responsestart__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_load_time_responsestart.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Load Time Responsestart"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__performance_pageload_load_time_responsestart__count {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_load_time_responsestart.count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Load Time Responsestart"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__performance_pageload_load_time_responsestart__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_load_time_responsestart.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Pageload Load Time Responsestart"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__performance_pageload_load_time_responsestart__overflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_load_time_responsestart.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Load Time Responsestart"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__performance_pageload_load_time_responsestart__range {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_load_time_responsestart.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_pageload_load_time_responsestart__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_load_time_responsestart.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Load Time Responsestart"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__performance_pageload_load_time_responsestart__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_load_time_responsestart.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Pageload Load Time Responsestart"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__performance_pageload_load_time_responsestart__underflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_load_time_responsestart.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Load Time Responsestart"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__performance_pageload_load_time_responsestart__values {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_load_time_responsestart.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_pageload_req_anim_frame_callback__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_req_anim_frame_callback.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Req Anim Frame Callback"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__performance_pageload_req_anim_frame_callback__count {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_req_anim_frame_callback.count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Req Anim Frame Callback"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__performance_pageload_req_anim_frame_callback__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_req_anim_frame_callback.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Pageload Req Anim Frame Callback"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__performance_pageload_req_anim_frame_callback__overflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_req_anim_frame_callback.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Req Anim Frame Callback"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__performance_pageload_req_anim_frame_callback__range {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_req_anim_frame_callback.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_pageload_req_anim_frame_callback__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_req_anim_frame_callback.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Req Anim Frame Callback"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__performance_pageload_req_anim_frame_callback__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_req_anim_frame_callback.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Pageload Req Anim Frame Callback"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__performance_pageload_req_anim_frame_callback__underflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_req_anim_frame_callback.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Pageload Req Anim Frame Callback"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__performance_pageload_req_anim_frame_callback__values {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_req_anim_frame_callback.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_responsiveness_req_anim_frame_callback__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.performance_responsiveness_req_anim_frame_callback.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Responsiveness Req Anim Frame Callback"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__performance_responsiveness_req_anim_frame_callback__count {
    sql: ${TABLE}.metrics.timing_distribution.performance_responsiveness_req_anim_frame_callback.count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Responsiveness Req Anim Frame Callback"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__performance_responsiveness_req_anim_frame_callback__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.performance_responsiveness_req_anim_frame_callback.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Responsiveness Req Anim Frame Callback"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__performance_responsiveness_req_anim_frame_callback__overflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_responsiveness_req_anim_frame_callback.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Responsiveness Req Anim Frame Callback"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__performance_responsiveness_req_anim_frame_callback__range {
    sql: ${TABLE}.metrics.timing_distribution.performance_responsiveness_req_anim_frame_callback.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_responsiveness_req_anim_frame_callback__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_responsiveness_req_anim_frame_callback.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Responsiveness Req Anim Frame Callback"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__performance_responsiveness_req_anim_frame_callback__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.performance_responsiveness_req_anim_frame_callback.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Responsiveness Req Anim Frame Callback"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__performance_responsiveness_req_anim_frame_callback__underflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_responsiveness_req_anim_frame_callback.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Responsiveness Req Anim Frame Callback"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__performance_responsiveness_req_anim_frame_callback__values {
    sql: ${TABLE}.metrics.timing_distribution.performance_responsiveness_req_anim_frame_callback.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_time_dom_complete__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_complete.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Dom Complete"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__performance_time_dom_complete__count {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_complete.count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Dom Complete"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__performance_time_dom_complete__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_complete.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Time Dom Complete"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__performance_time_dom_complete__overflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_complete.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Dom Complete"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__performance_time_dom_complete__range {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_complete.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_time_dom_complete__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_complete.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Dom Complete"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__performance_time_dom_complete__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_complete.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Time Dom Complete"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__performance_time_dom_complete__underflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_complete.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Dom Complete"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__performance_time_dom_complete__values {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_complete.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_time_dom_content_loaded_end__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_content_loaded_end.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Dom Content Loaded End"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__performance_time_dom_content_loaded_end__count {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_content_loaded_end.count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Dom Content Loaded End"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__performance_time_dom_content_loaded_end__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_content_loaded_end.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Time Dom Content Loaded End"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__performance_time_dom_content_loaded_end__overflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_content_loaded_end.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Dom Content Loaded End"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__performance_time_dom_content_loaded_end__range {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_content_loaded_end.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_time_dom_content_loaded_end__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_content_loaded_end.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Dom Content Loaded End"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__performance_time_dom_content_loaded_end__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_content_loaded_end.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Time Dom Content Loaded End"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__performance_time_dom_content_loaded_end__underflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_content_loaded_end.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Dom Content Loaded End"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__performance_time_dom_content_loaded_end__values {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_content_loaded_end.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_time_dom_content_loaded_start__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_content_loaded_start.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Dom Content Loaded Start"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__performance_time_dom_content_loaded_start__count {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_content_loaded_start.count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Dom Content Loaded Start"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__performance_time_dom_content_loaded_start__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_content_loaded_start.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Time Dom Content Loaded Start"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__performance_time_dom_content_loaded_start__overflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_content_loaded_start.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Dom Content Loaded Start"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__performance_time_dom_content_loaded_start__range {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_content_loaded_start.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_time_dom_content_loaded_start__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_content_loaded_start.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Dom Content Loaded Start"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__performance_time_dom_content_loaded_start__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_content_loaded_start.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Time Dom Content Loaded Start"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__performance_time_dom_content_loaded_start__underflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_content_loaded_start.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Dom Content Loaded Start"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__performance_time_dom_content_loaded_start__values {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_content_loaded_start.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_time_dom_interactive__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_interactive.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Dom Interactive"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__performance_time_dom_interactive__count {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_interactive.count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Dom Interactive"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__performance_time_dom_interactive__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_interactive.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Time Dom Interactive"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__performance_time_dom_interactive__overflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_interactive.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Dom Interactive"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__performance_time_dom_interactive__range {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_interactive.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_time_dom_interactive__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_interactive.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Dom Interactive"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__performance_time_dom_interactive__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_interactive.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Time Dom Interactive"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__performance_time_dom_interactive__underflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_interactive.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Dom Interactive"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__performance_time_dom_interactive__values {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_interactive.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_time_load_event_end__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_load_event_end.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Load Event End"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__performance_time_load_event_end__count {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_load_event_end.count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Load Event End"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__performance_time_load_event_end__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_load_event_end.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Time Load Event End"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__performance_time_load_event_end__overflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_load_event_end.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Load Event End"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__performance_time_load_event_end__range {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_load_event_end.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_time_load_event_end__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_load_event_end.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Load Event End"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__performance_time_load_event_end__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_load_event_end.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Time Load Event End"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__performance_time_load_event_end__underflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_load_event_end.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Load Event End"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__performance_time_load_event_end__values {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_load_event_end.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_time_load_event_start__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_load_event_start.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Load Event Start"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__performance_time_load_event_start__count {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_load_event_start.count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Load Event Start"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__performance_time_load_event_start__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_load_event_start.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Time Load Event Start"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__performance_time_load_event_start__overflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_load_event_start.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Load Event Start"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__performance_time_load_event_start__range {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_load_event_start.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_time_load_event_start__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_load_event_start.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Load Event Start"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__performance_time_load_event_start__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_load_event_start.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Time Load Event Start"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__performance_time_load_event_start__underflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_load_event_start.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Load Event Start"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__performance_time_load_event_start__values {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_load_event_start.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_time_response_start__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_response_start.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Response Start"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__performance_time_response_start__count {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_response_start.count ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Response Start"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__performance_time_response_start__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_response_start.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Time Response Start"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__performance_time_response_start__overflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_response_start.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Response Start"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__performance_time_response_start__range {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_response_start.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__performance_time_response_start__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_response_start.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Response Start"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__performance_time_response_start__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_response_start.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Performance Time Response Start"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__performance_time_response_start__underflow {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_response_start.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Performance Time Response Start"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__performance_time_response_start__values {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_response_start.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__privacy_sanitize_load_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.privacy_sanitize_load_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Privacy Sanitize Load Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__privacy_sanitize_load_time__count {
    sql: ${TABLE}.metrics.timing_distribution.privacy_sanitize_load_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Privacy Sanitize Load Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__privacy_sanitize_load_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.privacy_sanitize_load_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Privacy Sanitize Load Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__privacy_sanitize_load_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.privacy_sanitize_load_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Privacy Sanitize Load Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__privacy_sanitize_load_time__range {
    sql: ${TABLE}.metrics.timing_distribution.privacy_sanitize_load_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__privacy_sanitize_load_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.privacy_sanitize_load_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Privacy Sanitize Load Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__privacy_sanitize_load_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.privacy_sanitize_load_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Privacy Sanitize Load Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__privacy_sanitize_load_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.privacy_sanitize_load_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Privacy Sanitize Load Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__privacy_sanitize_load_time__values {
    sql: ${TABLE}.metrics.timing_distribution.privacy_sanitize_load_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__wr_framebuild_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.wr_framebuild_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Framebuild Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__wr_framebuild_time__count {
    sql: ${TABLE}.metrics.timing_distribution.wr_framebuild_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Framebuild Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__wr_framebuild_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.wr_framebuild_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Wr Framebuild Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__wr_framebuild_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.wr_framebuild_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Framebuild Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__wr_framebuild_time__range {
    sql: ${TABLE}.metrics.timing_distribution.wr_framebuild_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__wr_framebuild_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.wr_framebuild_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Framebuild Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__wr_framebuild_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.wr_framebuild_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Wr Framebuild Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__wr_framebuild_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.wr_framebuild_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Framebuild Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__wr_framebuild_time__values {
    sql: ${TABLE}.metrics.timing_distribution.wr_framebuild_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__wr_gpu_wait_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.wr_gpu_wait_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Gpu Wait Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__wr_gpu_wait_time__count {
    sql: ${TABLE}.metrics.timing_distribution.wr_gpu_wait_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Gpu Wait Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__wr_gpu_wait_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.wr_gpu_wait_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Wr Gpu Wait Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__wr_gpu_wait_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.wr_gpu_wait_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Gpu Wait Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__wr_gpu_wait_time__range {
    sql: ${TABLE}.metrics.timing_distribution.wr_gpu_wait_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__wr_gpu_wait_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.wr_gpu_wait_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Gpu Wait Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__wr_gpu_wait_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.wr_gpu_wait_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Wr Gpu Wait Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__wr_gpu_wait_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.wr_gpu_wait_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Gpu Wait Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__wr_gpu_wait_time__values {
    sql: ${TABLE}.metrics.timing_distribution.wr_gpu_wait_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__wr_rasterize_blobs_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.wr_rasterize_blobs_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Rasterize Blobs Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__wr_rasterize_blobs_time__count {
    sql: ${TABLE}.metrics.timing_distribution.wr_rasterize_blobs_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Rasterize Blobs Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__wr_rasterize_blobs_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.wr_rasterize_blobs_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Wr Rasterize Blobs Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__wr_rasterize_blobs_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.wr_rasterize_blobs_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Rasterize Blobs Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__wr_rasterize_blobs_time__range {
    sql: ${TABLE}.metrics.timing_distribution.wr_rasterize_blobs_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__wr_rasterize_blobs_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.wr_rasterize_blobs_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Rasterize Blobs Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__wr_rasterize_blobs_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.wr_rasterize_blobs_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Wr Rasterize Blobs Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__wr_rasterize_blobs_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.wr_rasterize_blobs_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Rasterize Blobs Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__wr_rasterize_blobs_time__values {
    sql: ${TABLE}.metrics.timing_distribution.wr_rasterize_blobs_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__wr_rasterize_glyphs_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.wr_rasterize_glyphs_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Rasterize Glyphs Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__wr_rasterize_glyphs_time__count {
    sql: ${TABLE}.metrics.timing_distribution.wr_rasterize_glyphs_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Rasterize Glyphs Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__wr_rasterize_glyphs_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.wr_rasterize_glyphs_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Wr Rasterize Glyphs Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__wr_rasterize_glyphs_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.wr_rasterize_glyphs_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Rasterize Glyphs Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__wr_rasterize_glyphs_time__range {
    sql: ${TABLE}.metrics.timing_distribution.wr_rasterize_glyphs_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__wr_rasterize_glyphs_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.wr_rasterize_glyphs_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Rasterize Glyphs Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__wr_rasterize_glyphs_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.wr_rasterize_glyphs_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Wr Rasterize Glyphs Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__wr_rasterize_glyphs_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.wr_rasterize_glyphs_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Rasterize Glyphs Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__wr_rasterize_glyphs_time__values {
    sql: ${TABLE}.metrics.timing_distribution.wr_rasterize_glyphs_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__wr_renderer_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.wr_renderer_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Renderer Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__wr_renderer_time__count {
    sql: ${TABLE}.metrics.timing_distribution.wr_renderer_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Renderer Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__wr_renderer_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.wr_renderer_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Wr Renderer Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__wr_renderer_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.wr_renderer_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Renderer Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__wr_renderer_time__range {
    sql: ${TABLE}.metrics.timing_distribution.wr_renderer_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__wr_renderer_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.wr_renderer_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Renderer Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__wr_renderer_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.wr_renderer_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Wr Renderer Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__wr_renderer_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.wr_renderer_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Renderer Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__wr_renderer_time__values {
    sql: ${TABLE}.metrics.timing_distribution.wr_renderer_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__wr_renderer_time_no_sc__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.wr_renderer_time_no_sc.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Renderer Time No Sc"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__wr_renderer_time_no_sc__count {
    sql: ${TABLE}.metrics.timing_distribution.wr_renderer_time_no_sc.count ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Renderer Time No Sc"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__wr_renderer_time_no_sc__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.wr_renderer_time_no_sc.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Wr Renderer Time No Sc"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__wr_renderer_time_no_sc__overflow {
    sql: ${TABLE}.metrics.timing_distribution.wr_renderer_time_no_sc.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Renderer Time No Sc"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__wr_renderer_time_no_sc__range {
    sql: ${TABLE}.metrics.timing_distribution.wr_renderer_time_no_sc.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__wr_renderer_time_no_sc__sum {
    sql: ${TABLE}.metrics.timing_distribution.wr_renderer_time_no_sc.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Renderer Time No Sc"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__wr_renderer_time_no_sc__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.wr_renderer_time_no_sc.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Wr Renderer Time No Sc"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__wr_renderer_time_no_sc__underflow {
    sql: ${TABLE}.metrics.timing_distribution.wr_renderer_time_no_sc.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Renderer Time No Sc"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__wr_renderer_time_no_sc__values {
    sql: ${TABLE}.metrics.timing_distribution.wr_renderer_time_no_sc.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__wr_scenebuild_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.wr_scenebuild_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Scenebuild Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__wr_scenebuild_time__count {
    sql: ${TABLE}.metrics.timing_distribution.wr_scenebuild_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Scenebuild Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__wr_scenebuild_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.wr_scenebuild_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Wr Scenebuild Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__wr_scenebuild_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.wr_scenebuild_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Scenebuild Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__wr_scenebuild_time__range {
    sql: ${TABLE}.metrics.timing_distribution.wr_scenebuild_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__wr_scenebuild_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.wr_scenebuild_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Scenebuild Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__wr_scenebuild_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.wr_scenebuild_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Wr Scenebuild Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__wr_scenebuild_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.wr_scenebuild_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Scenebuild Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__wr_scenebuild_time__values {
    sql: ${TABLE}.metrics.timing_distribution.wr_scenebuild_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__wr_sceneswap_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.wr_sceneswap_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Sceneswap Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__wr_sceneswap_time__count {
    sql: ${TABLE}.metrics.timing_distribution.wr_sceneswap_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Sceneswap Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__wr_sceneswap_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.wr_sceneswap_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Wr Sceneswap Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__wr_sceneswap_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.wr_sceneswap_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Sceneswap Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__wr_sceneswap_time__range {
    sql: ${TABLE}.metrics.timing_distribution.wr_sceneswap_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__wr_sceneswap_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.wr_sceneswap_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Sceneswap Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__wr_sceneswap_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.wr_sceneswap_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Wr Sceneswap Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__wr_sceneswap_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.wr_sceneswap_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Sceneswap Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__wr_sceneswap_time__values {
    sql: ${TABLE}.metrics.timing_distribution.wr_sceneswap_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__wr_texture_cache_update_time__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.wr_texture_cache_update_time.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Texture Cache Update Time"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__wr_texture_cache_update_time__count {
    sql: ${TABLE}.metrics.timing_distribution.wr_texture_cache_update_time.count ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Texture Cache Update Time"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__wr_texture_cache_update_time__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.wr_texture_cache_update_time.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Wr Texture Cache Update Time"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__wr_texture_cache_update_time__overflow {
    sql: ${TABLE}.metrics.timing_distribution.wr_texture_cache_update_time.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Texture Cache Update Time"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__wr_texture_cache_update_time__range {
    sql: ${TABLE}.metrics.timing_distribution.wr_texture_cache_update_time.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__wr_texture_cache_update_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.wr_texture_cache_update_time.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Texture Cache Update Time"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__wr_texture_cache_update_time__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.wr_texture_cache_update_time.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Wr Texture Cache Update Time"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__wr_texture_cache_update_time__underflow {
    sql: ${TABLE}.metrics.timing_distribution.wr_texture_cache_update_time.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Texture Cache Update Time"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__wr_texture_cache_update_time__values {
    sql: ${TABLE}.metrics.timing_distribution.wr_texture_cache_update_time.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__wr_time_to_frame_build__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.wr_time_to_frame_build.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Time To Frame Build"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__wr_time_to_frame_build__count {
    sql: ${TABLE}.metrics.timing_distribution.wr_time_to_frame_build.count ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Time To Frame Build"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__wr_time_to_frame_build__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.wr_time_to_frame_build.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Wr Time To Frame Build"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__wr_time_to_frame_build__overflow {
    sql: ${TABLE}.metrics.timing_distribution.wr_time_to_frame_build.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Time To Frame Build"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__wr_time_to_frame_build__range {
    sql: ${TABLE}.metrics.timing_distribution.wr_time_to_frame_build.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__wr_time_to_frame_build__sum {
    sql: ${TABLE}.metrics.timing_distribution.wr_time_to_frame_build.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Time To Frame Build"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__wr_time_to_frame_build__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.wr_time_to_frame_build.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Wr Time To Frame Build"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__wr_time_to_frame_build__underflow {
    sql: ${TABLE}.metrics.timing_distribution.wr_time_to_frame_build.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Time To Frame Build"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__wr_time_to_frame_build__values {
    sql: ${TABLE}.metrics.timing_distribution.wr_time_to_frame_build.values ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__wr_time_to_render_start__bucket_count {
    sql: ${TABLE}.metrics.timing_distribution.wr_time_to_render_start.bucket_count ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Time To Render Start"
    group_item_label: "Bucket Count"
  }

  dimension: metrics__timing_distribution__wr_time_to_render_start__count {
    sql: ${TABLE}.metrics.timing_distribution.wr_time_to_render_start.count ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Time To Render Start"
    group_item_label: "Count"
  }

  dimension: metrics__timing_distribution__wr_time_to_render_start__histogram_type {
    sql: ${TABLE}.metrics.timing_distribution.wr_time_to_render_start.histogram_type ;;
    type: string
    group_label: "Metrics Timing Distribution Wr Time To Render Start"
    group_item_label: "Histogram Type"
  }

  dimension: metrics__timing_distribution__wr_time_to_render_start__overflow {
    sql: ${TABLE}.metrics.timing_distribution.wr_time_to_render_start.overflow ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Time To Render Start"
    group_item_label: "Overflow"
  }

  dimension: metrics__timing_distribution__wr_time_to_render_start__range {
    sql: ${TABLE}.metrics.timing_distribution.wr_time_to_render_start.range ;;
    hidden: yes
  }

  dimension: metrics__timing_distribution__wr_time_to_render_start__sum {
    sql: ${TABLE}.metrics.timing_distribution.wr_time_to_render_start.sum ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Time To Render Start"
    group_item_label: "Sum"
  }

  dimension: metrics__timing_distribution__wr_time_to_render_start__time_unit {
    sql: ${TABLE}.metrics.timing_distribution.wr_time_to_render_start.time_unit ;;
    type: string
    group_label: "Metrics Timing Distribution Wr Time To Render Start"
    group_item_label: "Time Unit"
  }

  dimension: metrics__timing_distribution__wr_time_to_render_start__underflow {
    sql: ${TABLE}.metrics.timing_distribution.wr_time_to_render_start.underflow ;;
    type: number
    group_label: "Metrics Timing Distribution Wr Time To Render Start"
    group_item_label: "Underflow"
  }

  dimension: metrics__timing_distribution__wr_time_to_render_start__values {
    sql: ${TABLE}.metrics.timing_distribution.wr_time_to_render_start.values ;;
    hidden: yes
  }

  dimension: metrics__uuid__legacy_ids_client_id {
    sql: ${TABLE}.metrics.uuid.legacy_ids_client_id ;;
    type: string
    group_label: "Metrics Uuid"
    group_item_label: "Legacy Ids Client Id"
  }

  dimension: normalized_app_id {
    sql: ${TABLE}.normalized_app_id ;;
    type: string
    description: "App ID of the channel data was received from"
  }

  dimension: normalized_app_name {
    sql: ${TABLE}.normalized_app_name ;;
    type: string
  }

  dimension: normalized_channel {
    sql: ${TABLE}.normalized_channel ;;
    type: string
    description: "Normalized channel name"
  }

  dimension: normalized_country_code {
    sql: ${TABLE}.normalized_country_code ;;
    type: string
  }

  dimension: normalized_os {
    sql: ${TABLE}.normalized_os ;;
    type: string
  }

  dimension: normalized_os_version {
    sql: ${TABLE}.normalized_os_version ;;
    type: string
  }

  dimension: ping_info__end_time {
    sql: ${TABLE}.ping_info.end_time ;;
    type: string
    group_label: "Ping Info"
    group_item_label: "End Time"
  }

  dimension: ping_info__experiments {
    sql: ${TABLE}.ping_info.experiments ;;
    hidden: yes
  }

  dimension: ping_info__ping_type {
    sql: ${TABLE}.ping_info.ping_type ;;
    type: string
    group_label: "Ping Info"
    group_item_label: "Ping Type"
  }

  dimension: ping_info__reason {
    sql: ${TABLE}.ping_info.reason ;;
    type: string
    group_label: "Ping Info"
    group_item_label: "Reason"
  }

  dimension: ping_info__seq {
    sql: ${TABLE}.ping_info.seq ;;
    type: number
    group_label: "Ping Info"
    group_item_label: "Seq"
  }

  dimension: ping_info__start_time {
    sql: ${TABLE}.ping_info.start_time ;;
    type: string
    group_label: "Ping Info"
    group_item_label: "Start Time"
  }

  dimension: sample_id {
    sql: ${TABLE}.sample_id ;;
    type: number
  }

  dimension_group: metadata__header__parsed {
    sql: ${TABLE}.metadata.header.parsed_date ;;
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
    ]
    label: "Metadata Header: Parsed Date"
  }

  dimension_group: metrics__datetime__blocklist_last_modified_rs_addons_mblf {
    sql: ${TABLE}.metrics.datetime.blocklist_last_modified_rs_addons_mblf ;;
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
    ]
    label: "Metrics Datetime: Blocklist Last Modified Rs Addons Mblf"
  }

  dimension_group: metrics__datetime__blocklist_mlbf_generation {
    sql: ${TABLE}.metrics.datetime.blocklist_mlbf_generation_time ;;
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
    ]
    label: "Metrics Datetime: Blocklist Mlbf Generation Time"
  }

  dimension_group: metrics__datetime__blocklist_mlbf_softblocks_generation {
    sql: ${TABLE}.metrics.datetime.blocklist_mlbf_softblocks_generation_time ;;
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
    ]
    label: "Metrics Datetime: Blocklist Mlbf Softblocks Generation Time"
  }

  dimension_group: metrics__datetime__blocklist_mlbf_stash_time_newest {
    sql: ${TABLE}.metrics.datetime.blocklist_mlbf_stash_time_newest ;;
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
    ]
    label: "Metrics Datetime: Blocklist Mlbf Stash Time Newest"
  }

  dimension_group: metrics__datetime__blocklist_mlbf_stash_time_oldest {
    sql: ${TABLE}.metrics.datetime.blocklist_mlbf_stash_time_oldest ;;
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
    ]
    label: "Metrics Datetime: Blocklist Mlbf Stash Time Oldest"
  }

  dimension_group: metrics__datetime__glean_validation_first_run_hour {
    sql: ${TABLE}.metrics.datetime.glean_validation_first_run_hour ;;
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
    ]
    label: "Metrics Datetime: Glean Validation First Run Hour"
  }

  dimension_group: ping_info__parsed_end {
    sql: ${TABLE}.ping_info.parsed_end_time ;;
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
    ]
    label: "Ping Info: Parsed End Time"
  }

  dimension_group: ping_info__parsed_start {
    sql: ${TABLE}.ping_info.parsed_start_time ;;
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
    ]
    label: "Ping Info: Parsed Start Time"
  }

  dimension_group: submission {
    sql: ${TABLE}.submission_timestamp ;;
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
    ]
  }

  parameter: channel {
    type: unquoted
    default_value: "mozdata.focus_android.metrics"

    allowed_value: {
      label: "Release"
      value: "mozdata.focus_android.metrics"
    }

    allowed_value: {
      label: "Beta"
      value: "mozdata.org_mozilla_focus_beta.metrics"
    }

    allowed_value: {
      label: "Nightly"
      value: "mozdata.org_mozilla_focus_nightly.metrics"
    }
  }

  sql_table_name: `{% parameter channel %}` ;;
}

view: metrics_table__events {
  dimension: category {
    sql: ${TABLE}.category ;;
    type: string
  }

  dimension: extra {
    sql: ${TABLE}.extra ;;
    hidden: yes
  }

  dimension: name {
    sql: ${TABLE}.name ;;
    type: string
  }

  dimension: timestamp {
    sql: ${TABLE}.timestamp ;;
    type: number
  }
}

view: metrics_table__events__extra {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: string
  }
}

view: metrics_table__metrics__custom_distribution__bounce_tracking_protection_num_hosts_per_purge_run__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__cert_compression_brotli_saved_bytes__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__cert_compression_zlib_saved_bytes__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__cert_compression_zstd_saved_bytes__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__cookie_banners_click_query_selector_run_count_per_window_frame__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__cookie_banners_click_query_selector_run_count_per_window_top_level__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__cookie_banners_click_query_selector_run_duration_per_window_frame__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__cookie_banners_click_query_selector_run_duration_per_window_top_level__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__extensions_timing_event_page_running_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__fog_validation_gvsv_number_of_unique_site_origins_all_tabs__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__geckoview_document_site_origins__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__geckoview_per_document_site_origins__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__geolocation_accuracy__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__gfx_checkerboard_peak_pixel_count__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__gfx_checkerboard_severity__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__gfx_content_frame_time_from_paint__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__gfx_content_frame_time_from_vsync__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__gfx_content_frame_time_with_svg__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__gfx_content_frame_time_without_resource_upload__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__gfx_content_frame_time_without_upload__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__network_tls_early_data_bytes_written__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__networking_cookie_access_fixup_diff__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__networking_cookie_chips_partition_limit_overflow__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__networking_cookie_count_part_by_key__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__networking_cookie_count_partitioned__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__networking_cookie_count_total__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__networking_cookie_count_unpart_by_key__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__networking_cookie_count_unpartitioned__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__networking_cookie_creation_fixup_diff__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__networking_cookie_purge_entry_max__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__networking_cookie_purge_max__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__networking_http_1_download_throughput__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__networking_http_1_upload_throughput__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__networking_http_1_upload_throughput_100__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__networking_http_1_upload_throughput_10_50__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__networking_http_1_upload_throughput_50_100__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__networking_http_2_download_throughput__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__networking_http_2_upload_throughput__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__networking_http_2_upload_throughput_100__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__networking_http_2_upload_throughput_10_50__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__networking_http_2_upload_throughput_50_100__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__networking_http_3_download_throughput__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__networking_http_3_download_throughput_100__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__networking_http_3_download_throughput_10_50__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__networking_http_3_download_throughput_50_100__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__networking_http_3_ecn_ce_ect0_ratio_received__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__networking_http_3_ecn_ce_ect0_ratio_sent__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__networking_http_3_loss_ratio__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__networking_http_3_udp_datagram_segments_received__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__networking_http_3_upload_throughput__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__networking_http_3_upload_throughput_100__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__networking_http_3_upload_throughput_10_50__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__networking_http_3_upload_throughput_50_100__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__pdfjs_editing_highlight_thickness__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__pdfjs_time_to_view__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__performance_clone_deserialize_items__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__power_battery_percentage_when_user_active__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__tab_count_app_backgrounded__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__custom_distribution__timer_thread_timers_fired_per_wakeup__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__labeled_boolean__a11y_theme {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: yesno
  }
}

view: metrics_table__metrics__labeled_boolean__cookie_banners_normal_window_service_mode {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: yesno
  }
}

view: metrics_table__metrics__labeled_boolean__cookie_banners_private_window_service_mode {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: yesno
  }
}

view: metrics_table__metrics__labeled_boolean__data_storage_migration {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: yesno
  }
}

view: metrics_table__metrics__labeled_boolean__geolocation_linux_provider {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: yesno
  }
}

view: metrics_table__metrics__labeled_boolean__media_playback_device_hardware_decoder_support {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: yesno
  }
}

view: metrics_table__metrics__labeled_boolean__media_video_hardware_decoding_support {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: yesno
  }
}

view: metrics_table__metrics__labeled_boolean__media_video_hd_hardware_decoding_support {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: yesno
  }
}

view: metrics_table__metrics__labeled_boolean__oskeystore_self_test {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: yesno
  }
}

view: metrics_table__metrics__labeled_boolean__pdfjs_image_alt_text_edit {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: yesno
  }
}

view: metrics_table__metrics__labeled_custom_distribution__networking_http_3_ecn_ce_ect0_ratio {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value__count {
    sql: ${TABLE}.value.count ;;
    type: number
    group_label: "Value"
    group_item_label: "Count"
  }

  dimension: value__sum {
    sql: ${TABLE}.value.sum ;;
    type: number
    group_label: "Value"
    group_item_label: "Sum"
  }

  dimension: value__values {
    sql: ${TABLE}.value.values ;;
    hidden: yes
  }
}

view: metrics_table__metrics__labeled_custom_distribution__networking_http_3_ecn_ce_ect0_ratio__value__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__labeled_string__cookie_banners_google_gdpr_choice_cookie {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: string
  }
}

view: metrics_table__metrics__labeled_timing_distribution__netwerk_http3_0rtt_state_duration {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value__bucket_count {
    sql: ${TABLE}.value.bucket_count ;;
    type: number
    group_label: "Value"
    group_item_label: "Bucket Count"
  }

  dimension: value__count {
    sql: ${TABLE}.value.count ;;
    type: number
    group_label: "Value"
    group_item_label: "Count"
  }

  dimension: value__histogram_type {
    sql: ${TABLE}.value.histogram_type ;;
    type: string
    group_label: "Value"
    group_item_label: "Histogram Type"
  }

  dimension: value__overflow {
    sql: ${TABLE}.value.overflow ;;
    type: number
    group_label: "Value"
    group_item_label: "Overflow"
  }

  dimension: value__range {
    sql: ${TABLE}.value.range ;;
    hidden: yes
  }

  dimension: value__sum {
    sql: ${TABLE}.value.sum ;;
    type: number
    group_label: "Value"
    group_item_label: "Sum"
  }

  dimension: value__time_unit {
    sql: ${TABLE}.value.time_unit ;;
    type: string
    group_label: "Value"
    group_item_label: "Time Unit"
  }

  dimension: value__underflow {
    sql: ${TABLE}.value.underflow ;;
    type: number
    group_label: "Value"
    group_item_label: "Underflow"
  }

  dimension: value__values {
    sql: ${TABLE}.value.values ;;
    hidden: yes
  }
}

view: metrics_table__metrics__labeled_timing_distribution__netwerk_http3_0rtt_state_duration__value__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__labeled_timing_distribution__network_http3_complete_load {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value__bucket_count {
    sql: ${TABLE}.value.bucket_count ;;
    type: number
    group_label: "Value"
    group_item_label: "Bucket Count"
  }

  dimension: value__count {
    sql: ${TABLE}.value.count ;;
    type: number
    group_label: "Value"
    group_item_label: "Count"
  }

  dimension: value__histogram_type {
    sql: ${TABLE}.value.histogram_type ;;
    type: string
    group_label: "Value"
    group_item_label: "Histogram Type"
  }

  dimension: value__overflow {
    sql: ${TABLE}.value.overflow ;;
    type: number
    group_label: "Value"
    group_item_label: "Overflow"
  }

  dimension: value__range {
    sql: ${TABLE}.value.range ;;
    hidden: yes
  }

  dimension: value__sum {
    sql: ${TABLE}.value.sum ;;
    type: number
    group_label: "Value"
    group_item_label: "Sum"
  }

  dimension: value__time_unit {
    sql: ${TABLE}.value.time_unit ;;
    type: string
    group_label: "Value"
    group_item_label: "Time Unit"
  }

  dimension: value__underflow {
    sql: ${TABLE}.value.underflow ;;
    type: number
    group_label: "Value"
    group_item_label: "Underflow"
  }

  dimension: value__values {
    sql: ${TABLE}.value.values ;;
    hidden: yes
  }
}

view: metrics_table__metrics__labeled_timing_distribution__network_http3_complete_load__value__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__labeled_timing_distribution__network_http3_first_sent_to_last_received {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value__bucket_count {
    sql: ${TABLE}.value.bucket_count ;;
    type: number
    group_label: "Value"
    group_item_label: "Bucket Count"
  }

  dimension: value__count {
    sql: ${TABLE}.value.count ;;
    type: number
    group_label: "Value"
    group_item_label: "Count"
  }

  dimension: value__histogram_type {
    sql: ${TABLE}.value.histogram_type ;;
    type: string
    group_label: "Value"
    group_item_label: "Histogram Type"
  }

  dimension: value__overflow {
    sql: ${TABLE}.value.overflow ;;
    type: number
    group_label: "Value"
    group_item_label: "Overflow"
  }

  dimension: value__range {
    sql: ${TABLE}.value.range ;;
    hidden: yes
  }

  dimension: value__sum {
    sql: ${TABLE}.value.sum ;;
    type: number
    group_label: "Value"
    group_item_label: "Sum"
  }

  dimension: value__time_unit {
    sql: ${TABLE}.value.time_unit ;;
    type: string
    group_label: "Value"
    group_item_label: "Time Unit"
  }

  dimension: value__underflow {
    sql: ${TABLE}.value.underflow ;;
    type: number
    group_label: "Value"
    group_item_label: "Underflow"
  }

  dimension: value__values {
    sql: ${TABLE}.value.values ;;
    hidden: yes
  }
}

view: metrics_table__metrics__labeled_timing_distribution__network_http3_first_sent_to_last_received__value__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__labeled_timing_distribution__network_http3_open_to_first_received {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value__bucket_count {
    sql: ${TABLE}.value.bucket_count ;;
    type: number
    group_label: "Value"
    group_item_label: "Bucket Count"
  }

  dimension: value__count {
    sql: ${TABLE}.value.count ;;
    type: number
    group_label: "Value"
    group_item_label: "Count"
  }

  dimension: value__histogram_type {
    sql: ${TABLE}.value.histogram_type ;;
    type: string
    group_label: "Value"
    group_item_label: "Histogram Type"
  }

  dimension: value__overflow {
    sql: ${TABLE}.value.overflow ;;
    type: number
    group_label: "Value"
    group_item_label: "Overflow"
  }

  dimension: value__range {
    sql: ${TABLE}.value.range ;;
    hidden: yes
  }

  dimension: value__sum {
    sql: ${TABLE}.value.sum ;;
    type: number
    group_label: "Value"
    group_item_label: "Sum"
  }

  dimension: value__time_unit {
    sql: ${TABLE}.value.time_unit ;;
    type: string
    group_label: "Value"
    group_item_label: "Time Unit"
  }

  dimension: value__underflow {
    sql: ${TABLE}.value.underflow ;;
    type: number
    group_label: "Value"
    group_item_label: "Underflow"
  }

  dimension: value__values {
    sql: ${TABLE}.value.values ;;
    hidden: yes
  }
}

view: metrics_table__metrics__labeled_timing_distribution__network_http3_open_to_first_received__value__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__labeled_timing_distribution__network_http3_open_to_first_sent {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value__bucket_count {
    sql: ${TABLE}.value.bucket_count ;;
    type: number
    group_label: "Value"
    group_item_label: "Bucket Count"
  }

  dimension: value__count {
    sql: ${TABLE}.value.count ;;
    type: number
    group_label: "Value"
    group_item_label: "Count"
  }

  dimension: value__histogram_type {
    sql: ${TABLE}.value.histogram_type ;;
    type: string
    group_label: "Value"
    group_item_label: "Histogram Type"
  }

  dimension: value__overflow {
    sql: ${TABLE}.value.overflow ;;
    type: number
    group_label: "Value"
    group_item_label: "Overflow"
  }

  dimension: value__range {
    sql: ${TABLE}.value.range ;;
    hidden: yes
  }

  dimension: value__sum {
    sql: ${TABLE}.value.sum ;;
    type: number
    group_label: "Value"
    group_item_label: "Sum"
  }

  dimension: value__time_unit {
    sql: ${TABLE}.value.time_unit ;;
    type: string
    group_label: "Value"
    group_item_label: "Time Unit"
  }

  dimension: value__underflow {
    sql: ${TABLE}.value.underflow ;;
    type: number
    group_label: "Value"
    group_item_label: "Underflow"
  }

  dimension: value__values {
    sql: ${TABLE}.value.values ;;
    hidden: yes
  }
}

view: metrics_table__metrics__labeled_timing_distribution__network_http3_open_to_first_sent__value__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__labeled_timing_distribution__network_http3_tls_handshake {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value__bucket_count {
    sql: ${TABLE}.value.bucket_count ;;
    type: number
    group_label: "Value"
    group_item_label: "Bucket Count"
  }

  dimension: value__count {
    sql: ${TABLE}.value.count ;;
    type: number
    group_label: "Value"
    group_item_label: "Count"
  }

  dimension: value__histogram_type {
    sql: ${TABLE}.value.histogram_type ;;
    type: string
    group_label: "Value"
    group_item_label: "Histogram Type"
  }

  dimension: value__overflow {
    sql: ${TABLE}.value.overflow ;;
    type: number
    group_label: "Value"
    group_item_label: "Overflow"
  }

  dimension: value__range {
    sql: ${TABLE}.value.range ;;
    hidden: yes
  }

  dimension: value__sum {
    sql: ${TABLE}.value.sum ;;
    type: number
    group_label: "Value"
    group_item_label: "Sum"
  }

  dimension: value__time_unit {
    sql: ${TABLE}.value.time_unit ;;
    type: string
    group_label: "Value"
    group_item_label: "Time Unit"
  }

  dimension: value__underflow {
    sql: ${TABLE}.value.underflow ;;
    type: number
    group_label: "Value"
    group_item_label: "Underflow"
  }

  dimension: value__values {
    sql: ${TABLE}.value.values ;;
    hidden: yes
  }
}

view: metrics_table__metrics__labeled_timing_distribution__network_http3_tls_handshake__value__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__labeled_timing_distribution__network_sup_http3_tcp_connection {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value__bucket_count {
    sql: ${TABLE}.value.bucket_count ;;
    type: number
    group_label: "Value"
    group_item_label: "Bucket Count"
  }

  dimension: value__count {
    sql: ${TABLE}.value.count ;;
    type: number
    group_label: "Value"
    group_item_label: "Count"
  }

  dimension: value__histogram_type {
    sql: ${TABLE}.value.histogram_type ;;
    type: string
    group_label: "Value"
    group_item_label: "Histogram Type"
  }

  dimension: value__overflow {
    sql: ${TABLE}.value.overflow ;;
    type: number
    group_label: "Value"
    group_item_label: "Overflow"
  }

  dimension: value__range {
    sql: ${TABLE}.value.range ;;
    hidden: yes
  }

  dimension: value__sum {
    sql: ${TABLE}.value.sum ;;
    type: number
    group_label: "Value"
    group_item_label: "Sum"
  }

  dimension: value__time_unit {
    sql: ${TABLE}.value.time_unit ;;
    type: string
    group_label: "Value"
    group_item_label: "Time Unit"
  }

  dimension: value__underflow {
    sql: ${TABLE}.value.underflow ;;
    type: number
    group_label: "Value"
    group_item_label: "Underflow"
  }

  dimension: value__values {
    sql: ${TABLE}.value.values ;;
    hidden: yes
  }
}

view: metrics_table__metrics__labeled_timing_distribution__network_sup_http3_tcp_connection__value__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__labeled_timing_distribution__networking_trr_fetch_duration {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value__bucket_count {
    sql: ${TABLE}.value.bucket_count ;;
    type: number
    group_label: "Value"
    group_item_label: "Bucket Count"
  }

  dimension: value__count {
    sql: ${TABLE}.value.count ;;
    type: number
    group_label: "Value"
    group_item_label: "Count"
  }

  dimension: value__histogram_type {
    sql: ${TABLE}.value.histogram_type ;;
    type: string
    group_label: "Value"
    group_item_label: "Histogram Type"
  }

  dimension: value__overflow {
    sql: ${TABLE}.value.overflow ;;
    type: number
    group_label: "Value"
    group_item_label: "Overflow"
  }

  dimension: value__range {
    sql: ${TABLE}.value.range ;;
    hidden: yes
  }

  dimension: value__sum {
    sql: ${TABLE}.value.sum ;;
    type: number
    group_label: "Value"
    group_item_label: "Sum"
  }

  dimension: value__time_unit {
    sql: ${TABLE}.value.time_unit ;;
    type: string
    group_label: "Value"
    group_item_label: "Time Unit"
  }

  dimension: value__underflow {
    sql: ${TABLE}.value.underflow ;;
    type: number
    group_label: "Value"
    group_item_label: "Underflow"
  }

  dimension: value__values {
    sql: ${TABLE}.value.values ;;
    hidden: yes
  }
}

view: metrics_table__metrics__labeled_timing_distribution__networking_trr_fetch_duration__value__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__memory_distribution__cert_storage_memory__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__memory_distribution__extensions_apis_dnr_startup_cache_read_size__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__memory_distribution__extensions_apis_dnr_startup_cache_write_size__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__memory_distribution__fog_ipc_buffer_sizes__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__memory_distribution__glean_database_size__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__memory_distribution__glean_upload_discarded_exceeding_pings_size__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__memory_distribution__glean_upload_pending_pings_directory_size__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__memory_distribution__networking_cache_metadata_size__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__memory_distribution__networking_http_3_udp_datagram_segment_size_received__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__memory_distribution__networking_http_3_udp_datagram_segment_size_sent__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__memory_distribution__networking_http_3_udp_datagram_size_received__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__memory_distribution__performance_clone_deserialize_size__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__bounce_tracking_protection_purge_duration__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__cert_verification_time_failure__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__cert_verification_time_success__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__cert_verifier_cert_trust_evaluation_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__cookie_banners_click_handle_duration__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__cookie_banners_cmp_handle_duration__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__extensions_apis_dnr_evaluate_rules_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__extensions_apis_dnr_startup_cache_read_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__extensions_apis_dnr_startup_cache_write_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__extensions_apis_dnr_validate_rules_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__extensions_timing_background_page_load__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__extensions_timing_browser_action_popup_open__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__extensions_timing_content_script_injection__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__extensions_timing_extension_startup__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__extensions_timing_page_action_popup_open__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__extensions_timing_storage_local_get_idb__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__extensions_timing_storage_local_get_json__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__extensions_timing_storage_local_set_idb__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__extensions_timing_storage_local_set_json__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__fingerprinting_protection_canvas_noise_calculate_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__fog_ipc_flush_durations__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__fog_validation_gvsv_composite_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__geckoview_content_process_lifetime__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__geckoview_page_load_progress_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__geckoview_page_load_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__geckoview_page_reload_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__geckoview_startup_runtime__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__gfx_checkerboard_duration__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__gfx_checkerboard_potential_duration__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__gfx_composite_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__gfx_content_full_paint_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__gfx_content_paint_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__gfx_scroll_present_latency__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__glean_database_write_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__glean_upload_send_failure__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__glean_upload_send_success__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__glean_validation_shutdown_dispatcher_wait__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__glean_validation_shutdown_wait__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__httpsfirst_downgrade_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__httpsfirst_downgrade_time_schemeless__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__javascript_gc_compact_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__javascript_gc_mark_roots_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__javascript_gc_mark_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__javascript_gc_minor_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__javascript_gc_prepare_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__javascript_gc_slice_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__javascript_gc_sweep_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__javascript_gc_total_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__javascript_pageload_baseline_compile_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__javascript_pageload_delazification_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__javascript_pageload_execution_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__javascript_pageload_gc_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__javascript_pageload_parse_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__javascript_pageload_protect_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__javascript_pageload_xdr_encode_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__ls_preparedatastore_processing_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__ls_preparelsdatabase_processing_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__network_cache_hit_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__network_cache_read_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__network_complete_load__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__network_complete_load_cached__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__network_complete_load_net__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__network_dns_end__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__network_dns_start__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__network_first_from_cache__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__network_first_sent_to_last_received__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__network_font_download_end__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__network_http_revalidation__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__network_open_to_first_received__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__network_open_to_first_sent__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__network_open_to_transaction_pending__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__network_sub_cache_read_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__network_sub_complete_load__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__network_sub_complete_load_cached__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__network_sub_complete_load_net__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__network_sub_dns_end__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__network_sub_dns_start__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__network_sub_first_from_cache__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__network_sub_first_sent_to_last_received__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__network_sub_http_revalidation__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__network_sub_open_to_first_received__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__network_sub_open_to_first_sent__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__network_sub_tcp_connection__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__network_sub_tls_handshake__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__network_tcp_connection__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__network_tls_handshake__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__networking_cache_metadata_first_read_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__networking_cache_metadata_second_read_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__networking_dns_failed_lookup_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__networking_dns_lookup_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__networking_dns_native_https_call_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__networking_dns_renewal_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__networking_dns_renewal_time_for_ttl__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__networking_http_channel_page_open_to_first_sent__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__networking_http_channel_page_open_to_first_sent_https_rr__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__networking_http_channel_sub_open_to_first_sent__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__networking_http_channel_sub_open_to_first_sent_https_rr__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__networking_http_content_cssloader_ondatafinished_to_onstop_delay__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__networking_http_content_html5parser_ondatafinished_to_onstop_delay__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__networking_http_content_html5parser_ondatafinished_to_onstop_delay_negative__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__networking_http_content_ondatafinished_delay__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__networking_http_content_ondatafinished_delay_2__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__networking_http_content_ondatafinished_to_onstop_delay__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__networking_http_content_ondatafinished_to_onstop_delay_negative__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__networking_http_content_onstart_delay__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__networking_http_content_onstop_delay__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__networking_http_onstart_suspend_total_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__networking_sqlite_cookies_block_main_thread__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__networking_sqlite_cookies_time_to_block_main_thread__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__networking_transaction_wait_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__networking_transaction_wait_time_https_rr__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__nimbus_health_apply_pending_experiments_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__nimbus_health_fetch_experiments_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__ocsp_request_time_cancel__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__ocsp_request_time_failure__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__ocsp_request_time_success__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__paint_build_displaylist_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__perf_largest_contentful_paint__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__perf_largest_contentful_paint_from_response_start__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__performance_clone_deserialize_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__performance_interaction_keypress_present_latency__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__performance_interaction_mouseup_click_present_latency__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__performance_page_non_blank_paint__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__performance_page_total_content_page_load__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__performance_pageload_async_sheet_load__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__performance_pageload_eh_fcp_preconnect__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__performance_pageload_eh_fcp_preconnect_preload_with_eh__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__performance_pageload_eh_fcp_preconnect_preload_without_eh__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__performance_pageload_eh_fcp_preload_with_eh__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__performance_pageload_eh_fcp_preload_without_eh__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__performance_pageload_fcp__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__performance_pageload_fcp_responsestart__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__performance_pageload_h3p_fcp_with_priority__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__performance_pageload_http3_fcp_http3__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__performance_pageload_http3_fcp_supports_http3__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__performance_pageload_http3_fcp_without_priority__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__performance_pageload_load_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__performance_pageload_load_time_responsestart__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__performance_pageload_req_anim_frame_callback__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__performance_responsiveness_req_anim_frame_callback__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__performance_time_dom_complete__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__performance_time_dom_content_loaded_end__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__performance_time_dom_content_loaded_start__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__performance_time_dom_interactive__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__performance_time_load_event_end__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__performance_time_load_event_start__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__performance_time_response_start__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__privacy_sanitize_load_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__wr_framebuild_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__wr_gpu_wait_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__wr_rasterize_blobs_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__wr_rasterize_glyphs_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__wr_renderer_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__wr_renderer_time_no_sc__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__wr_scenebuild_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__wr_sceneswap_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__wr_texture_cache_update_time__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__wr_time_to_frame_build__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__metrics__timing_distribution__wr_time_to_render_start__values {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value {
    sql: ${TABLE}.value ;;
    type: number
  }
}

view: metrics_table__ping_info__experiments {
  dimension: key {
    sql: ${TABLE}.key ;;
    type: string
  }

  dimension: value__branch {
    sql: ${TABLE}.value.branch ;;
    type: string
    group_label: "Value"
    group_item_label: "Branch"
  }

  dimension: value__extra__enrollment_id {
    sql: ${TABLE}.value.extra.enrollment_id ;;
    type: string
    group_label: "Value Extra"
    group_item_label: "Enrollment Id"
  }

  dimension: value__extra__type {
    sql: ${TABLE}.value.extra.type ;;
    type: string
    group_label: "Value Extra"
    group_item_label: "Type"
  }
}