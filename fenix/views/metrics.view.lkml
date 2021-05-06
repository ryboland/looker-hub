view: metrics {
  dimension: metrics__boolean__addons_has_enabled_addons {
    sql: ${TABLE}.metrics.boolean.addons_has_enabled_addons ;;
    type: yesno
    group_label: "Addons"
    group_item_label: "Has Enabled Addons"

    link: {
      label: "Glean Dictionary reference for Addons Has Enabled Addons"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/addons_has_enabled_addons"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__boolean__addons_has_installed_addons {
    sql: ${TABLE}.metrics.boolean.addons_has_installed_addons ;;
    type: yesno
    group_label: "Addons"
    group_item_label: "Has Installed Addons"

    link: {
      label: "Glean Dictionary reference for Addons Has Installed Addons"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/addons_has_installed_addons"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__boolean__contextual_menu_long_press_tapped {
    sql: ${TABLE}.metrics.boolean.contextual_menu_long_press_tapped ;;
    type: yesno
    group_label: "Contextual Menu"
    group_item_label: "Long Press Tapped"

    link: {
      label: "Glean Dictionary reference for Contextual Menu Long Press Tapped"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/contextual_menu_long_press_tapped"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timespan__engine_kill_background_age__value {
    sql: ${TABLE}.metrics.timespan.engine_kill_background_age.value ;;
    type: number
    group_label: "Engine"
    group_item_label: "Kill Background Age Value"

    link: {
      label: "Glean Dictionary reference for Engine Kill Background Age Value"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/engine_kill_background_age"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timespan__engine_kill_foreground_age__value {
    sql: ${TABLE}.metrics.timespan.engine_kill_foreground_age.value ;;
    type: number
    group_label: "Engine"
    group_item_label: "Kill Foreground Age Value"

    link: {
      label: "Glean Dictionary reference for Engine Kill Foreground Age Value"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/engine_kill_foreground_age"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__engine_tab_kill_background_age__sum {
    sql: ${TABLE}.metrics.timing_distribution.engine_tab_kill_background_age.sum ;;
    type: number
    group_label: "Engine Tab"
    group_item_label: "Kill Background Age Sum"

    link: {
      label: "Glean Dictionary reference for Engine Tab Kill Background Age Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/engine_tab_kill_background_age"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__engine_tab_kill_foreground_age__sum {
    sql: ${TABLE}.metrics.timing_distribution.engine_tab_kill_foreground_age.sum ;;
    type: number
    group_label: "Engine Tab"
    group_item_label: "Kill Foreground Age Sum"

    link: {
      label: "Glean Dictionary reference for Engine Tab Kill Foreground Age Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/engine_tab_kill_foreground_age"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__counter__events_normal_and_private_uri_count {
    sql: ${TABLE}.metrics.counter.events_normal_and_private_uri_count ;;
    type: number
    group_label: "Events"
    group_item_label: "Normal And Private Uri Count"

    link: {
      label: "Glean Dictionary reference for Events Normal And Private Uri Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/events_normal_and_private_uri_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__counter__events_total_uri_count {
    sql: ${TABLE}.metrics.counter.events_total_uri_count ;;
    type: number
    group_label: "Events"
    group_item_label: "Total Uri Count"

    link: {
      label: "Glean Dictionary reference for Events Total Uri Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/events_total_uri_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__string__experiments_metrics_active_experiment {
    sql: ${TABLE}.metrics.string.experiments_metrics_active_experiment ;;
    type: string
    group_label: "Experiments Metrics"
    group_item_label: "Active Experiment"

    link: {
      label: "Glean Dictionary reference for Experiments Metrics Active Experiment"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/experiments_metrics_active_experiment"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__boolean__metrics_activity_state_provider_error {
    sql: ${TABLE}.metrics.boolean.metrics_activity_state_provider_error ;;
    type: yesno
    group_label: "Metrics"
    group_item_label: "Activity State Provider Error"

    link: {
      label: "Glean Dictionary reference for Metrics Activity State Provider Error"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_activity_state_provider_error"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__string__metrics_adjust_ad_group {
    sql: ${TABLE}.metrics.string.metrics_adjust_ad_group ;;
    type: string
    group_label: "Metrics"
    group_item_label: "Adjust Ad Group"

    link: {
      label: "Glean Dictionary reference for Metrics Adjust Ad Group"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_adjust_ad_group"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__string__metrics_adjust_campaign {
    sql: ${TABLE}.metrics.string.metrics_adjust_campaign ;;
    type: string
    group_label: "Metrics"
    group_item_label: "Adjust Campaign"

    link: {
      label: "Glean Dictionary reference for Metrics Adjust Campaign"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_adjust_campaign"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__string__metrics_adjust_creative {
    sql: ${TABLE}.metrics.string.metrics_adjust_creative ;;
    type: string
    group_label: "Metrics"
    group_item_label: "Adjust Creative"

    link: {
      label: "Glean Dictionary reference for Metrics Adjust Creative"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_adjust_creative"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__string__metrics_adjust_network {
    sql: ${TABLE}.metrics.string.metrics_adjust_network ;;
    type: string
    group_label: "Metrics"
    group_item_label: "Adjust Network"

    link: {
      label: "Glean Dictionary reference for Metrics Adjust Network"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_adjust_network"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__string__metrics_close_tab_setting {
    sql: ${TABLE}.metrics.string.metrics_close_tab_setting ;;
    type: string
    group_label: "Metrics"
    group_item_label: "Close Tab Setting"

    link: {
      label: "Glean Dictionary reference for Metrics Close Tab Setting"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_close_tab_setting"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__boolean__metrics_default_browser {
    sql: ${TABLE}.metrics.boolean.metrics_default_browser ;;
    type: yesno
    group_label: "Metrics"
    group_item_label: "Default Browser"

    link: {
      label: "Glean Dictionary reference for Metrics Default Browser"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_default_browser"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__string__metrics_default_moz_browser {
    sql: ${TABLE}.metrics.string.metrics_default_moz_browser ;;
    type: string
    group_label: "Metrics"
    group_item_label: "Default Moz Browser"

    link: {
      label: "Glean Dictionary reference for Metrics Default Moz Browser"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_default_moz_browser"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__counter__metrics_desktop_bookmarks_count {
    sql: ${TABLE}.metrics.counter.metrics_desktop_bookmarks_count ;;
    type: number
    group_label: "Metrics"
    group_item_label: "Desktop Bookmarks Count"

    link: {
      label: "Glean Dictionary reference for Metrics Desktop Bookmarks Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_desktop_bookmarks_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__string__metrics_distribution_id {
    sql: ${TABLE}.metrics.string.metrics_distribution_id ;;
    type: string
    group_label: "Metrics"
    group_item_label: "Distribution Id"

    link: {
      label: "Glean Dictionary reference for Metrics Distribution Id"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_distribution_id"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__boolean__metrics_has_desktop_bookmarks {
    sql: ${TABLE}.metrics.boolean.metrics_has_desktop_bookmarks ;;
    type: yesno
    group_label: "Metrics"
    group_item_label: "Has Desktop Bookmarks"

    link: {
      label: "Glean Dictionary reference for Metrics Has Desktop Bookmarks"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_has_desktop_bookmarks"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__boolean__metrics_has_mobile_bookmarks {
    sql: ${TABLE}.metrics.boolean.metrics_has_mobile_bookmarks ;;
    type: yesno
    group_label: "Metrics"
    group_item_label: "Has Mobile Bookmarks"

    link: {
      label: "Glean Dictionary reference for Metrics Has Mobile Bookmarks"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_has_mobile_bookmarks"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__boolean__metrics_has_open_tabs {
    sql: ${TABLE}.metrics.boolean.metrics_has_open_tabs ;;
    type: yesno
    group_label: "Metrics"
    group_item_label: "Has Open Tabs"

    link: {
      label: "Glean Dictionary reference for Metrics Has Open Tabs"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_has_open_tabs"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__boolean__metrics_has_recent_pwas {
    sql: ${TABLE}.metrics.boolean.metrics_has_recent_pwas ;;
    type: yesno
    group_label: "Metrics"
    group_item_label: "Has Recent Pwas"

    link: {
      label: "Glean Dictionary reference for Metrics Has Recent Pwas"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_has_recent_pwas"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__boolean__metrics_has_top_sites {
    sql: ${TABLE}.metrics.boolean.metrics_has_top_sites ;;
    type: yesno
    group_label: "Metrics"
    group_item_label: "Has Top Sites"

    link: {
      label: "Glean Dictionary reference for Metrics Has Top Sites"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_has_top_sites"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__counter__metrics_mobile_bookmarks_count {
    sql: ${TABLE}.metrics.counter.metrics_mobile_bookmarks_count ;;
    type: number
    group_label: "Metrics"
    group_item_label: "Mobile Bookmarks Count"

    link: {
      label: "Glean Dictionary reference for Metrics Mobile Bookmarks Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_mobile_bookmarks_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__counter__metrics_recently_used_pwa_count {
    sql: ${TABLE}.metrics.counter.metrics_recently_used_pwa_count ;;
    type: number
    group_label: "Metrics"
    group_item_label: "Recently Used Pwa Count"

    link: {
      label: "Glean Dictionary reference for Metrics Recently Used Pwa Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_recently_used_pwa_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__boolean__metrics_search_widget_installed {
    sql: ${TABLE}.metrics.boolean.metrics_search_widget_installed ;;
    type: yesno
    group_label: "Metrics"
    group_item_label: "Search Widget Installed"

    link: {
      label: "Glean Dictionary reference for Metrics Search Widget Installed"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_search_widget_installed"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__boolean__metrics_start_reason_activity_error {
    sql: ${TABLE}.metrics.boolean.metrics_start_reason_activity_error ;;
    type: yesno
    group_label: "Metrics"
    group_item_label: "Start Reason Activity Error"

    link: {
      label: "Glean Dictionary reference for Metrics Start Reason Activity Error"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_start_reason_activity_error"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__boolean__metrics_start_reason_process_error {
    sql: ${TABLE}.metrics.boolean.metrics_start_reason_process_error ;;
    type: yesno
    group_label: "Metrics"
    group_item_label: "Start Reason Process Error"

    link: {
      label: "Glean Dictionary reference for Metrics Start Reason Process Error"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_start_reason_process_error"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__string__metrics_tab_view_setting {
    sql: ${TABLE}.metrics.string.metrics_tab_view_setting ;;
    type: string
    group_label: "Metrics"
    group_item_label: "Tab View Setting"

    link: {
      label: "Glean Dictionary reference for Metrics Tab View Setting"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_tab_view_setting"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__counter__metrics_tabs_open_count {
    sql: ${TABLE}.metrics.counter.metrics_tabs_open_count ;;
    type: number
    group_label: "Metrics"
    group_item_label: "Tabs Open Count"

    link: {
      label: "Glean Dictionary reference for Metrics Tabs Open Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_tabs_open_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__string__metrics_toolbar_position {
    sql: ${TABLE}.metrics.string.metrics_toolbar_position ;;
    type: string
    group_label: "Metrics"
    group_item_label: "Toolbar Position"

    link: {
      label: "Glean Dictionary reference for Metrics Toolbar Position"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_toolbar_position"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__counter__metrics_top_sites_count {
    sql: ${TABLE}.metrics.counter.metrics_top_sites_count ;;
    type: number
    group_label: "Metrics"
    group_item_label: "Top Sites Count"

    link: {
      label: "Glean Dictionary reference for Metrics Top Sites Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_top_sites_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__string__metrics_total_uri_count {
    sql: ${TABLE}.metrics.string.metrics_total_uri_count ;;
    type: string
    group_label: "Metrics"
    group_item_label: "Total Uri Count"

    link: {
      label: "Glean Dictionary reference for Metrics Total Uri Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_total_uri_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__perf_awesomebar_bookmark_suggestions__sum {
    sql: ${TABLE}.metrics.timing_distribution.perf_awesomebar_bookmark_suggestions.sum ;;
    type: number
    group_label: "Perf Awesomebar"
    group_item_label: "Bookmark Suggestions Sum"

    link: {
      label: "Glean Dictionary reference for Perf Awesomebar Bookmark Suggestions Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/perf_awesomebar_bookmark_suggestions"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__perf_awesomebar_clipboard_suggestions__sum {
    sql: ${TABLE}.metrics.timing_distribution.perf_awesomebar_clipboard_suggestions.sum ;;
    type: number
    group_label: "Perf Awesomebar"
    group_item_label: "Clipboard Suggestions Sum"

    link: {
      label: "Glean Dictionary reference for Perf Awesomebar Clipboard Suggestions Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/perf_awesomebar_clipboard_suggestions"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__perf_awesomebar_history_suggestions__sum {
    sql: ${TABLE}.metrics.timing_distribution.perf_awesomebar_history_suggestions.sum ;;
    type: number
    group_label: "Perf Awesomebar"
    group_item_label: "History Suggestions Sum"

    link: {
      label: "Glean Dictionary reference for Perf Awesomebar History Suggestions Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/perf_awesomebar_history_suggestions"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__perf_awesomebar_search_engine_suggestions__sum {
    sql: ${TABLE}.metrics.timing_distribution.perf_awesomebar_search_engine_suggestions.sum ;;
    type: number
    group_label: "Perf Awesomebar"
    group_item_label: "Search Engine Suggestions Sum"

    link: {
      label: "Glean Dictionary reference for Perf Awesomebar Search Engine Suggestions Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/perf_awesomebar_search_engine_suggestions"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__perf_awesomebar_session_suggestions__sum {
    sql: ${TABLE}.metrics.timing_distribution.perf_awesomebar_session_suggestions.sum ;;
    type: number
    group_label: "Perf Awesomebar"
    group_item_label: "Session Suggestions Sum"

    link: {
      label: "Glean Dictionary reference for Perf Awesomebar Session Suggestions Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/perf_awesomebar_session_suggestions"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__perf_awesomebar_shortcuts_suggestions__sum {
    sql: ${TABLE}.metrics.timing_distribution.perf_awesomebar_shortcuts_suggestions.sum ;;
    type: number
    group_label: "Perf Awesomebar"
    group_item_label: "Shortcuts Suggestions Sum"

    link: {
      label: "Glean Dictionary reference for Perf Awesomebar Shortcuts Suggestions Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/perf_awesomebar_shortcuts_suggestions"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__perf_awesomebar_synced_tabs_suggestions__sum {
    sql: ${TABLE}.metrics.timing_distribution.perf_awesomebar_synced_tabs_suggestions.sum ;;
    type: number
    group_label: "Perf Awesomebar"
    group_item_label: "Synced Tabs Suggestions Sum"

    link: {
      label: "Glean Dictionary reference for Perf Awesomebar Synced Tabs Suggestions Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/perf_awesomebar_synced_tabs_suggestions"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__perf_startup_app_on_create_to_glean_init__sum {
    sql: ${TABLE}.metrics.timing_distribution.perf_startup_app_on_create_to_glean_init.sum ;;
    type: number
    group_label: "Perf Startup"
    group_item_label: "App On Create To Glean Init Sum"

    link: {
      label: "Glean Dictionary reference for Perf Startup App On Create To Glean Init Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/perf_startup_app_on_create_to_glean_init"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__perf_startup_app_on_create_to_megazord_init__sum {
    sql: ${TABLE}.metrics.timing_distribution.perf_startup_app_on_create_to_megazord_init.sum ;;
    type: number
    group_label: "Perf Startup"
    group_item_label: "App On Create To Megazord Init Sum"

    link: {
      label: "Glean Dictionary reference for Perf Startup App On Create To Megazord Init Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/perf_startup_app_on_create_to_megazord_init"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__perf_startup_app_on_create_to_setup_in_main__sum {
    sql: ${TABLE}.metrics.timing_distribution.perf_startup_app_on_create_to_setup_in_main.sum ;;
    type: number
    group_label: "Perf Startup"
    group_item_label: "App On Create To Setup In Main Sum"

    link: {
      label: "Glean Dictionary reference for Perf Startup App On Create To Setup In Main Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/perf_startup_app_on_create_to_setup_in_main"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__perf_startup_application_on_create__sum {
    sql: ${TABLE}.metrics.timing_distribution.perf_startup_application_on_create.sum ;;
    type: number
    group_label: "Perf Startup"
    group_item_label: "Application On Create Sum"

    link: {
      label: "Glean Dictionary reference for Perf Startup Application On Create Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/perf_startup_application_on_create"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__perf_startup_base_bfragment_on_create_view__sum {
    sql: ${TABLE}.metrics.timing_distribution.perf_startup_base_bfragment_on_create_view.sum ;;
    type: number
    group_label: "Perf Startup"
    group_item_label: "Base Bfragment On Create View Sum"

    link: {
      label: "Glean Dictionary reference for Perf Startup Base Bfragment On Create View Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/perf_startup_base_bfragment_on_create_view"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__perf_startup_base_bfragment_on_view_created__sum {
    sql: ${TABLE}.metrics.timing_distribution.perf_startup_base_bfragment_on_view_created.sum ;;
    type: number
    group_label: "Perf Startup"
    group_item_label: "Base Bfragment On View Created Sum"

    link: {
      label: "Glean Dictionary reference for Perf Startup Base Bfragment On View Created Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/perf_startup_base_bfragment_on_view_created"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__perf_startup_cold_main_app_to_first_frame__sum {
    sql: ${TABLE}.metrics.timing_distribution.perf_startup_cold_main_app_to_first_frame.sum ;;
    type: number
    group_label: "Perf Startup"
    group_item_label: "Cold Main App To First Frame Sum"

    link: {
      label: "Glean Dictionary reference for Perf Startup Cold Main App To First Frame Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/perf_startup_cold_main_app_to_first_frame"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__perf_startup_cold_unknwn_app_to_first_frame__sum {
    sql: ${TABLE}.metrics.timing_distribution.perf_startup_cold_unknwn_app_to_first_frame.sum ;;
    type: number
    group_label: "Perf Startup"
    group_item_label: "Cold Unknwn App To First Frame Sum"

    link: {
      label: "Glean Dictionary reference for Perf Startup Cold Unknwn App To First Frame Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/perf_startup_cold_unknwn_app_to_first_frame"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__perf_startup_cold_view_app_to_first_frame__sum {
    sql: ${TABLE}.metrics.timing_distribution.perf_startup_cold_view_app_to_first_frame.sum ;;
    type: number
    group_label: "Perf Startup"
    group_item_label: "Cold View App To First Frame Sum"

    link: {
      label: "Glean Dictionary reference for Perf Startup Cold View App To First Frame Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/perf_startup_cold_view_app_to_first_frame"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__perf_startup_home_activity_on_create__sum {
    sql: ${TABLE}.metrics.timing_distribution.perf_startup_home_activity_on_create.sum ;;
    type: number
    group_label: "Perf Startup"
    group_item_label: "Home Activity On Create Sum"

    link: {
      label: "Glean Dictionary reference for Perf Startup Home Activity On Create Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/perf_startup_home_activity_on_create"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__perf_startup_home_activity_on_start__sum {
    sql: ${TABLE}.metrics.timing_distribution.perf_startup_home_activity_on_start.sum ;;
    type: number
    group_label: "Perf Startup"
    group_item_label: "Home Activity On Start Sum"

    link: {
      label: "Glean Dictionary reference for Perf Startup Home Activity On Start Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/perf_startup_home_activity_on_start"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__perf_startup_home_fragment_on_create_view__sum {
    sql: ${TABLE}.metrics.timing_distribution.perf_startup_home_fragment_on_create_view.sum ;;
    type: number
    group_label: "Perf Startup"
    group_item_label: "Home Fragment On Create View Sum"

    link: {
      label: "Glean Dictionary reference for Perf Startup Home Fragment On Create View Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/perf_startup_home_fragment_on_create_view"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__perf_startup_home_fragment_on_view_created__sum {
    sql: ${TABLE}.metrics.timing_distribution.perf_startup_home_fragment_on_view_created.sum ;;
    type: number
    group_label: "Perf Startup"
    group_item_label: "Home Fragment On View Created Sum"

    link: {
      label: "Glean Dictionary reference for Perf Startup Home Fragment On View Created Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/perf_startup_home_fragment_on_view_created"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__boolean__preferences_bookmarks_suggestion {
    sql: ${TABLE}.metrics.boolean.preferences_bookmarks_suggestion ;;
    type: yesno
    group_label: "Preferences"
    group_item_label: "Bookmarks Suggestion"

    link: {
      label: "Glean Dictionary reference for Preferences Bookmarks Suggestion"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/preferences_bookmarks_suggestion"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__boolean__preferences_browsing_history_suggestion {
    sql: ${TABLE}.metrics.boolean.preferences_browsing_history_suggestion ;;
    type: yesno
    group_label: "Preferences"
    group_item_label: "Browsing History Suggestion"

    link: {
      label: "Glean Dictionary reference for Preferences Browsing History Suggestion"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/preferences_browsing_history_suggestion"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__boolean__preferences_clipboard_suggestions_enabled {
    sql: ${TABLE}.metrics.boolean.preferences_clipboard_suggestions_enabled ;;
    type: yesno
    group_label: "Preferences"
    group_item_label: "Clipboard Suggestions Enabled"

    link: {
      label: "Glean Dictionary reference for Preferences Clipboard Suggestions Enabled"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/preferences_clipboard_suggestions_enabled"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__string__preferences_enhanced_tracking_protection {
    sql: ${TABLE}.metrics.string.preferences_enhanced_tracking_protection ;;
    type: string
    group_label: "Preferences"
    group_item_label: "Enhanced Tracking Protection"

    link: {
      label: "Glean Dictionary reference for Preferences Enhanced Tracking Protection"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/preferences_enhanced_tracking_protection"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__boolean__preferences_open_links_in_app_enabled {
    sql: ${TABLE}.metrics.boolean.preferences_open_links_in_app_enabled ;;
    type: yesno
    group_label: "Preferences"
    group_item_label: "Open Links In App Enabled"

    link: {
      label: "Glean Dictionary reference for Preferences Open Links In App Enabled"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/preferences_open_links_in_app_enabled"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__boolean__preferences_open_links_in_private {
    sql: ${TABLE}.metrics.boolean.preferences_open_links_in_private ;;
    type: yesno
    group_label: "Preferences"
    group_item_label: "Open Links In Private"

    link: {
      label: "Glean Dictionary reference for Preferences Open Links In Private"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/preferences_open_links_in_private"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__boolean__preferences_private_search_suggestions {
    sql: ${TABLE}.metrics.boolean.preferences_private_search_suggestions ;;
    type: yesno
    group_label: "Preferences"
    group_item_label: "Private Search Suggestions"

    link: {
      label: "Glean Dictionary reference for Preferences Private Search Suggestions"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/preferences_private_search_suggestions"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__boolean__preferences_remote_debugging_enabled {
    sql: ${TABLE}.metrics.boolean.preferences_remote_debugging_enabled ;;
    type: yesno
    group_label: "Preferences"
    group_item_label: "Remote Debugging Enabled"

    link: {
      label: "Glean Dictionary reference for Preferences Remote Debugging Enabled"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/preferences_remote_debugging_enabled"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__boolean__preferences_search_shortcuts_enabled {
    sql: ${TABLE}.metrics.boolean.preferences_search_shortcuts_enabled ;;
    type: yesno
    group_label: "Preferences"
    group_item_label: "Search Shortcuts Enabled"

    link: {
      label: "Glean Dictionary reference for Preferences Search Shortcuts Enabled"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/preferences_search_shortcuts_enabled"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__boolean__preferences_search_suggestions_enabled {
    sql: ${TABLE}.metrics.boolean.preferences_search_suggestions_enabled ;;
    type: yesno
    group_label: "Preferences"
    group_item_label: "Search Suggestions Enabled"

    link: {
      label: "Glean Dictionary reference for Preferences Search Suggestions Enabled"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/preferences_search_suggestions_enabled"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__boolean__preferences_signed_in_sync {
    sql: ${TABLE}.metrics.boolean.preferences_signed_in_sync ;;
    type: yesno
    group_label: "Preferences"
    group_item_label: "Signed In Sync"

    link: {
      label: "Glean Dictionary reference for Preferences Signed In Sync"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/preferences_signed_in_sync"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__boolean__preferences_telemetry_enabled {
    sql: ${TABLE}.metrics.boolean.preferences_telemetry_enabled ;;
    type: yesno
    group_label: "Preferences"
    group_item_label: "Telemetry Enabled"

    link: {
      label: "Glean Dictionary reference for Preferences Telemetry Enabled"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/preferences_telemetry_enabled"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__string__preferences_toolbar_position_setting {
    sql: ${TABLE}.metrics.string.preferences_toolbar_position_setting ;;
    type: string
    group_label: "Preferences"
    group_item_label: "Toolbar Position Setting"

    link: {
      label: "Glean Dictionary reference for Preferences Toolbar Position Setting"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/preferences_toolbar_position_setting"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__string__preferences_user_theme {
    sql: ${TABLE}.metrics.string.preferences_user_theme ;;
    type: string
    group_label: "Preferences"
    group_item_label: "User Theme"

    link: {
      label: "Glean Dictionary reference for Preferences User Theme"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/preferences_user_theme"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__boolean__preferences_voice_search_enabled {
    sql: ${TABLE}.metrics.boolean.preferences_voice_search_enabled ;;
    type: yesno
    group_label: "Preferences"
    group_item_label: "Voice Search Enabled"

    link: {
      label: "Glean Dictionary reference for Preferences Voice Search Enabled"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/preferences_voice_search_enabled"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__string__search_default_engine_code {
    sql: ${TABLE}.metrics.string.search_default_engine_code ;;
    type: string
    group_label: "Search Default Engine"
    group_item_label: "Code"

    link: {
      label: "Glean Dictionary reference for Search Default Engine Code"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/search_default_engine_code"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__string__search_default_engine_name {
    sql: ${TABLE}.metrics.string.search_default_engine_name ;;
    type: string
    group_label: "Search Default Engine"
    group_item_label: "Name"

    link: {
      label: "Glean Dictionary reference for Search Default Engine Name"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/search_default_engine_name"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__string__search_default_engine_submission_url {
    sql: ${TABLE}.metrics.string.search_default_engine_submission_url ;;
    type: string
    group_label: "Search Default Engine"
    group_item_label: "Submission Url"

    link: {
      label: "Glean Dictionary reference for Search Default Engine Submission Url"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/search_default_engine_submission_url"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__memory_distribution__storage_stats_app_bytes__sum {
    sql: ${TABLE}.metrics.memory_distribution.storage_stats_app_bytes.sum ;;
    type: number
    group_label: "Storage Stats"
    group_item_label: "App Bytes Sum"

    link: {
      label: "Glean Dictionary reference for Storage Stats App Bytes Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/storage_stats_app_bytes"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__memory_distribution__storage_stats_cache_bytes__sum {
    sql: ${TABLE}.metrics.memory_distribution.storage_stats_cache_bytes.sum ;;
    type: number
    group_label: "Storage Stats"
    group_item_label: "Cache Bytes Sum"

    link: {
      label: "Glean Dictionary reference for Storage Stats Cache Bytes Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/storage_stats_cache_bytes"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__memory_distribution__storage_stats_data_dir_bytes__sum {
    sql: ${TABLE}.metrics.memory_distribution.storage_stats_data_dir_bytes.sum ;;
    type: number
    group_label: "Storage Stats"
    group_item_label: "Data Dir Bytes Sum"

    link: {
      label: "Glean Dictionary reference for Storage Stats Data Dir Bytes Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/storage_stats_data_dir_bytes"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__storage_stats_query_stats_duration__sum {
    sql: ${TABLE}.metrics.timing_distribution.storage_stats_query_stats_duration.sum ;;
    type: number
    group_label: "Storage Stats"
    group_item_label: "Query Stats Duration Sum"

    link: {
      label: "Glean Dictionary reference for Storage Stats Query Stats Duration Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/storage_stats_query_stats_duration"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__memory_distribution__glean_database_size__sum {
    sql: ${TABLE}.metrics.memory_distribution.glean_database_size.sum ;;
    type: number
    group_label: "Glean Database"
    group_item_label: "Size Sum"

    link: {
      label: "Glean Dictionary reference for Glean Database Size Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/glean_database_size"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__counter__glean_error_io {
    sql: ${TABLE}.metrics.counter.glean_error_io ;;
    type: number
    group_label: "Glean Error"
    group_item_label: "Io"

    link: {
      label: "Glean Dictionary reference for Glean Error Io"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/glean_error_io"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__counter__glean_error_preinit_tasks_overflow {
    sql: ${TABLE}.metrics.counter.glean_error_preinit_tasks_overflow ;;
    type: number
    group_label: "Glean Error"
    group_item_label: "Preinit Tasks Overflow"

    link: {
      label: "Glean Dictionary reference for Glean Error Preinit Tasks Overflow"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/glean_error_preinit_tasks_overflow"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__boolean__glean_error_preinit_tasks_timeout {
    sql: ${TABLE}.metrics.boolean.glean_error_preinit_tasks_timeout ;;
    type: yesno
    group_label: "Glean Error"
    group_item_label: "Preinit Tasks Timeout"

    link: {
      label: "Glean Dictionary reference for Glean Error Preinit Tasks Timeout"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/glean_error_preinit_tasks_timeout"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__counter__glean_time_invalid_timezone_offset {
    sql: ${TABLE}.metrics.counter.glean_time_invalid_timezone_offset ;;
    type: number
    group_label: "Glean Time"
    group_item_label: "Invalid Timezone Offset"

    link: {
      label: "Glean Dictionary reference for Glean Time Invalid Timezone Offset"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/glean_time_invalid_timezone_offset"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__counter__glean_upload_deleted_pings_after_quota_hit {
    sql: ${TABLE}.metrics.counter.glean_upload_deleted_pings_after_quota_hit ;;
    type: number
    group_label: "Glean Upload"
    group_item_label: "Deleted Pings After Quota Hit"

    link: {
      label: "Glean Dictionary reference for Glean Upload Deleted Pings After Quota Hit"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/glean_upload_deleted_pings_after_quota_hit"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__memory_distribution__glean_upload_discarded_exceeding_pings_size__sum {
    sql: ${TABLE}.metrics.memory_distribution.glean_upload_discarded_exceeding_pings_size.sum ;;
    type: number
    group_label: "Glean Upload"
    group_item_label: "Discarded Exceeding Pings Size Sum"

    link: {
      label: "Glean Dictionary reference for Glean Upload Discarded Exceeding Pings Size Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/glean_upload_discarded_exceeding_pings_size"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__counter__glean_upload_pending_pings {
    sql: ${TABLE}.metrics.counter.glean_upload_pending_pings ;;
    type: number
    group_label: "Glean Upload"
    group_item_label: "Pending Pings"

    link: {
      label: "Glean Dictionary reference for Glean Upload Pending Pings"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/glean_upload_pending_pings"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__memory_distribution__glean_upload_pending_pings_directory_size__sum {
    sql: ${TABLE}.metrics.memory_distribution.glean_upload_pending_pings_directory_size.sum ;;
    type: number
    group_label: "Glean Upload"
    group_item_label: "Pending Pings Directory Size Sum"

    link: {
      label: "Glean Dictionary reference for Glean Upload Pending Pings Directory Size Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/glean_upload_pending_pings_directory_size"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__datetime__glean_validation_first_run_hour {
    sql: ${TABLE}.metrics.datetime.glean_validation_first_run_hour ;;
    type: string
    group_label: "Glean Validation"
    group_item_label: "First Run Hour"

    link: {
      label: "Glean Dictionary reference for Glean Validation First Run Hour"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/glean_validation_first_run_hour"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__counter__glean_validation_foreground_count {
    sql: ${TABLE}.metrics.counter.glean_validation_foreground_count ;;
    type: number
    group_label: "Glean Validation"
    group_item_label: "Foreground Count"

    link: {
      label: "Glean Dictionary reference for Glean Validation Foreground Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/glean_validation_foreground_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__string__ping_reason {
    sql: ${TABLE}.metrics.string.ping_reason ;;
    type: string
    group_label: ""
    group_item_label: "Ping Reason"

    link: {
      label: "Glean Dictionary reference for  Ping Reason"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/_ping_reason"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__counter__logins_store_read_query_count {
    sql: ${TABLE}.metrics.counter.logins_store_read_query_count ;;
    type: number
    group_label: "Logins Store"
    group_item_label: "Read Query Count"

    link: {
      label: "Glean Dictionary reference for Logins Store Read Query Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/logins_store_read_query_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__logins_store_read_query_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.logins_store_read_query_time.sum ;;
    type: number
    group_label: "Logins Store"
    group_item_label: "Read Query Time Sum"

    link: {
      label: "Glean Dictionary reference for Logins Store Read Query Time Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/logins_store_read_query_time"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__counter__logins_store_unlock_count {
    sql: ${TABLE}.metrics.counter.logins_store_unlock_count ;;
    type: number
    group_label: "Logins Store"
    group_item_label: "Unlock Count"

    link: {
      label: "Glean Dictionary reference for Logins Store Unlock Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/logins_store_unlock_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__logins_store_unlock_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.logins_store_unlock_time.sum ;;
    type: number
    group_label: "Logins Store"
    group_item_label: "Unlock Time Sum"

    link: {
      label: "Glean Dictionary reference for Logins Store Unlock Time Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/logins_store_unlock_time"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__counter__logins_store_write_query_count {
    sql: ${TABLE}.metrics.counter.logins_store_write_query_count ;;
    type: number
    group_label: "Logins Store"
    group_item_label: "Write Query Count"

    link: {
      label: "Glean Dictionary reference for Logins Store Write Query Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/logins_store_write_query_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__logins_store_write_query_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.logins_store_write_query_time.sum ;;
    type: number
    group_label: "Logins Store"
    group_item_label: "Write Query Time Sum"

    link: {
      label: "Glean Dictionary reference for Logins Store Write Query Time Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/logins_store_write_query_time"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__quantity__avif_aom_decode_error {
    sql: ${TABLE}.metrics.quantity.avif_aom_decode_error ;;
    type: number
    group_label: "Avif"
    group_item_label: "Aom Decode Error"

    link: {
      label: "Glean Dictionary reference for Avif Aom Decode Error"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/avif_aom_decode_error"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__quantity__avif_dav1d_decode_error {
    sql: ${TABLE}.metrics.quantity.avif_dav1d_decode_error ;;
    type: number
    group_label: "Avif"
    group_item_label: "Dav1D Decode Error"

    link: {
      label: "Glean Dictionary reference for Avif Dav1D Decode Error"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/avif_dav1d_decode_error"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__string__geckoview_build_id {
    sql: ${TABLE}.metrics.string.geckoview_build_id ;;
    type: string
    group_label: "Geckoview"
    group_item_label: "Build Id"

    link: {
      label: "Glean Dictionary reference for Geckoview Build Id"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/geckoview_build_id"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__geckoview_content_process_lifetime__sum {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_content_process_lifetime.sum ;;
    type: number
    group_label: "Geckoview"
    group_item_label: "Content Process Lifetime Sum"

    link: {
      label: "Glean Dictionary reference for Geckoview Content Process Lifetime Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/geckoview_content_process_lifetime"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__custom_distribution__geckoview_document_site_origins__sum {
    sql: ${TABLE}.metrics.custom_distribution.geckoview_document_site_origins.sum ;;
    type: number
    group_label: "Geckoview"
    group_item_label: "Document Site Origins Sum"

    link: {
      label: "Glean Dictionary reference for Geckoview Document Site Origins Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/geckoview_document_site_origins"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__geckoview_page_load_progress_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_page_load_progress_time.sum ;;
    type: number
    group_label: "Geckoview"
    group_item_label: "Page Load Progress Time Sum"

    link: {
      label: "Glean Dictionary reference for Geckoview Page Load Progress Time Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/geckoview_page_load_progress_time"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__geckoview_page_load_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_page_load_time.sum ;;
    type: number
    group_label: "Geckoview"
    group_item_label: "Page Load Time Sum"

    link: {
      label: "Glean Dictionary reference for Geckoview Page Load Time Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/geckoview_page_load_time"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__geckoview_page_reload_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_page_reload_time.sum ;;
    type: number
    group_label: "Geckoview"
    group_item_label: "Page Reload Time Sum"

    link: {
      label: "Glean Dictionary reference for Geckoview Page Reload Time Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/geckoview_page_reload_time"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__custom_distribution__geckoview_per_document_site_origins__sum {
    sql: ${TABLE}.metrics.custom_distribution.geckoview_per_document_site_origins.sum ;;
    type: number
    group_label: "Geckoview"
    group_item_label: "Per Document Site Origins Sum"

    link: {
      label: "Glean Dictionary reference for Geckoview Per Document Site Origins Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/geckoview_per_document_site_origins"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__geckoview_startup_runtime__sum {
    sql: ${TABLE}.metrics.timing_distribution.geckoview_startup_runtime.sum ;;
    type: number
    group_label: "Geckoview"
    group_item_label: "Startup Runtime Sum"

    link: {
      label: "Glean Dictionary reference for Geckoview Startup Runtime Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/geckoview_startup_runtime"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__string__geckoview_version {
    sql: ${TABLE}.metrics.string.geckoview_version ;;
    type: string
    group_label: "Geckoview"
    group_item_label: "Version"

    link: {
      label: "Glean Dictionary reference for Geckoview Version"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/geckoview_version"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__string__gfx_adapter_primary_description {
    sql: ${TABLE}.metrics.string.gfx_adapter_primary_description ;;
    type: string
    group_label: "Gfx Adapter Primary"
    group_item_label: "Description"

    link: {
      label: "Glean Dictionary reference for Gfx Adapter Primary Description"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_adapter_primary_description"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__string__gfx_adapter_primary_device_id {
    sql: ${TABLE}.metrics.string.gfx_adapter_primary_device_id ;;
    type: string
    group_label: "Gfx Adapter Primary"
    group_item_label: "Device Id"

    link: {
      label: "Glean Dictionary reference for Gfx Adapter Primary Device Id"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_adapter_primary_device_id"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__string__gfx_adapter_primary_device_id_last_seen {
    sql: ${TABLE}.metrics.string.gfx_adapter_primary_device_id_last_seen ;;
    type: string
    group_label: "Gfx Adapter Primary"
    group_item_label: "Device Id Last Seen"

    link: {
      label: "Glean Dictionary reference for Gfx Adapter Primary Device Id Last Seen"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_adapter_primary_device_id_last_seen"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__string__gfx_adapter_primary_driver_date {
    sql: ${TABLE}.metrics.string.gfx_adapter_primary_driver_date ;;
    type: string
    group_label: "Gfx Adapter Primary"
    group_item_label: "Driver Date"

    link: {
      label: "Glean Dictionary reference for Gfx Adapter Primary Driver Date"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_adapter_primary_driver_date"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__string__gfx_adapter_primary_driver_files {
    sql: ${TABLE}.metrics.string.gfx_adapter_primary_driver_files ;;
    type: string
    group_label: "Gfx Adapter Primary"
    group_item_label: "Driver Files"

    link: {
      label: "Glean Dictionary reference for Gfx Adapter Primary Driver Files"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_adapter_primary_driver_files"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__string__gfx_adapter_primary_driver_vendor {
    sql: ${TABLE}.metrics.string.gfx_adapter_primary_driver_vendor ;;
    type: string
    group_label: "Gfx Adapter Primary"
    group_item_label: "Driver Vendor"

    link: {
      label: "Glean Dictionary reference for Gfx Adapter Primary Driver Vendor"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_adapter_primary_driver_vendor"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__string__gfx_adapter_primary_driver_version {
    sql: ${TABLE}.metrics.string.gfx_adapter_primary_driver_version ;;
    type: string
    group_label: "Gfx Adapter Primary"
    group_item_label: "Driver Version"

    link: {
      label: "Glean Dictionary reference for Gfx Adapter Primary Driver Version"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_adapter_primary_driver_version"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__quantity__gfx_adapter_primary_ram {
    sql: ${TABLE}.metrics.quantity.gfx_adapter_primary_ram ;;
    type: number
    group_label: "Gfx Adapter Primary"
    group_item_label: "Ram"

    link: {
      label: "Glean Dictionary reference for Gfx Adapter Primary Ram"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_adapter_primary_ram"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__string__gfx_adapter_primary_subsystem_id {
    sql: ${TABLE}.metrics.string.gfx_adapter_primary_subsystem_id ;;
    type: string
    group_label: "Gfx Adapter Primary"
    group_item_label: "Subsystem Id"

    link: {
      label: "Glean Dictionary reference for Gfx Adapter Primary Subsystem Id"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_adapter_primary_subsystem_id"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__string__gfx_adapter_primary_vendor_id {
    sql: ${TABLE}.metrics.string.gfx_adapter_primary_vendor_id ;;
    type: string
    group_label: "Gfx Adapter Primary"
    group_item_label: "Vendor Id"

    link: {
      label: "Glean Dictionary reference for Gfx Adapter Primary Vendor Id"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_adapter_primary_vendor_id"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__gfx_checkerboard_duration__sum {
    sql: ${TABLE}.metrics.timing_distribution.gfx_checkerboard_duration.sum ;;
    type: number
    group_label: "Gfx Checkerboard"
    group_item_label: "Duration Sum"

    link: {
      label: "Glean Dictionary reference for Gfx Checkerboard Duration Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_checkerboard_duration"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__custom_distribution__gfx_checkerboard_peak_pixel_count__sum {
    sql: ${TABLE}.metrics.custom_distribution.gfx_checkerboard_peak_pixel_count.sum ;;
    type: number
    group_label: "Gfx Checkerboard"
    group_item_label: "Peak Pixel Count Sum"

    link: {
      label: "Glean Dictionary reference for Gfx Checkerboard Peak Pixel Count Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_checkerboard_peak_pixel_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__gfx_checkerboard_potential_duration__sum {
    sql: ${TABLE}.metrics.timing_distribution.gfx_checkerboard_potential_duration.sum ;;
    type: number
    group_label: "Gfx Checkerboard"
    group_item_label: "Potential Duration Sum"

    link: {
      label: "Glean Dictionary reference for Gfx Checkerboard Potential Duration Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_checkerboard_potential_duration"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__custom_distribution__gfx_checkerboard_severity__sum {
    sql: ${TABLE}.metrics.custom_distribution.gfx_checkerboard_severity.sum ;;
    type: number
    group_label: "Gfx Checkerboard"
    group_item_label: "Severity Sum"

    link: {
      label: "Glean Dictionary reference for Gfx Checkerboard Severity Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_checkerboard_severity"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__gfx_composite_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.gfx_composite_time.sum ;;
    type: number
    group_label: "Gfx"
    group_item_label: "Composite Time Sum"

    link: {
      label: "Glean Dictionary reference for Gfx Composite Time Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_composite_time"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__custom_distribution__gfx_content_frame_time_from_paint__sum {
    sql: ${TABLE}.metrics.custom_distribution.gfx_content_frame_time_from_paint.sum ;;
    type: number
    group_label: "Gfx Content Frame Time"
    group_item_label: "From Paint Sum"

    link: {
      label: "Glean Dictionary reference for Gfx Content Frame Time From Paint Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_content_frame_time_from_paint"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__custom_distribution__gfx_content_frame_time_from_vsync__sum {
    sql: ${TABLE}.metrics.custom_distribution.gfx_content_frame_time_from_vsync.sum ;;
    type: number
    group_label: "Gfx Content Frame Time"
    group_item_label: "From Vsync Sum"

    link: {
      label: "Glean Dictionary reference for Gfx Content Frame Time From Vsync Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_content_frame_time_from_vsync"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__custom_distribution__gfx_content_frame_time_with_svg__sum {
    sql: ${TABLE}.metrics.custom_distribution.gfx_content_frame_time_with_svg.sum ;;
    type: number
    group_label: "Gfx Content Frame Time"
    group_item_label: "With Svg Sum"

    link: {
      label: "Glean Dictionary reference for Gfx Content Frame Time With Svg Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_content_frame_time_with_svg"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__custom_distribution__gfx_content_frame_time_without_resource_upload__sum {
    sql: ${TABLE}.metrics.custom_distribution.gfx_content_frame_time_without_resource_upload.sum ;;
    type: number
    group_label: "Gfx Content Frame Time"
    group_item_label: "Without Resource Upload Sum"

    link: {
      label: "Glean Dictionary reference for Gfx Content Frame Time Without Resource Upload Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_content_frame_time_without_resource_upload"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__custom_distribution__gfx_content_frame_time_without_upload__sum {
    sql: ${TABLE}.metrics.custom_distribution.gfx_content_frame_time_without_upload.sum ;;
    type: number
    group_label: "Gfx Content Frame Time"
    group_item_label: "Without Upload Sum"

    link: {
      label: "Glean Dictionary reference for Gfx Content Frame Time Without Upload Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_content_frame_time_without_upload"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__gfx_content_full_paint_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.gfx_content_full_paint_time.sum ;;
    type: number
    group_label: "Gfx Content"
    group_item_label: "Full Paint Time Sum"

    link: {
      label: "Glean Dictionary reference for Gfx Content Full Paint Time Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_content_full_paint_time"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__gfx_content_paint_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.gfx_content_paint_time.sum ;;
    type: number
    group_label: "Gfx Content"
    group_item_label: "Paint Time Sum"

    link: {
      label: "Glean Dictionary reference for Gfx Content Paint Time Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_content_paint_time"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__quantity__gfx_display_count {
    sql: ${TABLE}.metrics.quantity.gfx_display_count ;;
    type: number
    group_label: "Gfx Display"
    group_item_label: "Count"

    link: {
      label: "Glean Dictionary reference for Gfx Display Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_display_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__quantity__gfx_display_primary_height {
    sql: ${TABLE}.metrics.quantity.gfx_display_primary_height ;;
    type: number
    group_label: "Gfx Display"
    group_item_label: "Primary Height"

    link: {
      label: "Glean Dictionary reference for Gfx Display Primary Height"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_display_primary_height"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__quantity__gfx_display_primary_width {
    sql: ${TABLE}.metrics.quantity.gfx_display_primary_width ;;
    type: number
    group_label: "Gfx Display"
    group_item_label: "Primary Width"

    link: {
      label: "Glean Dictionary reference for Gfx Display Primary Width"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_display_primary_width"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__string__gfx_feature_webrender {
    sql: ${TABLE}.metrics.string.gfx_feature_webrender ;;
    type: string
    group_label: "Gfx Feature"
    group_item_label: "Webrender"

    link: {
      label: "Glean Dictionary reference for Gfx Feature Webrender"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_feature_webrender"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__gfx_scroll_present_latency__sum {
    sql: ${TABLE}.metrics.timing_distribution.gfx_scroll_present_latency.sum ;;
    type: number
    group_label: "Gfx"
    group_item_label: "Scroll Present Latency Sum"

    link: {
      label: "Glean Dictionary reference for Gfx Scroll Present Latency Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_scroll_present_latency"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__string__gfx_status_compositor {
    sql: ${TABLE}.metrics.string.gfx_status_compositor ;;
    type: string
    group_label: "Gfx Status"
    group_item_label: "Compositor"

    link: {
      label: "Glean Dictionary reference for Gfx Status Compositor"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_status_compositor"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__string__gfx_status_compositor_last_seen {
    sql: ${TABLE}.metrics.string.gfx_status_compositor_last_seen ;;
    type: string
    group_label: "Gfx Status"
    group_item_label: "Compositor Last Seen"

    link: {
      label: "Glean Dictionary reference for Gfx Status Compositor Last Seen"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_status_compositor_last_seen"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__gfx_status_framebuild_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.gfx_status_framebuild_time.sum ;;
    type: number
    group_label: "Gfx Status"
    group_item_label: "Framebuild Time Sum"

    link: {
      label: "Glean Dictionary reference for Gfx Status Framebuild Time Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_status_framebuild_time"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__boolean__gfx_status_headless {
    sql: ${TABLE}.metrics.boolean.gfx_status_headless ;;
    type: yesno
    group_label: "Gfx Status"
    group_item_label: "Headless"

    link: {
      label: "Glean Dictionary reference for Gfx Status Headless"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_status_headless"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__gfx_status_sceneswap_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.gfx_status_sceneswap_time.sum ;;
    type: number
    group_label: "Gfx Status"
    group_item_label: "Sceneswap Time Sum"

    link: {
      label: "Glean Dictionary reference for Gfx Status Sceneswap Time Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_status_sceneswap_time"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__gfx_webrender_framebuild_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.gfx_webrender_framebuild_time.sum ;;
    type: number
    group_label: "Gfx Webrender"
    group_item_label: "Framebuild Time Sum"

    link: {
      label: "Glean Dictionary reference for Gfx Webrender Framebuild Time Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_webrender_framebuild_time"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__gfx_webrender_render_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.gfx_webrender_render_time.sum ;;
    type: number
    group_label: "Gfx Webrender"
    group_item_label: "Render Time Sum"

    link: {
      label: "Glean Dictionary reference for Gfx Webrender Render Time Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_webrender_render_time"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__gfx_webrender_scenebuild_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.gfx_webrender_scenebuild_time.sum ;;
    type: number
    group_label: "Gfx Webrender"
    group_item_label: "Scenebuild Time Sum"

    link: {
      label: "Glean Dictionary reference for Gfx Webrender Scenebuild Time Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_webrender_scenebuild_time"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__gfx_webrender_sceneswap_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.gfx_webrender_sceneswap_time.sum ;;
    type: number
    group_label: "Gfx Webrender"
    group_item_label: "Sceneswap Time Sum"

    link: {
      label: "Glean Dictionary reference for Gfx Webrender Sceneswap Time Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/gfx_webrender_sceneswap_time"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__javascript_gc_compact_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_compact_time.sum ;;
    type: number
    group_label: "Javascript Gc"
    group_item_label: "Compact Time Sum"

    link: {
      label: "Glean Dictionary reference for Javascript Gc Compact Time Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/javascript_gc_compact_time"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__javascript_gc_mark_roots_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_mark_roots_time.sum ;;
    type: number
    group_label: "Javascript Gc"
    group_item_label: "Mark Roots Time Sum"

    link: {
      label: "Glean Dictionary reference for Javascript Gc Mark Roots Time Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/javascript_gc_mark_roots_time"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__javascript_gc_mark_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_mark_time.sum ;;
    type: number
    group_label: "Javascript Gc"
    group_item_label: "Mark Time Sum"

    link: {
      label: "Glean Dictionary reference for Javascript Gc Mark Time Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/javascript_gc_mark_time"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__javascript_gc_minor_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_minor_time.sum ;;
    type: number
    group_label: "Javascript Gc"
    group_item_label: "Minor Time Sum"

    link: {
      label: "Glean Dictionary reference for Javascript Gc Minor Time Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/javascript_gc_minor_time"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__javascript_gc_prepare_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_prepare_time.sum ;;
    type: number
    group_label: "Javascript Gc"
    group_item_label: "Prepare Time Sum"

    link: {
      label: "Glean Dictionary reference for Javascript Gc Prepare Time Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/javascript_gc_prepare_time"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__javascript_gc_slice_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_slice_time.sum ;;
    type: number
    group_label: "Javascript Gc"
    group_item_label: "Slice Time Sum"

    link: {
      label: "Glean Dictionary reference for Javascript Gc Slice Time Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/javascript_gc_slice_time"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__javascript_gc_sweep_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_sweep_time.sum ;;
    type: number
    group_label: "Javascript Gc"
    group_item_label: "Sweep Time Sum"

    link: {
      label: "Glean Dictionary reference for Javascript Gc Sweep Time Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/javascript_gc_sweep_time"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__javascript_gc_total_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.javascript_gc_total_time.sum ;;
    type: number
    group_label: "Javascript Gc"
    group_item_label: "Total Time Sum"

    link: {
      label: "Glean Dictionary reference for Javascript Gc Total Time Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/javascript_gc_total_time"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__custom_distribution__js_baseline_compile_percentage__sum {
    sql: ${TABLE}.metrics.custom_distribution.js_baseline_compile_percentage.sum ;;
    type: number
    group_label: "Js"
    group_item_label: "Baseline Compile Percentage Sum"

    link: {
      label: "Glean Dictionary reference for Js Baseline Compile Percentage Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/js_baseline_compile_percentage"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__js_bytecode_caching_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.js_bytecode_caching_time.sum ;;
    type: number
    group_label: "Js"
    group_item_label: "Bytecode Caching Time Sum"

    link: {
      label: "Glean Dictionary reference for Js Bytecode Caching Time Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/js_bytecode_caching_time"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__custom_distribution__js_delazification_percentage__sum {
    sql: ${TABLE}.metrics.custom_distribution.js_delazification_percentage.sum ;;
    type: number
    group_label: "Js"
    group_item_label: "Delazification Percentage Sum"

    link: {
      label: "Glean Dictionary reference for Js Delazification Percentage Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/js_delazification_percentage"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__custom_distribution__js_execution_percentage__sum {
    sql: ${TABLE}.metrics.custom_distribution.js_execution_percentage.sum ;;
    type: number
    group_label: "Js"
    group_item_label: "Execution Percentage Sum"

    link: {
      label: "Glean Dictionary reference for Js Execution Percentage Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/js_execution_percentage"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__custom_distribution__js_xdr_encode_percentage__sum {
    sql: ${TABLE}.metrics.custom_distribution.js_xdr_encode_percentage.sum ;;
    type: number
    group_label: "Js"
    group_item_label: "Xdr Encode Percentage Sum"

    link: {
      label: "Glean Dictionary reference for Js Xdr Encode Percentage Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/js_xdr_encode_percentage"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__network_cache_hit_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_cache_hit_time.sum ;;
    type: number
    group_label: "Network"
    group_item_label: "Cache Hit Time Sum"

    link: {
      label: "Glean Dictionary reference for Network Cache Hit Time Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/network_cache_hit_time"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__network_dns_end__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_dns_end.sum ;;
    type: number
    group_label: "Network"
    group_item_label: "Dns End Sum"

    link: {
      label: "Glean Dictionary reference for Network Dns End Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/network_dns_end"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__network_dns_start__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_dns_start.sum ;;
    type: number
    group_label: "Network"
    group_item_label: "Dns Start Sum"

    link: {
      label: "Glean Dictionary reference for Network Dns Start Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/network_dns_start"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__network_first_from_cache__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_first_from_cache.sum ;;
    type: number
    group_label: "Network"
    group_item_label: "First From Cache Sum"

    link: {
      label: "Glean Dictionary reference for Network First From Cache Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/network_first_from_cache"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__network_font_download_end__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_font_download_end.sum ;;
    type: number
    group_label: "Network"
    group_item_label: "Font Download End Sum"

    link: {
      label: "Glean Dictionary reference for Network Font Download End Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/network_font_download_end"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__network_tcp_connection__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_tcp_connection.sum ;;
    type: number
    group_label: "Network"
    group_item_label: "Tcp Connection Sum"

    link: {
      label: "Glean Dictionary reference for Network Tcp Connection Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/network_tcp_connection"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__network_tls_handshake__sum {
    sql: ${TABLE}.metrics.timing_distribution.network_tls_handshake.sum ;;
    type: number
    group_label: "Network"
    group_item_label: "Tls Handshake Sum"

    link: {
      label: "Glean Dictionary reference for Network Tls Handshake Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/network_tls_handshake"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__performance_interaction_keypress_present_latency__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_interaction_keypress_present_latency.sum ;;
    type: number
    group_label: "Performance Interaction"
    group_item_label: "Keypress Present Latency Sum"

    link: {
      label: "Glean Dictionary reference for Performance Interaction Keypress Present Latency Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/performance_interaction_keypress_present_latency"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__performance_interaction_mouseup_click_present_latency__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_interaction_mouseup_click_present_latency.sum ;;
    type: number
    group_label: "Performance Interaction"
    group_item_label: "Mouseup Click Present Latency Sum"

    link: {
      label: "Glean Dictionary reference for Performance Interaction Mouseup Click Present Latency Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/performance_interaction_mouseup_click_present_latency"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__performance_interaction_tab_switch_composite__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_interaction_tab_switch_composite.sum ;;
    type: number
    group_label: "Performance Interaction"
    group_item_label: "Tab Switch Composite Sum"

    link: {
      label: "Glean Dictionary reference for Performance Interaction Tab Switch Composite Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/performance_interaction_tab_switch_composite"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__performance_page_non_blank_paint__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_page_non_blank_paint.sum ;;
    type: number
    group_label: "Performance Page"
    group_item_label: "Non Blank Paint Sum"

    link: {
      label: "Glean Dictionary reference for Performance Page Non Blank Paint Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/performance_page_non_blank_paint"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__performance_page_total_content_page_load__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_page_total_content_page_load.sum ;;
    type: number
    group_label: "Performance Page"
    group_item_label: "Total Content Page Load Sum"

    link: {
      label: "Glean Dictionary reference for Performance Page Total Content Page Load Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/performance_page_total_content_page_load"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__performance_pageload_dcl__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_dcl.sum ;;
    type: number
    group_label: "Performance Pageload"
    group_item_label: "Dcl Sum"

    link: {
      label: "Glean Dictionary reference for Performance Pageload Dcl Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/performance_pageload_dcl"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__performance_pageload_dcl_responsestart__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_dcl_responsestart.sum ;;
    type: number
    group_label: "Performance Pageload"
    group_item_label: "Dcl Responsestart Sum"

    link: {
      label: "Glean Dictionary reference for Performance Pageload Dcl Responsestart Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/performance_pageload_dcl_responsestart"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__performance_pageload_fcp__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_fcp.sum ;;
    type: number
    group_label: "Performance Pageload"
    group_item_label: "Fcp Sum"

    link: {
      label: "Glean Dictionary reference for Performance Pageload Fcp Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/performance_pageload_fcp"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__performance_pageload_fcp_responsestart__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_fcp_responsestart.sum ;;
    type: number
    group_label: "Performance Pageload"
    group_item_label: "Fcp Responsestart Sum"

    link: {
      label: "Glean Dictionary reference for Performance Pageload Fcp Responsestart Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/performance_pageload_fcp_responsestart"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__performance_pageload_load_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_load_time.sum ;;
    type: number
    group_label: "Performance Pageload"
    group_item_label: "Load Time Sum"

    link: {
      label: "Glean Dictionary reference for Performance Pageload Load Time Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/performance_pageload_load_time"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__performance_pageload_load_time_responsestart__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_load_time_responsestart.sum ;;
    type: number
    group_label: "Performance Pageload"
    group_item_label: "Load Time Responsestart Sum"

    link: {
      label: "Glean Dictionary reference for Performance Pageload Load Time Responsestart Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/performance_pageload_load_time_responsestart"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__performance_pageload_req_anim_frame_callback__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_pageload_req_anim_frame_callback.sum ;;
    type: number
    group_label: "Performance Pageload"
    group_item_label: "Req Anim Frame Callback Sum"

    link: {
      label: "Glean Dictionary reference for Performance Pageload Req Anim Frame Callback Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/performance_pageload_req_anim_frame_callback"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__performance_responsiveness_req_anim_frame_callback__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_responsiveness_req_anim_frame_callback.sum ;;
    type: number
    group_label: "Performance Responsiveness"
    group_item_label: "Req Anim Frame Callback Sum"

    link: {
      label: "Glean Dictionary reference for Performance Responsiveness Req Anim Frame Callback Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/performance_responsiveness_req_anim_frame_callback"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__performance_time_dom_complete__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_complete.sum ;;
    type: number
    group_label: "Performance Time"
    group_item_label: "Dom Complete Sum"

    link: {
      label: "Glean Dictionary reference for Performance Time Dom Complete Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/performance_time_dom_complete"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__performance_time_dom_content_loaded_end__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_content_loaded_end.sum ;;
    type: number
    group_label: "Performance Time"
    group_item_label: "Dom Content Loaded End Sum"

    link: {
      label: "Glean Dictionary reference for Performance Time Dom Content Loaded End Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/performance_time_dom_content_loaded_end"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__performance_time_dom_content_loaded_start__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_content_loaded_start.sum ;;
    type: number
    group_label: "Performance Time"
    group_item_label: "Dom Content Loaded Start Sum"

    link: {
      label: "Glean Dictionary reference for Performance Time Dom Content Loaded Start Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/performance_time_dom_content_loaded_start"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__performance_time_dom_interactive__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_dom_interactive.sum ;;
    type: number
    group_label: "Performance Time"
    group_item_label: "Dom Interactive Sum"

    link: {
      label: "Glean Dictionary reference for Performance Time Dom Interactive Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/performance_time_dom_interactive"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__performance_time_load_event_end__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_load_event_end.sum ;;
    type: number
    group_label: "Performance Time"
    group_item_label: "Load Event End Sum"

    link: {
      label: "Glean Dictionary reference for Performance Time Load Event End Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/performance_time_load_event_end"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__performance_time_load_event_end_no_preload__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_load_event_end_no_preload.sum ;;
    type: number
    group_label: "Performance Time"
    group_item_label: "Load Event End No Preload Sum"

    link: {
      label: "Glean Dictionary reference for Performance Time Load Event End No Preload Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/performance_time_load_event_end_no_preload"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__performance_time_load_event_end_preload__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_load_event_end_preload.sum ;;
    type: number
    group_label: "Performance Time"
    group_item_label: "Load Event End Preload Sum"

    link: {
      label: "Glean Dictionary reference for Performance Time Load Event End Preload Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/performance_time_load_event_end_preload"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__performance_time_load_event_start__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_load_event_start.sum ;;
    type: number
    group_label: "Performance Time"
    group_item_label: "Load Event Start Sum"

    link: {
      label: "Glean Dictionary reference for Performance Time Load Event Start Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/performance_time_load_event_start"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__performance_time_load_event_start_no_preload__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_load_event_start_no_preload.sum ;;
    type: number
    group_label: "Performance Time"
    group_item_label: "Load Event Start No Preload Sum"

    link: {
      label: "Glean Dictionary reference for Performance Time Load Event Start No Preload Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/performance_time_load_event_start_no_preload"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__performance_time_load_event_start_preload__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_load_event_start_preload.sum ;;
    type: number
    group_label: "Performance Time"
    group_item_label: "Load Event Start Preload Sum"

    link: {
      label: "Glean Dictionary reference for Performance Time Load Event Start Preload Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/performance_time_load_event_start_preload"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__performance_time_response_start__sum {
    sql: ${TABLE}.metrics.timing_distribution.performance_time_response_start.sum ;;
    type: number
    group_label: "Performance Time"
    group_item_label: "Response Start Sum"

    link: {
      label: "Glean Dictionary reference for Performance Time Response Start Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/performance_time_response_start"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__counter__places_manager_read_query_count {
    sql: ${TABLE}.metrics.counter.places_manager_read_query_count ;;
    type: number
    group_label: "Places Manager"
    group_item_label: "Read Query Count"

    link: {
      label: "Glean Dictionary reference for Places Manager Read Query Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/places_manager_read_query_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__places_manager_read_query_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.places_manager_read_query_time.sum ;;
    type: number
    group_label: "Places Manager"
    group_item_label: "Read Query Time Sum"

    link: {
      label: "Glean Dictionary reference for Places Manager Read Query Time Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/places_manager_read_query_time"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__places_manager_scan_query_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.places_manager_scan_query_time.sum ;;
    type: number
    group_label: "Places Manager"
    group_item_label: "Scan Query Time Sum"

    link: {
      label: "Glean Dictionary reference for Places Manager Scan Query Time Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/places_manager_scan_query_time"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__counter__places_manager_write_query_count {
    sql: ${TABLE}.metrics.counter.places_manager_write_query_count ;;
    type: number
    group_label: "Places Manager"
    group_item_label: "Write Query Count"

    link: {
      label: "Glean Dictionary reference for Places Manager Write Query Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/places_manager_write_query_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__timing_distribution__places_manager_write_query_time__sum {
    sql: ${TABLE}.metrics.timing_distribution.places_manager_write_query_time.sum ;;
    type: number
    group_label: "Places Manager"
    group_item_label: "Write Query Time Sum"

    link: {
      label: "Glean Dictionary reference for Places Manager Write Query Time Sum"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/places_manager_write_query_time"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__boolean__glean_core_migration_successful {
    sql: ${TABLE}.metrics.boolean.glean_core_migration_successful ;;
    type: yesno
    group_label: "Glean Core Migration"
    group_item_label: "Successful"

    link: {
      label: "Glean Dictionary reference for Glean Core Migration Successful"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/glean_core_migration_successful"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__boolean__glean_error_preinit_tasks_timeout {
    sql: ${TABLE}.metrics.boolean.glean_error_preinit_tasks_timeout ;;
    type: yesno
    group_label: "Glean Error"
    group_item_label: "Preinit Tasks Timeout"

    link: {
      label: "Glean Dictionary reference for Glean Error Preinit Tasks Timeout"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/glean_error_preinit_tasks_timeout"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__counter__glean_validation_app_forceclosed_count {
    sql: ${TABLE}.metrics.counter.glean_validation_app_forceclosed_count ;;
    type: number
    group_label: "Glean Validation"
    group_item_label: "App Forceclosed Count"

    link: {
      label: "Glean Dictionary reference for Glean Validation App Forceclosed Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/glean_validation_app_forceclosed_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: metrics__counter__glean_validation_baseline_ping_count {
    sql: ${TABLE}.metrics.counter.glean_validation_baseline_ping_count ;;
    type: number
    group_label: "Glean Validation"
    group_item_label: "Baseline Ping Count"

    link: {
      label: "Glean Dictionary reference for Glean Validation Baseline Ping Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/glean_validation_baseline_ping_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  dimension: additional_properties {
    sql: ${TABLE}.additional_properties ;;
    type: string
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

  dimension: client_info__telemetry_sdk_build {
    sql: ${TABLE}.client_info.telemetry_sdk_build ;;
    type: string
    group_label: "Client Info"
    group_item_label: "Telemetry Sdk Build"
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

  dimension: normalized_app_name {
    sql: ${TABLE}.normalized_app_name ;;
    type: string
  }

  dimension: normalized_channel {
    sql: ${TABLE}.normalized_channel ;;
    type: string
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
    group_label: "Metadata Header"
    group_item_label: "Parsed Date"
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
    group_label: "Ping Info"
    group_item_label: "Parsed End Time"
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
    group_label: "Ping Info"
    group_item_label: "Parsed Start Time"
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

  measure: clients {
    type: count_distinct
    sql: ${client_info__client_id} ;;
  }

  measure: ping_count {
    type: count
  }

  measure: events_normal_and_private_uri_count {
    type: sum
    sql: ${metrics__counter__events_normal_and_private_uri_count} ;;

    link: {
      label: "Glean Dictionary reference for Events Normal And Private Uri Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/events_normal_and_private_uri_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: events_normal_and_private_uri_count_client_count {
    type: count_distinct
    sql: case when ${metrics__counter__events_normal_and_private_uri_count} > 0 then ${client_info__client_id} ;;

    link: {
      label: "Glean Dictionary reference for Events Normal And Private Uri Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/events_normal_and_private_uri_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: events_total_uri_count {
    type: sum
    sql: ${metrics__counter__events_total_uri_count} ;;

    link: {
      label: "Glean Dictionary reference for Events Total Uri Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/events_total_uri_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: events_total_uri_count_client_count {
    type: count_distinct
    sql: case when ${metrics__counter__events_total_uri_count} > 0 then ${client_info__client_id} ;;

    link: {
      label: "Glean Dictionary reference for Events Total Uri Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/events_total_uri_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: metrics_desktop_bookmarks_count {
    type: sum
    sql: ${metrics__counter__metrics_desktop_bookmarks_count} ;;

    link: {
      label: "Glean Dictionary reference for Metrics Desktop Bookmarks Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_desktop_bookmarks_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: metrics_desktop_bookmarks_count_client_count {
    type: count_distinct
    sql: case when ${metrics__counter__metrics_desktop_bookmarks_count} > 0 then ${client_info__client_id} ;;

    link: {
      label: "Glean Dictionary reference for Metrics Desktop Bookmarks Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_desktop_bookmarks_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: metrics_mobile_bookmarks_count {
    type: sum
    sql: ${metrics__counter__metrics_mobile_bookmarks_count} ;;

    link: {
      label: "Glean Dictionary reference for Metrics Mobile Bookmarks Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_mobile_bookmarks_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: metrics_mobile_bookmarks_count_client_count {
    type: count_distinct
    sql: case when ${metrics__counter__metrics_mobile_bookmarks_count} > 0 then ${client_info__client_id} ;;

    link: {
      label: "Glean Dictionary reference for Metrics Mobile Bookmarks Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_mobile_bookmarks_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: metrics_recently_used_pwa_count {
    type: sum
    sql: ${metrics__counter__metrics_recently_used_pwa_count} ;;

    link: {
      label: "Glean Dictionary reference for Metrics Recently Used Pwa Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_recently_used_pwa_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: metrics_recently_used_pwa_count_client_count {
    type: count_distinct
    sql: case when ${metrics__counter__metrics_recently_used_pwa_count} > 0 then ${client_info__client_id} ;;

    link: {
      label: "Glean Dictionary reference for Metrics Recently Used Pwa Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_recently_used_pwa_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: metrics_tabs_open_count {
    type: sum
    sql: ${metrics__counter__metrics_tabs_open_count} ;;

    link: {
      label: "Glean Dictionary reference for Metrics Tabs Open Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_tabs_open_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: metrics_tabs_open_count_client_count {
    type: count_distinct
    sql: case when ${metrics__counter__metrics_tabs_open_count} > 0 then ${client_info__client_id} ;;

    link: {
      label: "Glean Dictionary reference for Metrics Tabs Open Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_tabs_open_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: metrics_top_sites_count {
    type: sum
    sql: ${metrics__counter__metrics_top_sites_count} ;;

    link: {
      label: "Glean Dictionary reference for Metrics Top Sites Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_top_sites_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: metrics_top_sites_count_client_count {
    type: count_distinct
    sql: case when ${metrics__counter__metrics_top_sites_count} > 0 then ${client_info__client_id} ;;

    link: {
      label: "Glean Dictionary reference for Metrics Top Sites Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/metrics_top_sites_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: glean_error_io {
    type: sum
    sql: ${metrics__counter__glean_error_io} ;;

    link: {
      label: "Glean Dictionary reference for Glean Error Io"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/glean_error_io"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: glean_error_io_client_count {
    type: count_distinct
    sql: case when ${metrics__counter__glean_error_io} > 0 then ${client_info__client_id} ;;

    link: {
      label: "Glean Dictionary reference for Glean Error Io"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/glean_error_io"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: glean_error_preinit_tasks_overflow {
    type: sum
    sql: ${metrics__counter__glean_error_preinit_tasks_overflow} ;;

    link: {
      label: "Glean Dictionary reference for Glean Error Preinit Tasks Overflow"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/glean_error_preinit_tasks_overflow"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: glean_error_preinit_tasks_overflow_client_count {
    type: count_distinct
    sql: case when ${metrics__counter__glean_error_preinit_tasks_overflow} > 0 then ${client_info__client_id} ;;

    link: {
      label: "Glean Dictionary reference for Glean Error Preinit Tasks Overflow"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/glean_error_preinit_tasks_overflow"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: glean_time_invalid_timezone_offset {
    type: sum
    sql: ${metrics__counter__glean_time_invalid_timezone_offset} ;;

    link: {
      label: "Glean Dictionary reference for Glean Time Invalid Timezone Offset"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/glean_time_invalid_timezone_offset"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: glean_time_invalid_timezone_offset_client_count {
    type: count_distinct
    sql: case when ${metrics__counter__glean_time_invalid_timezone_offset} > 0 then ${client_info__client_id} ;;

    link: {
      label: "Glean Dictionary reference for Glean Time Invalid Timezone Offset"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/glean_time_invalid_timezone_offset"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: glean_upload_deleted_pings_after_quota_hit {
    type: sum
    sql: ${metrics__counter__glean_upload_deleted_pings_after_quota_hit} ;;

    link: {
      label: "Glean Dictionary reference for Glean Upload Deleted Pings After Quota Hit"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/glean_upload_deleted_pings_after_quota_hit"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: glean_upload_deleted_pings_after_quota_hit_client_count {
    type: count_distinct
    sql: case when ${metrics__counter__glean_upload_deleted_pings_after_quota_hit} > 0 then ${client_info__client_id} ;;

    link: {
      label: "Glean Dictionary reference for Glean Upload Deleted Pings After Quota Hit"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/glean_upload_deleted_pings_after_quota_hit"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: glean_upload_pending_pings {
    type: sum
    sql: ${metrics__counter__glean_upload_pending_pings} ;;

    link: {
      label: "Glean Dictionary reference for Glean Upload Pending Pings"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/glean_upload_pending_pings"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: glean_upload_pending_pings_client_count {
    type: count_distinct
    sql: case when ${metrics__counter__glean_upload_pending_pings} > 0 then ${client_info__client_id} ;;

    link: {
      label: "Glean Dictionary reference for Glean Upload Pending Pings"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/glean_upload_pending_pings"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: glean_validation_foreground_count {
    type: sum
    sql: ${metrics__counter__glean_validation_foreground_count} ;;

    link: {
      label: "Glean Dictionary reference for Glean Validation Foreground Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/glean_validation_foreground_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: glean_validation_foreground_count_client_count {
    type: count_distinct
    sql: case when ${metrics__counter__glean_validation_foreground_count} > 0 then ${client_info__client_id} ;;

    link: {
      label: "Glean Dictionary reference for Glean Validation Foreground Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/glean_validation_foreground_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: logins_store_read_query_count {
    type: sum
    sql: ${metrics__counter__logins_store_read_query_count} ;;

    link: {
      label: "Glean Dictionary reference for Logins Store Read Query Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/logins_store_read_query_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: logins_store_read_query_count_client_count {
    type: count_distinct
    sql: case when ${metrics__counter__logins_store_read_query_count} > 0 then ${client_info__client_id} ;;

    link: {
      label: "Glean Dictionary reference for Logins Store Read Query Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/logins_store_read_query_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: logins_store_unlock_count {
    type: sum
    sql: ${metrics__counter__logins_store_unlock_count} ;;

    link: {
      label: "Glean Dictionary reference for Logins Store Unlock Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/logins_store_unlock_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: logins_store_unlock_count_client_count {
    type: count_distinct
    sql: case when ${metrics__counter__logins_store_unlock_count} > 0 then ${client_info__client_id} ;;

    link: {
      label: "Glean Dictionary reference for Logins Store Unlock Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/logins_store_unlock_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: logins_store_write_query_count {
    type: sum
    sql: ${metrics__counter__logins_store_write_query_count} ;;

    link: {
      label: "Glean Dictionary reference for Logins Store Write Query Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/logins_store_write_query_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: logins_store_write_query_count_client_count {
    type: count_distinct
    sql: case when ${metrics__counter__logins_store_write_query_count} > 0 then ${client_info__client_id} ;;

    link: {
      label: "Glean Dictionary reference for Logins Store Write Query Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/logins_store_write_query_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: places_manager_read_query_count {
    type: sum
    sql: ${metrics__counter__places_manager_read_query_count} ;;

    link: {
      label: "Glean Dictionary reference for Places Manager Read Query Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/places_manager_read_query_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: places_manager_read_query_count_client_count {
    type: count_distinct
    sql: case when ${metrics__counter__places_manager_read_query_count} > 0 then ${client_info__client_id} ;;

    link: {
      label: "Glean Dictionary reference for Places Manager Read Query Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/places_manager_read_query_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: places_manager_write_query_count {
    type: sum
    sql: ${metrics__counter__places_manager_write_query_count} ;;

    link: {
      label: "Glean Dictionary reference for Places Manager Write Query Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/places_manager_write_query_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: places_manager_write_query_count_client_count {
    type: count_distinct
    sql: case when ${metrics__counter__places_manager_write_query_count} > 0 then ${client_info__client_id} ;;

    link: {
      label: "Glean Dictionary reference for Places Manager Write Query Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/places_manager_write_query_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: glean_validation_app_forceclosed_count {
    type: sum
    sql: ${metrics__counter__glean_validation_app_forceclosed_count} ;;

    link: {
      label: "Glean Dictionary reference for Glean Validation App Forceclosed Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/glean_validation_app_forceclosed_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: glean_validation_app_forceclosed_count_client_count {
    type: count_distinct
    sql: case when ${metrics__counter__glean_validation_app_forceclosed_count} > 0 then ${client_info__client_id} ;;

    link: {
      label: "Glean Dictionary reference for Glean Validation App Forceclosed Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/glean_validation_app_forceclosed_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: glean_validation_baseline_ping_count {
    type: sum
    sql: ${metrics__counter__glean_validation_baseline_ping_count} ;;

    link: {
      label: "Glean Dictionary reference for Glean Validation Baseline Ping Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/glean_validation_baseline_ping_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  measure: glean_validation_baseline_ping_count_client_count {
    type: count_distinct
    sql: case when ${metrics__counter__glean_validation_baseline_ping_count} > 0 then ${client_info__client_id} ;;

    link: {
      label: "Glean Dictionary reference for Glean Validation Baseline Ping Count"
      url: "https://dictionary.telemetry.mozilla.org/apps/fenix/metrics/glean_validation_baseline_ping_count"
      icon_url: "https://dictionary.telemetry.mozilla.org/favicon.png"
    }
  }

  parameter: channel {
    type: unquoted

    allowed_value: {
      label: "Release"
      value: "mozdata.org_mozilla_firefox.metrics"
    }

    allowed_value: {
      label: "Beta"
      value: "mozdata.org_mozilla_firefox_beta.metrics"
    }

    allowed_value: {
      label: "Nightly"
      value: "mozdata.org_mozilla_fenix.metrics"
    }
  }

  sql_table_name: `{% parameter channel %}` ;;
}