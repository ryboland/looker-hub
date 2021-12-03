include: "/looker-hub/search/views/search_clients_engines_sources_daily.view.lkml"

explore: desktop_search_counts {
  sql_always_where: ${search_clients_engines_sources_daily.submission_date} >= '2010-01-01' ;;
  view_name: search_clients_engines_sources_daily

  always_filter: {
    filters: [
      submission_date: "28 days",
    ]
  }

  join: search_clients_engines_sources_daily__experiments {
    view_label: "Search clients engines sources daily  experiments"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${search_clients_engines_sources_daily.experiments}) AS search_clients_engines_sources_daily__experiments ;;
  }

  join: search_clients_engines_sources_daily__scalar_parent_urlbar_searchmode_bookmarkmenu_sum {
    view_label: "Search clients engines sources daily  scalar parent urlbar searchmode bookmarkmenu sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${search_clients_engines_sources_daily.scalar_parent_urlbar_searchmode_bookmarkmenu_sum}) AS search_clients_engines_sources_daily__scalar_parent_urlbar_searchmode_bookmarkmenu_sum ;;
  }

  join: search_clients_engines_sources_daily__scalar_parent_urlbar_searchmode_handoff_sum {
    view_label: "Search clients engines sources daily  scalar parent urlbar searchmode handoff sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${search_clients_engines_sources_daily.scalar_parent_urlbar_searchmode_handoff_sum}) AS search_clients_engines_sources_daily__scalar_parent_urlbar_searchmode_handoff_sum ;;
  }

  join: search_clients_engines_sources_daily__scalar_parent_urlbar_searchmode_keywordoffer_sum {
    view_label: "Search clients engines sources daily  scalar parent urlbar searchmode keywordoffer sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${search_clients_engines_sources_daily.scalar_parent_urlbar_searchmode_keywordoffer_sum}) AS search_clients_engines_sources_daily__scalar_parent_urlbar_searchmode_keywordoffer_sum ;;
  }

  join: search_clients_engines_sources_daily__scalar_parent_urlbar_searchmode_oneoff_sum {
    view_label: "Search clients engines sources daily  scalar parent urlbar searchmode oneoff sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${search_clients_engines_sources_daily.scalar_parent_urlbar_searchmode_oneoff_sum}) AS search_clients_engines_sources_daily__scalar_parent_urlbar_searchmode_oneoff_sum ;;
  }

  join: search_clients_engines_sources_daily__scalar_parent_urlbar_searchmode_other_sum {
    view_label: "Search clients engines sources daily  scalar parent urlbar searchmode other sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${search_clients_engines_sources_daily.scalar_parent_urlbar_searchmode_other_sum}) AS search_clients_engines_sources_daily__scalar_parent_urlbar_searchmode_other_sum ;;
  }

  join: search_clients_engines_sources_daily__scalar_parent_urlbar_searchmode_shortcut_sum {
    view_label: "Search clients engines sources daily  scalar parent urlbar searchmode shortcut sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${search_clients_engines_sources_daily.scalar_parent_urlbar_searchmode_shortcut_sum}) AS search_clients_engines_sources_daily__scalar_parent_urlbar_searchmode_shortcut_sum ;;
  }

  join: search_clients_engines_sources_daily__scalar_parent_urlbar_searchmode_tabmenu_sum {
    view_label: "Search clients engines sources daily  scalar parent urlbar searchmode tabmenu sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${search_clients_engines_sources_daily.scalar_parent_urlbar_searchmode_tabmenu_sum}) AS search_clients_engines_sources_daily__scalar_parent_urlbar_searchmode_tabmenu_sum ;;
  }

  join: search_clients_engines_sources_daily__scalar_parent_urlbar_searchmode_tabtosearch_onboard_sum {
    view_label: "Search clients engines sources daily  scalar parent urlbar searchmode tabtosearch onboard sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${search_clients_engines_sources_daily.scalar_parent_urlbar_searchmode_tabtosearch_onboard_sum}) AS search_clients_engines_sources_daily__scalar_parent_urlbar_searchmode_tabtosearch_onboard_sum ;;
  }

  join: search_clients_engines_sources_daily__scalar_parent_urlbar_searchmode_tabtosearch_sum {
    view_label: "Search clients engines sources daily  scalar parent urlbar searchmode tabtosearch sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${search_clients_engines_sources_daily.scalar_parent_urlbar_searchmode_tabtosearch_sum}) AS search_clients_engines_sources_daily__scalar_parent_urlbar_searchmode_tabtosearch_sum ;;
  }

  join: search_clients_engines_sources_daily__scalar_parent_urlbar_searchmode_topsites_newtab_sum {
    view_label: "Search clients engines sources daily  scalar parent urlbar searchmode topsites newtab sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${search_clients_engines_sources_daily.scalar_parent_urlbar_searchmode_topsites_newtab_sum}) AS search_clients_engines_sources_daily__scalar_parent_urlbar_searchmode_topsites_newtab_sum ;;
  }

  join: search_clients_engines_sources_daily__scalar_parent_urlbar_searchmode_topsites_urlbar_sum {
    view_label: "Search clients engines sources daily  scalar parent urlbar searchmode topsites urlbar sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${search_clients_engines_sources_daily.scalar_parent_urlbar_searchmode_topsites_urlbar_sum}) AS search_clients_engines_sources_daily__scalar_parent_urlbar_searchmode_topsites_urlbar_sum ;;
  }

  join: search_clients_engines_sources_daily__scalar_parent_urlbar_searchmode_touchbar_sum {
    view_label: "Search clients engines sources daily  scalar parent urlbar searchmode touchbar sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${search_clients_engines_sources_daily.scalar_parent_urlbar_searchmode_touchbar_sum}) AS search_clients_engines_sources_daily__scalar_parent_urlbar_searchmode_touchbar_sum ;;
  }

  join: search_clients_engines_sources_daily__scalar_parent_urlbar_searchmode_typed_sum {
    view_label: "Search clients engines sources daily  scalar parent urlbar searchmode typed sum"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${search_clients_engines_sources_daily.scalar_parent_urlbar_searchmode_typed_sum}) AS search_clients_engines_sources_daily__scalar_parent_urlbar_searchmode_typed_sum ;;
  }
}