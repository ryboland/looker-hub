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
    view_label: "Clients daily table  a11y theme"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.a11y_theme}) AS client_counts__a11y_theme ;;
  }

  join: clients_daily_table__active_addons {
    view_label: "Clients daily table  active addons"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.active_addons}) AS client_counts__active_addons ;;
  }

  join: clients_daily_table__ad_clicks {
    view_label: "Clients daily table  ad clicks"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.ad_clicks}) AS client_counts__ad_clicks ;;
  }

  join: clients_daily_table__contextual_services_quicksuggest_click_sum {
    view_label: "Clients daily table  contextual services quicksuggest click sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.contextual_services_quicksuggest_click_sum}) AS client_counts__contextual_services_quicksuggest_click_sum ;;
  }

  join: clients_daily_table__contextual_services_quicksuggest_help_sum {
    view_label: "Clients daily table  contextual services quicksuggest help sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.contextual_services_quicksuggest_help_sum}) AS client_counts__contextual_services_quicksuggest_help_sum ;;
  }

  join: clients_daily_table__contextual_services_quicksuggest_impression_sum {
    view_label: "Clients daily table  contextual services quicksuggest impression sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.contextual_services_quicksuggest_impression_sum}) AS client_counts__contextual_services_quicksuggest_impression_sum ;;
  }

  join: clients_daily_table__contextual_services_topsites_click_sum {
    view_label: "Clients daily table  contextual services topsites click sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.contextual_services_topsites_click_sum}) AS client_counts__contextual_services_topsites_click_sum ;;
  }

  join: clients_daily_table__contextual_services_topsites_impression_sum {
    view_label: "Clients daily table  contextual services topsites impression sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.contextual_services_topsites_impression_sum}) AS client_counts__contextual_services_topsites_impression_sum ;;
  }

  join: clients_daily_table__experiments {
    view_label: "Clients daily table  experiments"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.experiments}) AS client_counts__experiments ;;
  }

  join: clients_daily_table__scalar_content_telemetry_event_counts_sum {
    view_label: "Clients daily table  scalar content telemetry event counts sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_content_telemetry_event_counts_sum}) AS client_counts__scalar_content_telemetry_event_counts_sum ;;
  }

  join: clients_daily_table__scalar_parent_browser_ui_interaction_preferences_pane_home_sum {
    view_label: "Clients daily table  scalar parent browser ui interaction preferences pane home sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_browser_ui_interaction_preferences_pane_home_sum}) AS client_counts__scalar_parent_browser_ui_interaction_preferences_pane_home_sum ;;
  }

  join: clients_daily_table__scalar_parent_devtools_accessibility_select_accessible_for_node_sum {
    view_label: "Clients daily table  scalar parent devtools accessibility select accessible for node sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_devtools_accessibility_select_accessible_for_node_sum}) AS client_counts__scalar_parent_devtools_accessibility_select_accessible_for_node_sum ;;
  }

  join: clients_daily_table__scalar_parent_telemetry_event_counts_sum {
    view_label: "Clients daily table  scalar parent telemetry event counts sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_telemetry_event_counts_sum}) AS client_counts__scalar_parent_telemetry_event_counts_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_picked_autofill_sum {
    view_label: "Clients daily table  scalar parent urlbar picked autofill sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_picked_autofill_sum}) AS client_counts__scalar_parent_urlbar_picked_autofill_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_picked_bookmark_sum {
    view_label: "Clients daily table  scalar parent urlbar picked bookmark sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_picked_bookmark_sum}) AS client_counts__scalar_parent_urlbar_picked_bookmark_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_picked_dynamic_sum {
    view_label: "Clients daily table  scalar parent urlbar picked dynamic sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_picked_dynamic_sum}) AS client_counts__scalar_parent_urlbar_picked_dynamic_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_picked_extension_sum {
    view_label: "Clients daily table  scalar parent urlbar picked extension sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_picked_extension_sum}) AS client_counts__scalar_parent_urlbar_picked_extension_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_picked_formhistory_sum {
    view_label: "Clients daily table  scalar parent urlbar picked formhistory sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_picked_formhistory_sum}) AS client_counts__scalar_parent_urlbar_picked_formhistory_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_picked_history_sum {
    view_label: "Clients daily table  scalar parent urlbar picked history sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_picked_history_sum}) AS client_counts__scalar_parent_urlbar_picked_history_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_picked_keyword_sum {
    view_label: "Clients daily table  scalar parent urlbar picked keyword sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_picked_keyword_sum}) AS client_counts__scalar_parent_urlbar_picked_keyword_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_picked_remotetab_sum {
    view_label: "Clients daily table  scalar parent urlbar picked remotetab sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_picked_remotetab_sum}) AS client_counts__scalar_parent_urlbar_picked_remotetab_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_picked_searchengine_sum {
    view_label: "Clients daily table  scalar parent urlbar picked searchengine sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_picked_searchengine_sum}) AS client_counts__scalar_parent_urlbar_picked_searchengine_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_picked_searchsuggestion_sum {
    view_label: "Clients daily table  scalar parent urlbar picked searchsuggestion sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_picked_searchsuggestion_sum}) AS client_counts__scalar_parent_urlbar_picked_searchsuggestion_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_picked_switchtab_sum {
    view_label: "Clients daily table  scalar parent urlbar picked switchtab sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_picked_switchtab_sum}) AS client_counts__scalar_parent_urlbar_picked_switchtab_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_picked_tabtosearch_sum {
    view_label: "Clients daily table  scalar parent urlbar picked tabtosearch sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_picked_tabtosearch_sum}) AS client_counts__scalar_parent_urlbar_picked_tabtosearch_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_picked_tip_sum {
    view_label: "Clients daily table  scalar parent urlbar picked tip sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_picked_tip_sum}) AS client_counts__scalar_parent_urlbar_picked_tip_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_picked_topsite_sum {
    view_label: "Clients daily table  scalar parent urlbar picked topsite sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_picked_topsite_sum}) AS client_counts__scalar_parent_urlbar_picked_topsite_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_picked_unknown_sum {
    view_label: "Clients daily table  scalar parent urlbar picked unknown sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_picked_unknown_sum}) AS client_counts__scalar_parent_urlbar_picked_unknown_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_picked_visiturl_sum {
    view_label: "Clients daily table  scalar parent urlbar picked visiturl sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_picked_visiturl_sum}) AS client_counts__scalar_parent_urlbar_picked_visiturl_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_searchmode_bookmarkmenu_sum {
    view_label: "Clients daily table  scalar parent urlbar searchmode bookmarkmenu sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_searchmode_bookmarkmenu_sum}) AS client_counts__scalar_parent_urlbar_searchmode_bookmarkmenu_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_searchmode_handoff_sum {
    view_label: "Clients daily table  scalar parent urlbar searchmode handoff sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_searchmode_handoff_sum}) AS client_counts__scalar_parent_urlbar_searchmode_handoff_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_searchmode_keywordoffer_sum {
    view_label: "Clients daily table  scalar parent urlbar searchmode keywordoffer sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_searchmode_keywordoffer_sum}) AS client_counts__scalar_parent_urlbar_searchmode_keywordoffer_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_searchmode_oneoff_sum {
    view_label: "Clients daily table  scalar parent urlbar searchmode oneoff sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_searchmode_oneoff_sum}) AS client_counts__scalar_parent_urlbar_searchmode_oneoff_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_searchmode_other_sum {
    view_label: "Clients daily table  scalar parent urlbar searchmode other sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_searchmode_other_sum}) AS client_counts__scalar_parent_urlbar_searchmode_other_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_searchmode_shortcut_sum {
    view_label: "Clients daily table  scalar parent urlbar searchmode shortcut sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_searchmode_shortcut_sum}) AS client_counts__scalar_parent_urlbar_searchmode_shortcut_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_searchmode_tabmenu_sum {
    view_label: "Clients daily table  scalar parent urlbar searchmode tabmenu sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_searchmode_tabmenu_sum}) AS client_counts__scalar_parent_urlbar_searchmode_tabmenu_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_searchmode_tabtosearch_onboard_sum {
    view_label: "Clients daily table  scalar parent urlbar searchmode tabtosearch onboard sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_searchmode_tabtosearch_onboard_sum}) AS client_counts__scalar_parent_urlbar_searchmode_tabtosearch_onboard_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_searchmode_tabtosearch_sum {
    view_label: "Clients daily table  scalar parent urlbar searchmode tabtosearch sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_searchmode_tabtosearch_sum}) AS client_counts__scalar_parent_urlbar_searchmode_tabtosearch_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_searchmode_topsites_newtab_sum {
    view_label: "Clients daily table  scalar parent urlbar searchmode topsites newtab sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_searchmode_topsites_newtab_sum}) AS client_counts__scalar_parent_urlbar_searchmode_topsites_newtab_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_searchmode_topsites_urlbar_sum {
    view_label: "Clients daily table  scalar parent urlbar searchmode topsites urlbar sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_searchmode_topsites_urlbar_sum}) AS client_counts__scalar_parent_urlbar_searchmode_topsites_urlbar_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_searchmode_touchbar_sum {
    view_label: "Clients daily table  scalar parent urlbar searchmode touchbar sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_searchmode_touchbar_sum}) AS client_counts__scalar_parent_urlbar_searchmode_touchbar_sum ;;
  }

  join: clients_daily_table__scalar_parent_urlbar_searchmode_typed_sum {
    view_label: "Clients daily table  scalar parent urlbar searchmode typed sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.scalar_parent_urlbar_searchmode_typed_sum}) AS client_counts__scalar_parent_urlbar_searchmode_typed_sum ;;
  }

  join: clients_daily_table__search_adclicks_about_home_sum {
    view_label: "Clients daily table  search adclicks about home sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_adclicks_about_home_sum}) AS client_counts__search_adclicks_about_home_sum ;;
  }

  join: clients_daily_table__search_adclicks_about_newtab_sum {
    view_label: "Clients daily table  search adclicks about newtab sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_adclicks_about_newtab_sum}) AS client_counts__search_adclicks_about_newtab_sum ;;
  }

  join: clients_daily_table__search_adclicks_contextmenu_sum {
    view_label: "Clients daily table  search adclicks contextmenu sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_adclicks_contextmenu_sum}) AS client_counts__search_adclicks_contextmenu_sum ;;
  }

  join: clients_daily_table__search_adclicks_reload_sum {
    view_label: "Clients daily table  search adclicks reload sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_adclicks_reload_sum}) AS client_counts__search_adclicks_reload_sum ;;
  }

  join: clients_daily_table__search_adclicks_searchbar_sum {
    view_label: "Clients daily table  search adclicks searchbar sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_adclicks_searchbar_sum}) AS client_counts__search_adclicks_searchbar_sum ;;
  }

  join: clients_daily_table__search_adclicks_system_sum {
    view_label: "Clients daily table  search adclicks system sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_adclicks_system_sum}) AS client_counts__search_adclicks_system_sum ;;
  }

  join: clients_daily_table__search_adclicks_tabhistory_sum {
    view_label: "Clients daily table  search adclicks tabhistory sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_adclicks_tabhistory_sum}) AS client_counts__search_adclicks_tabhistory_sum ;;
  }

  join: clients_daily_table__search_adclicks_unknown_sum {
    view_label: "Clients daily table  search adclicks unknown sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_adclicks_unknown_sum}) AS client_counts__search_adclicks_unknown_sum ;;
  }

  join: clients_daily_table__search_adclicks_urlbar_handoff_sum {
    view_label: "Clients daily table  search adclicks urlbar handoff sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_adclicks_urlbar_handoff_sum}) AS client_counts__search_adclicks_urlbar_handoff_sum ;;
  }

  join: clients_daily_table__search_adclicks_urlbar_searchmode_sum {
    view_label: "Clients daily table  search adclicks urlbar searchmode sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_adclicks_urlbar_searchmode_sum}) AS client_counts__search_adclicks_urlbar_searchmode_sum ;;
  }

  join: clients_daily_table__search_adclicks_urlbar_sum {
    view_label: "Clients daily table  search adclicks urlbar sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_adclicks_urlbar_sum}) AS client_counts__search_adclicks_urlbar_sum ;;
  }

  join: clients_daily_table__search_adclicks_webextension_sum {
    view_label: "Clients daily table  search adclicks webextension sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_adclicks_webextension_sum}) AS client_counts__search_adclicks_webextension_sum ;;
  }

  join: clients_daily_table__search_content_about_home_sum {
    view_label: "Clients daily table  search content about home sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_content_about_home_sum}) AS client_counts__search_content_about_home_sum ;;
  }

  join: clients_daily_table__search_content_about_newtab_sum {
    view_label: "Clients daily table  search content about newtab sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_content_about_newtab_sum}) AS client_counts__search_content_about_newtab_sum ;;
  }

  join: clients_daily_table__search_content_contextmenu_sum {
    view_label: "Clients daily table  search content contextmenu sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_content_contextmenu_sum}) AS client_counts__search_content_contextmenu_sum ;;
  }

  join: clients_daily_table__search_content_reload_sum {
    view_label: "Clients daily table  search content reload sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_content_reload_sum}) AS client_counts__search_content_reload_sum ;;
  }

  join: clients_daily_table__search_content_searchbar_sum {
    view_label: "Clients daily table  search content searchbar sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_content_searchbar_sum}) AS client_counts__search_content_searchbar_sum ;;
  }

  join: clients_daily_table__search_content_system_sum {
    view_label: "Clients daily table  search content system sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_content_system_sum}) AS client_counts__search_content_system_sum ;;
  }

  join: clients_daily_table__search_content_tabhistory_sum {
    view_label: "Clients daily table  search content tabhistory sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_content_tabhistory_sum}) AS client_counts__search_content_tabhistory_sum ;;
  }

  join: clients_daily_table__search_content_unknown_sum {
    view_label: "Clients daily table  search content unknown sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_content_unknown_sum}) AS client_counts__search_content_unknown_sum ;;
  }

  join: clients_daily_table__search_content_urlbar_handoff_sum {
    view_label: "Clients daily table  search content urlbar handoff sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_content_urlbar_handoff_sum}) AS client_counts__search_content_urlbar_handoff_sum ;;
  }

  join: clients_daily_table__search_content_urlbar_searchmode_sum {
    view_label: "Clients daily table  search content urlbar searchmode sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_content_urlbar_searchmode_sum}) AS client_counts__search_content_urlbar_searchmode_sum ;;
  }

  join: clients_daily_table__search_content_urlbar_sum {
    view_label: "Clients daily table  search content urlbar sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_content_urlbar_sum}) AS client_counts__search_content_urlbar_sum ;;
  }

  join: clients_daily_table__search_content_webextension_sum {
    view_label: "Clients daily table  search content webextension sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_content_webextension_sum}) AS client_counts__search_content_webextension_sum ;;
  }

  join: clients_daily_table__search_counts {
    view_label: "Clients daily table  search counts"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_counts}) AS client_counts__search_counts ;;
  }

  join: clients_daily_table__search_with_ads {
    view_label: "Clients daily table  search with ads"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_with_ads}) AS client_counts__search_with_ads ;;
  }

  join: clients_daily_table__search_withads_about_home_sum {
    view_label: "Clients daily table  search withads about home sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_withads_about_home_sum}) AS client_counts__search_withads_about_home_sum ;;
  }

  join: clients_daily_table__search_withads_about_newtab_sum {
    view_label: "Clients daily table  search withads about newtab sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_withads_about_newtab_sum}) AS client_counts__search_withads_about_newtab_sum ;;
  }

  join: clients_daily_table__search_withads_contextmenu_sum {
    view_label: "Clients daily table  search withads contextmenu sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_withads_contextmenu_sum}) AS client_counts__search_withads_contextmenu_sum ;;
  }

  join: clients_daily_table__search_withads_reload_sum {
    view_label: "Clients daily table  search withads reload sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_withads_reload_sum}) AS client_counts__search_withads_reload_sum ;;
  }

  join: clients_daily_table__search_withads_searchbar_sum {
    view_label: "Clients daily table  search withads searchbar sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_withads_searchbar_sum}) AS client_counts__search_withads_searchbar_sum ;;
  }

  join: clients_daily_table__search_withads_system_sum {
    view_label: "Clients daily table  search withads system sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_withads_system_sum}) AS client_counts__search_withads_system_sum ;;
  }

  join: clients_daily_table__search_withads_tabhistory_sum {
    view_label: "Clients daily table  search withads tabhistory sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_withads_tabhistory_sum}) AS client_counts__search_withads_tabhistory_sum ;;
  }

  join: clients_daily_table__search_withads_unknown_sum {
    view_label: "Clients daily table  search withads unknown sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_withads_unknown_sum}) AS client_counts__search_withads_unknown_sum ;;
  }

  join: clients_daily_table__search_withads_urlbar_handoff_sum {
    view_label: "Clients daily table  search withads urlbar handoff sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_withads_urlbar_handoff_sum}) AS client_counts__search_withads_urlbar_handoff_sum ;;
  }

  join: clients_daily_table__search_withads_urlbar_searchmode_sum {
    view_label: "Clients daily table  search withads urlbar searchmode sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_withads_urlbar_searchmode_sum}) AS client_counts__search_withads_urlbar_searchmode_sum ;;
  }

  join: clients_daily_table__search_withads_urlbar_sum {
    view_label: "Clients daily table  search withads urlbar sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_withads_urlbar_sum}) AS client_counts__search_withads_urlbar_sum ;;
  }

  join: clients_daily_table__search_withads_webextension_sum {
    view_label: "Clients daily table  search withads webextension sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${client_counts.search_withads_webextension_sum}) AS client_counts__search_withads_webextension_sum ;;
  }
}