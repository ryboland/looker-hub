
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

include: "/looker-hub/firefox_desktop/views/metric_definitions_active_users_aggregates_v1.view.lkml"
include: "/looker-hub/firefox_desktop/views/metric_definitions_browser_launched_to_handle_events.view.lkml"
include: "/looker-hub/firefox_desktop/views/metric_definitions_active_users_aggregates_v1.view.lkml"
include: "/looker-hub/firefox_desktop/views/metric_definitions_main.view.lkml"
include: "/looker-hub/firefox_desktop/views/metric_definitions_crash.view.lkml"
include: "/looker-hub/firefox_desktop/views/metric_definitions_events_memory.view.lkml"
include: "/looker-hub/firefox_desktop/views/metric_definitions_search_clients_engines_sources_daily.view.lkml"
include: "/looker-hub/firefox_desktop/views/metric_definitions_clients_daily.view.lkml"
include: "/looker-hub/firefox_desktop/views/metric_definitions_events.view.lkml"
include: "/looker-hub/firefox_desktop/views/metric_definitions_newtab_interactions.view.lkml"
include: "/looker-hub/firefox_desktop/views/metric_definitions_normandy_events.view.lkml"
include: "/looker-hub/firefox_desktop/views/metric_definitions_activity_stream_events.view.lkml"
include: "/looker-hub/firefox_desktop/views/metric_definitions_sponsored_tiles_clients_daily.view.lkml"

