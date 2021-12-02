include: "/looker-hub/firefox_desktop/views/client_counts.view.lkml"

explore: client_counts {
  sql_always_where: ${client_counts.submission_date} >= '2010-01-01' ;;
  view_name: client_counts
  description: "Client counts across dimensions and cohorts."

  always_filter: {
    filters: [
      submission_date: "28 days",
    ]
  }

  query: cohort_analysis {
    description: "Client Counts of weekly cohorts over the past N days."
    dimensions: [days_since_first_seen, first_seen_week]
    measures: [client_count]
    pivots: [first_seen_week]
    filters: [
      submission_date: "8 weeks",
      first_seen_date: "8 weeks",
      have_completed_period: "yes",
    ]
    sorts: [
      days_since_first_seen: asc,
    ]
  }

  query: build_breakdown {
    description: "Number of clients per build."
    dimensions: [submission_date, app_build]
    measures: [client_count]
    pivots: [app_build]
    sorts: [
      submission_date: asc,
    ]
  }

  join: clients_daily_table__a11y_theme {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.a11y_theme}) AS clients_daily_table__a11y_theme ;;
  }

  join: clients_daily_table__active_addons {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.active_addons}) AS clients_daily_table__active_addons ;;
  }

  join: clients_daily_table__ad_clicks {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.ad_clicks}) AS clients_daily_table__ad_clicks ;;
  }

  join: clients_daily_table__contextual_services_quicksuggest_click_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.contextual_services_quicksuggest_click_sum}) AS clients_daily_table__contextual_services_quicksuggest_click_sum ;;
  }

  join: clients_daily_table__contextual_services_quicksuggest_help_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.contextual_services_quicksuggest_help_sum}) AS clients_daily_table__contextual_services_quicksuggest_help_sum ;;
  }

  join: clients_daily_table__contextual_services_quicksuggest_impression_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.contextual_services_quicksuggest_impression_sum}) AS clients_daily_table__contextual_services_quicksuggest_impression_sum ;;
  }

  join: clients_daily_table__contextual_services_topsites_click_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.contextual_services_topsites_click_sum}) AS clients_daily_table__contextual_services_topsites_click_sum ;;
  }

  join: clients_daily_table__contextual_services_topsites_impression_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.contextual_services_topsites_impression_sum}) AS clients_daily_table__contextual_services_topsites_impression_sum ;;
  }

  join: clients_daily_table__experiments {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.experiments}) AS clients_daily_table__experiments ;;
  }

  join: clients_daily_table__scalar_content_telemetry_event_counts_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_content_telemetry_event_counts_sum}) AS clients_daily_table__scalar_content_telemetry_event_counts_sum ;;
  }

  join: clients_daily_table__scalar_parent_browser_ui_interaction_preferences_pane_home_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_browser_ui_interaction_preferences_pane_home_sum}) AS clients_daily_table__scalar_parent_browser_ui_interaction_preferences_pane_home_sum ;;
  }

  join: clients_daily_table__scalar_parent_devtools_accessibility_select_accessible_for_node_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_devtools_accessibility_select_accessible_for_node_sum}) AS clients_daily_table__scalar_parent_devtools_accessibility_select_accessible_for_node_sum ;;
  }

  join: clients_daily_table__scalar_parent_telemetry_event_counts_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_telemetry_event_counts_sum}) AS clients_daily_table__scalar_parent_telemetry_event_counts_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_picked_autofill_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_picked_autofill_sum}) AS clients_daily_table__scalar_parent_urlbar_picked_autofill_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_picked_bookmark_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_picked_bookmark_sum}) AS clients_daily_table__scalar_parent_urlbar_picked_bookmark_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_picked_dynamic_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_picked_dynamic_sum}) AS clients_daily_table__scalar_parent_urlbar_picked_dynamic_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_picked_extension_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_picked_extension_sum}) AS clients_daily_table__scalar_parent_urlbar_picked_extension_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_picked_formhistory_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_picked_formhistory_sum}) AS clients_daily_table__scalar_parent_urlbar_picked_formhistory_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_picked_history_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_picked_history_sum}) AS clients_daily_table__scalar_parent_urlbar_picked_history_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_picked_keyword_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_picked_keyword_sum}) AS clients_daily_table__scalar_parent_urlbar_picked_keyword_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_picked_remotetab_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_picked_remotetab_sum}) AS clients_daily_table__scalar_parent_urlbar_picked_remotetab_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_picked_searchengine_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_picked_searchengine_sum}) AS clients_daily_table__scalar_parent_urlbar_picked_searchengine_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_picked_searchsuggestion_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_picked_searchsuggestion_sum}) AS clients_daily_table__scalar_parent_urlbar_picked_searchsuggestion_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_picked_switchtab_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_picked_switchtab_sum}) AS clients_daily_table__scalar_parent_urlbar_picked_switchtab_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_picked_tabtosearch_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_picked_tabtosearch_sum}) AS clients_daily_table__scalar_parent_urlbar_picked_tabtosearch_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_picked_tip_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_picked_tip_sum}) AS clients_daily_table__scalar_parent_urlbar_picked_tip_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_picked_topsite_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_picked_topsite_sum}) AS clients_daily_table__scalar_parent_urlbar_picked_topsite_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_picked_unknown_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_picked_unknown_sum}) AS clients_daily_table__scalar_parent_urlbar_picked_unknown_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_picked_visiturl_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_picked_visiturl_sum}) AS clients_daily_table__scalar_parent_urlbar_picked_visiturl_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_searchmode_bookmarkmenu_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_searchmode_bookmarkmenu_sum}) AS clients_daily_table__scalar_parent_urlbar_searchmode_bookmarkmenu_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_searchmode_handoff_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_searchmode_handoff_sum}) AS clients_daily_table__scalar_parent_urlbar_searchmode_handoff_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_searchmode_keywordoffer_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_searchmode_keywordoffer_sum}) AS clients_daily_table__scalar_parent_urlbar_searchmode_keywordoffer_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_searchmode_oneoff_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_searchmode_oneoff_sum}) AS clients_daily_table__scalar_parent_urlbar_searchmode_oneoff_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_searchmode_other_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_searchmode_other_sum}) AS clients_daily_table__scalar_parent_urlbar_searchmode_other_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_searchmode_shortcut_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_searchmode_shortcut_sum}) AS clients_daily_table__scalar_parent_urlbar_searchmode_shortcut_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_searchmode_tabmenu_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_searchmode_tabmenu_sum}) AS clients_daily_table__scalar_parent_urlbar_searchmode_tabmenu_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_searchmode_tabtosearch_onboard_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_searchmode_tabtosearch_onboard_sum}) AS clients_daily_table__scalar_parent_urlbar_searchmode_tabtosearch_onboard_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_searchmode_tabtosearch_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_searchmode_tabtosearch_sum}) AS clients_daily_table__scalar_parent_urlbar_searchmode_tabtosearch_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_searchmode_topsites_newtab_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_searchmode_topsites_newtab_sum}) AS clients_daily_table__scalar_parent_urlbar_searchmode_topsites_newtab_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_searchmode_topsites_urlbar_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_searchmode_topsites_urlbar_sum}) AS clients_daily_table__scalar_parent_urlbar_searchmode_topsites_urlbar_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_searchmode_touchbar_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_searchmode_touchbar_sum}) AS clients_daily_table__scalar_parent_urlbar_searchmode_touchbar_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_searchmode_typed_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_searchmode_typed_sum}) AS clients_daily_table__scalar_parent_urlbar_searchmode_typed_sum ;;
  }

  join: clients_daily_table__search_adclicks_about_home_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_adclicks_about_home_sum}) AS clients_daily_table__search_adclicks_about_home_sum ;;
  }

  join: clients_daily_table__search_adclicks_about_newtab_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_adclicks_about_newtab_sum}) AS clients_daily_table__search_adclicks_about_newtab_sum ;;
  }

  join: clients_daily_table__search_adclicks_contextmenu_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_adclicks_contextmenu_sum}) AS clients_daily_table__search_adclicks_contextmenu_sum ;;
  }

  join: clients_daily_table__search_adclicks_reload_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_adclicks_reload_sum}) AS clients_daily_table__search_adclicks_reload_sum ;;
  }

  join: clients_daily_table__search_adclicks_searchbar_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_adclicks_searchbar_sum}) AS clients_daily_table__search_adclicks_searchbar_sum ;;
  }

  join: clients_daily_table__search_adclicks_system_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_adclicks_system_sum}) AS clients_daily_table__search_adclicks_system_sum ;;
  }

  join: clients_daily_table__search_adclicks_tabhistory_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_adclicks_tabhistory_sum}) AS clients_daily_table__search_adclicks_tabhistory_sum ;;
  }

  join: clients_daily_table__search_adclicks_unknown_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_adclicks_unknown_sum}) AS clients_daily_table__search_adclicks_unknown_sum ;;
  }

  join: clients_daily_table__search_adclicks_urlbar_handoff_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_adclicks_urlbar_handoff_sum}) AS clients_daily_table__search_adclicks_urlbar_handoff_sum ;;
  }

  join: clients_daily_table__search_adclicks_urlbar_searchmode_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_adclicks_urlbar_searchmode_sum}) AS clients_daily_table__search_adclicks_urlbar_searchmode_sum ;;
  }

  join: clients_daily_table__search_adclicks_urlbar_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_adclicks_urlbar_sum}) AS clients_daily_table__search_adclicks_urlbar_sum ;;
  }

  join: clients_daily_table__search_adclicks_webextension_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_adclicks_webextension_sum}) AS clients_daily_table__search_adclicks_webextension_sum ;;
  }

  join: clients_daily_table__search_content_about_home_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_content_about_home_sum}) AS clients_daily_table__search_content_about_home_sum ;;
  }

  join: clients_daily_table__search_content_about_newtab_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_content_about_newtab_sum}) AS clients_daily_table__search_content_about_newtab_sum ;;
  }

  join: clients_daily_table__search_content_contextmenu_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_content_contextmenu_sum}) AS clients_daily_table__search_content_contextmenu_sum ;;
  }

  join: clients_daily_table__search_content_reload_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_content_reload_sum}) AS clients_daily_table__search_content_reload_sum ;;
  }

  join: clients_daily_table__search_content_searchbar_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_content_searchbar_sum}) AS clients_daily_table__search_content_searchbar_sum ;;
  }

  join: clients_daily_table__search_content_system_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_content_system_sum}) AS clients_daily_table__search_content_system_sum ;;
  }

  join: clients_daily_table__search_content_tabhistory_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_content_tabhistory_sum}) AS clients_daily_table__search_content_tabhistory_sum ;;
  }

  join: clients_daily_table__search_content_unknown_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_content_unknown_sum}) AS clients_daily_table__search_content_unknown_sum ;;
  }

  join: clients_daily_table__search_content_urlbar_handoff_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_content_urlbar_handoff_sum}) AS clients_daily_table__search_content_urlbar_handoff_sum ;;
  }

  join: clients_daily_table__search_content_urlbar_searchmode_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_content_urlbar_searchmode_sum}) AS clients_daily_table__search_content_urlbar_searchmode_sum ;;
  }

  join: clients_daily_table__search_content_urlbar_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_content_urlbar_sum}) AS clients_daily_table__search_content_urlbar_sum ;;
  }

  join: clients_daily_table__search_content_webextension_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_content_webextension_sum}) AS clients_daily_table__search_content_webextension_sum ;;
  }

  join: clients_daily_table__search_counts {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_counts}) AS clients_daily_table__search_counts ;;
  }

  join: clients_daily_table__search_with_ads {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_with_ads}) AS clients_daily_table__search_with_ads ;;
  }

  join: clients_daily_table__search_withads_about_home_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_withads_about_home_sum}) AS clients_daily_table__search_withads_about_home_sum ;;
  }

  join: clients_daily_table__search_withads_about_newtab_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_withads_about_newtab_sum}) AS clients_daily_table__search_withads_about_newtab_sum ;;
  }

  join: clients_daily_table__search_withads_contextmenu_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_withads_contextmenu_sum}) AS clients_daily_table__search_withads_contextmenu_sum ;;
  }

  join: clients_daily_table__search_withads_reload_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_withads_reload_sum}) AS clients_daily_table__search_withads_reload_sum ;;
  }

  join: clients_daily_table__search_withads_searchbar_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_withads_searchbar_sum}) AS clients_daily_table__search_withads_searchbar_sum ;;
  }

  join: clients_daily_table__search_withads_system_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_withads_system_sum}) AS clients_daily_table__search_withads_system_sum ;;
  }

  join: clients_daily_table__search_withads_tabhistory_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_withads_tabhistory_sum}) AS clients_daily_table__search_withads_tabhistory_sum ;;
  }

  join: clients_daily_table__search_withads_unknown_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_withads_unknown_sum}) AS clients_daily_table__search_withads_unknown_sum ;;
  }

  join: clients_daily_table__search_withads_urlbar_handoff_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_withads_urlbar_handoff_sum}) AS clients_daily_table__search_withads_urlbar_handoff_sum ;;
  }

  join: clients_daily_table__search_withads_urlbar_searchmode_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_withads_urlbar_searchmode_sum}) AS clients_daily_table__search_withads_urlbar_searchmode_sum ;;
  }

  join: clients_daily_table__search_withads_urlbar_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_withads_urlbar_sum}) AS clients_daily_table__search_withads_urlbar_sum ;;
  }

  join: clients_daily_table__search_withads_webextension_sum {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_withads_webextension_sum}) AS clients_daily_table__search_withads_webextension_sum ;;
  }
}