explore: metric_definitions_firefox_desktop {
  sql_always_where: ${metric_definitions_active_users_aggregates_v1.submission_date} >= '2010-01-01' ;;
  from: metric_definitions_active_users_aggregates_v1
  view_label: "Metric Definitions Firefox Desktop"

  join: metric_definitions_browser_launched_to_handle_events {
    view_label: "Metric Definitions Browser Launched To Handle Events"
    relationship: one_to_one
    type: full_outer
    sql_on: SAFE_CAST(${submission_date} AS TIMESTAMP) = SAFE_CAST(${metric_definitions_browser_launched_to_handle_events.submission_date} AS TIMESTAMP)
                  AND COALESCE(SAFE_CAST(${client_id} AS STRING), SAFE_CAST(${metric_definitions_browser_launched_to_handle_events.client_id} AS STRING)) = 
                  COALESCE(SAFE_CAST(${metric_definitions_browser_launched_to_handle_events.client_id} AS STRING), SAFE_CAST(${client_id} AS STRING)) ;;
  }

  join: metric_definitions_active_users_aggregates_v1 {
    view_label: "Metric Definitions Active Users Aggregates V1"
    relationship: one_to_one
    type: full_outer
    sql_on: SAFE_CAST(${submission_date} AS TIMESTAMP) = SAFE_CAST(${metric_definitions_active_users_aggregates_v1.submission_date} AS TIMESTAMP)
                  AND COALESCE(SAFE_CAST(${client_id} AS STRING), SAFE_CAST(${metric_definitions_active_users_aggregates_v1.client_id} AS STRING)) = 
                  COALESCE(SAFE_CAST(${metric_definitions_active_users_aggregates_v1.client_id} AS STRING), SAFE_CAST(${client_id} AS STRING)) ;;
  }

  join: metric_definitions_main {
    view_label: "Metric Definitions Main"
    relationship: one_to_one
    type: full_outer
    sql_on: SAFE_CAST(${submission_date} AS TIMESTAMP) = SAFE_CAST(${metric_definitions_main.submission_date} AS TIMESTAMP)
                  AND COALESCE(SAFE_CAST(${client_id} AS STRING), SAFE_CAST(${metric_definitions_main.client_id} AS STRING)) = 
                  COALESCE(SAFE_CAST(${metric_definitions_main.client_id} AS STRING), SAFE_CAST(${client_id} AS STRING)) ;;
  }

  join: metric_definitions_crash {
    view_label: "Metric Definitions Crash"
    relationship: one_to_one
    type: full_outer
    sql_on: SAFE_CAST(${submission_date} AS TIMESTAMP) = SAFE_CAST(${metric_definitions_crash.submission_date} AS TIMESTAMP)
                  AND COALESCE(SAFE_CAST(${client_id} AS STRING), SAFE_CAST(${metric_definitions_crash.client_id} AS STRING)) = 
                  COALESCE(SAFE_CAST(${metric_definitions_crash.client_id} AS STRING), SAFE_CAST(${client_id} AS STRING)) ;;
  }

  join: metric_definitions_events_memory {
    view_label: "Metric Definitions Events Memory"
    relationship: one_to_one
    type: full_outer
    sql_on: SAFE_CAST(${submission_date} AS TIMESTAMP) = SAFE_CAST(${metric_definitions_events_memory.submission_date} AS TIMESTAMP)
                  AND COALESCE(SAFE_CAST(${client_id} AS STRING), SAFE_CAST(${metric_definitions_events_memory.client_id} AS STRING)) = 
                  COALESCE(SAFE_CAST(${metric_definitions_events_memory.client_id} AS STRING), SAFE_CAST(${client_id} AS STRING)) ;;
  }

  join: metric_definitions_search_clients_engines_sources_daily {
    view_label: "Metric Definitions Search Clients Engines Sources Daily"
    relationship: one_to_one
    type: full_outer
    sql_on: SAFE_CAST(${submission_date} AS TIMESTAMP) = SAFE_CAST(${metric_definitions_search_clients_engines_sources_daily.submission_date} AS TIMESTAMP)
                  AND COALESCE(SAFE_CAST(${client_id} AS STRING), SAFE_CAST(${metric_definitions_search_clients_engines_sources_daily.client_id} AS STRING)) = 
                  COALESCE(SAFE_CAST(${metric_definitions_search_clients_engines_sources_daily.client_id} AS STRING), SAFE_CAST(${client_id} AS STRING)) ;;
  }

  join: metric_definitions_clients_daily {
    view_label: "Metric Definitions Clients Daily"
    relationship: one_to_one
    type: full_outer
    sql_on: SAFE_CAST(${submission_date} AS TIMESTAMP) = SAFE_CAST(${metric_definitions_clients_daily.submission_date} AS TIMESTAMP)
                  AND COALESCE(SAFE_CAST(${client_id} AS STRING), SAFE_CAST(${metric_definitions_clients_daily.client_id} AS STRING)) = 
                  COALESCE(SAFE_CAST(${metric_definitions_clients_daily.client_id} AS STRING), SAFE_CAST(${client_id} AS STRING)) ;;
  }

  join: metric_definitions_events {
    view_label: "Metric Definitions Events"
    relationship: one_to_one
    type: full_outer
    sql_on: SAFE_CAST(${submission_date} AS TIMESTAMP) = SAFE_CAST(${metric_definitions_events.submission_date} AS TIMESTAMP)
                  AND COALESCE(SAFE_CAST(${client_id} AS STRING), SAFE_CAST(${metric_definitions_events.client_id} AS STRING)) = 
                  COALESCE(SAFE_CAST(${metric_definitions_events.client_id} AS STRING), SAFE_CAST(${client_id} AS STRING)) ;;
  }

  join: metric_definitions_newtab_interactions {
    view_label: "Metric Definitions Newtab Interactions"
    relationship: one_to_one
    type: full_outer
    sql_on: SAFE_CAST(${submission_date} AS TIMESTAMP) = SAFE_CAST(${metric_definitions_newtab_interactions.submission_date} AS TIMESTAMP)
                  AND COALESCE(SAFE_CAST(${client_id} AS STRING), SAFE_CAST(${metric_definitions_newtab_interactions.client_id} AS STRING)) = 
                  COALESCE(SAFE_CAST(${metric_definitions_newtab_interactions.client_id} AS STRING), SAFE_CAST(${client_id} AS STRING)) ;;
  }

  join: metric_definitions_normandy_events {
    view_label: "Metric Definitions Normandy Events"
    relationship: one_to_one
    type: full_outer
    sql_on: SAFE_CAST(${submission_date} AS TIMESTAMP) = SAFE_CAST(${metric_definitions_normandy_events.submission_date} AS TIMESTAMP)
                  AND COALESCE(SAFE_CAST(${client_id} AS STRING), SAFE_CAST(${metric_definitions_normandy_events.client_id} AS STRING)) = 
                  COALESCE(SAFE_CAST(${metric_definitions_normandy_events.client_id} AS STRING), SAFE_CAST(${client_id} AS STRING)) ;;
  }

  join: metric_definitions_activity_stream_events {
    view_label: "Metric Definitions Activity Stream Events"
    relationship: one_to_one
    type: full_outer
    sql_on: SAFE_CAST(${submission_date} AS TIMESTAMP) = SAFE_CAST(${metric_definitions_activity_stream_events.submission_date} AS TIMESTAMP)
                  AND COALESCE(SAFE_CAST(${client_id} AS STRING), SAFE_CAST(${metric_definitions_activity_stream_events.client_id} AS STRING)) = 
                  COALESCE(SAFE_CAST(${metric_definitions_activity_stream_events.client_id} AS STRING), SAFE_CAST(${client_id} AS STRING)) ;;
  }

  join: metric_definitions_sponsored_tiles_clients_daily {
    view_label: "Metric Definitions Sponsored Tiles Clients Daily"
    relationship: one_to_one
    type: full_outer
    sql_on: SAFE_CAST(${submission_date} AS TIMESTAMP) = SAFE_CAST(${metric_definitions_sponsored_tiles_clients_daily.submission_date} AS TIMESTAMP)
                  AND COALESCE(SAFE_CAST(${client_id} AS STRING), SAFE_CAST(${metric_definitions_sponsored_tiles_clients_daily.client_id} AS STRING)) = 
                  COALESCE(SAFE_CAST(${metric_definitions_sponsored_tiles_clients_daily.client_id} AS STRING), SAFE_CAST(${client_id} AS STRING)) ;;
  }

  always_filter: {
    filters: [
      date: "7 days",
    ]
  }

  fields: [
    date,
    client_id,
    submission_day,
    submission_week,
    submission_month,
    submission_quarter,
    submission_year,
    submission_raw,
    metric_definitions_browser_launched_to_handle_events*,
    metric_definitions_active_users_aggregates_v1*,
    metric_definitions_main*,
    metric_definitions_crash*,
    metric_definitions_events_memory*,
    metric_definitions_search_clients_engines_sources_daily*,
    metric_definitions_clients_daily*,
    metric_definitions_events*,
    metric_definitions_newtab_interactions*,
    metric_definitions_normandy_events*,
    metric_definitions_activity_stream_events*,
    metric_definitions_sponsored_tiles_clients_daily*,
    -metric_definitions_browser_launched_to_handle_events.client_id,
    -metric_definitions_browser_launched_to_handle_events.date,
    ['-metric_definitions_browser_launched_to_handle_events.submission_day', '-metric_definitions_browser_launched_to_handle_events.submission_week', '-metric_definitions_browser_launched_to_handle_events.submission_month', '-metric_definitions_browser_launched_to_handle_events.submission_quarter', '-metric_definitions_browser_launched_to_handle_events.submission_year', '-metric_definitions_browser_launched_to_handle_events.submission_raw'],
    -metric_definitions_active_users_aggregates_v1.client_id,
    -metric_definitions_active_users_aggregates_v1.date,
    ['-metric_definitions_active_users_aggregates_v1.submission_day', '-metric_definitions_active_users_aggregates_v1.submission_week', '-metric_definitions_active_users_aggregates_v1.submission_month', '-metric_definitions_active_users_aggregates_v1.submission_quarter', '-metric_definitions_active_users_aggregates_v1.submission_year', '-metric_definitions_active_users_aggregates_v1.submission_raw'],
    -metric_definitions_main.client_id,
    -metric_definitions_main.date,
    ['-metric_definitions_main.submission_day', '-metric_definitions_main.submission_week', '-metric_definitions_main.submission_month', '-metric_definitions_main.submission_quarter', '-metric_definitions_main.submission_year', '-metric_definitions_main.submission_raw'],
    -metric_definitions_crash.client_id,
    -metric_definitions_crash.date,
    ['-metric_definitions_crash.submission_day', '-metric_definitions_crash.submission_week', '-metric_definitions_crash.submission_month', '-metric_definitions_crash.submission_quarter', '-metric_definitions_crash.submission_year', '-metric_definitions_crash.submission_raw'],
    -metric_definitions_events_memory.client_id,
    -metric_definitions_events_memory.date,
    ['-metric_definitions_events_memory.submission_day', '-metric_definitions_events_memory.submission_week', '-metric_definitions_events_memory.submission_month', '-metric_definitions_events_memory.submission_quarter', '-metric_definitions_events_memory.submission_year', '-metric_definitions_events_memory.submission_raw'],
    -metric_definitions_search_clients_engines_sources_daily.client_id,
    -metric_definitions_search_clients_engines_sources_daily.date,
    ['-metric_definitions_search_clients_engines_sources_daily.submission_day', '-metric_definitions_search_clients_engines_sources_daily.submission_week', '-metric_definitions_search_clients_engines_sources_daily.submission_month', '-metric_definitions_search_clients_engines_sources_daily.submission_quarter', '-metric_definitions_search_clients_engines_sources_daily.submission_year', '-metric_definitions_search_clients_engines_sources_daily.submission_raw'],
    -metric_definitions_clients_daily.client_id,
    -metric_definitions_clients_daily.date,
    ['-metric_definitions_clients_daily.submission_day', '-metric_definitions_clients_daily.submission_week', '-metric_definitions_clients_daily.submission_month', '-metric_definitions_clients_daily.submission_quarter', '-metric_definitions_clients_daily.submission_year', '-metric_definitions_clients_daily.submission_raw'],
    -metric_definitions_events.client_id,
    -metric_definitions_events.date,
    ['-metric_definitions_events.submission_day', '-metric_definitions_events.submission_week', '-metric_definitions_events.submission_month', '-metric_definitions_events.submission_quarter', '-metric_definitions_events.submission_year', '-metric_definitions_events.submission_raw'],
    -metric_definitions_newtab_interactions.client_id,
    -metric_definitions_newtab_interactions.date,
    ['-metric_definitions_newtab_interactions.submission_day', '-metric_definitions_newtab_interactions.submission_week', '-metric_definitions_newtab_interactions.submission_month', '-metric_definitions_newtab_interactions.submission_quarter', '-metric_definitions_newtab_interactions.submission_year', '-metric_definitions_newtab_interactions.submission_raw'],
    -metric_definitions_normandy_events.client_id,
    -metric_definitions_normandy_events.date,
    ['-metric_definitions_normandy_events.submission_day', '-metric_definitions_normandy_events.submission_week', '-metric_definitions_normandy_events.submission_month', '-metric_definitions_normandy_events.submission_quarter', '-metric_definitions_normandy_events.submission_year', '-metric_definitions_normandy_events.submission_raw'],
    -metric_definitions_activity_stream_events.client_id,
    -metric_definitions_activity_stream_events.date,
    ['-metric_definitions_activity_stream_events.submission_day', '-metric_definitions_activity_stream_events.submission_week', '-metric_definitions_activity_stream_events.submission_month', '-metric_definitions_activity_stream_events.submission_quarter', '-metric_definitions_activity_stream_events.submission_year', '-metric_definitions_activity_stream_events.submission_raw'],
    -metric_definitions_sponsored_tiles_clients_daily.client_id,
    -metric_definitions_sponsored_tiles_clients_daily.date,
    ['-metric_definitions_sponsored_tiles_clients_daily.submission_day', '-metric_definitions_sponsored_tiles_clients_daily.submission_week', '-metric_definitions_sponsored_tiles_clients_daily.submission_month', '-metric_definitions_sponsored_tiles_clients_daily.submission_quarter', '-metric_definitions_sponsored_tiles_clients_daily.submission_year', '-metric_definitions_sponsored_tiles_clients_daily.submission_raw'],
  ]
}