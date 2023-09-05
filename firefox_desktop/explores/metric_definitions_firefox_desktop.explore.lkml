
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

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
  sql_always_where: ${metric_definitions_browser_launched_to_handle_events.submission_date} >= '2010-01-01' ;;
  view_name: metric_definitions_browser_launched_to_handle_events

  join: metric_definitions_active_users_aggregates_v1 {
    view_label: "Metric Definitions Active Users Aggregates V1"
    relationship: one_to_one
    sql_on: ${submission_date} = ${metric_definitions_active_users_aggregates_v1.submission_date} AND ${client_id} = ${metric_definitions_active_users_aggregates_v1.client_id} ;;
  }

  join: metric_definitions_main {
    view_label: "Metric Definitions Main"
    relationship: one_to_one
    sql_on: ${submission_date} = ${metric_definitions_main.submission_date} AND ${client_id} = ${metric_definitions_main.client_id} ;;
  }

  join: metric_definitions_crash {
    view_label: "Metric Definitions Crash"
    relationship: one_to_one
    sql_on: ${submission_date} = ${metric_definitions_crash.submission_date} AND ${client_id} = ${metric_definitions_crash.client_id} ;;
  }

  join: metric_definitions_events_memory {
    view_label: "Metric Definitions Events Memory"
    relationship: one_to_one
    sql_on: ${submission_date} = ${metric_definitions_events_memory.submission_date} AND ${client_id} = ${metric_definitions_events_memory.client_id} ;;
  }

  join: metric_definitions_search_clients_engines_sources_daily {
    view_label: "Metric Definitions Search Clients Engines Sources Daily"
    relationship: one_to_one
    sql_on: ${submission_date} = ${metric_definitions_search_clients_engines_sources_daily.submission_date} AND ${client_id} = ${metric_definitions_search_clients_engines_sources_daily.client_id} ;;
  }

  join: metric_definitions_clients_daily {
    view_label: "Metric Definitions Clients Daily"
    relationship: one_to_one
    sql_on: ${submission_date} = ${metric_definitions_clients_daily.submission_date} AND ${client_id} = ${metric_definitions_clients_daily.client_id} ;;
  }

  join: metric_definitions_events {
    view_label: "Metric Definitions Events"
    relationship: one_to_one
    sql_on: ${submission_date} = ${metric_definitions_events.submission_date} AND ${client_id} = ${metric_definitions_events.client_id} ;;
  }

  join: metric_definitions_newtab_interactions {
    view_label: "Metric Definitions Newtab Interactions"
    relationship: one_to_one
    sql_on: ${submission_date} = ${metric_definitions_newtab_interactions.submission_date} AND ${client_id} = ${metric_definitions_newtab_interactions.client_id} ;;
  }

  join: metric_definitions_normandy_events {
    view_label: "Metric Definitions Normandy Events"
    relationship: one_to_one
    sql_on: ${submission_date} = ${metric_definitions_normandy_events.submission_date} AND ${client_id} = ${metric_definitions_normandy_events.client_id} ;;
  }

  join: metric_definitions_activity_stream_events {
    view_label: "Metric Definitions Activity Stream Events"
    relationship: one_to_one
    sql_on: ${submission_date} = ${metric_definitions_activity_stream_events.submission_date} AND ${client_id} = ${metric_definitions_activity_stream_events.client_id} ;;
  }

  join: metric_definitions_sponsored_tiles_clients_daily {
    view_label: "Metric Definitions Sponsored Tiles Clients Daily"
    relationship: one_to_one
    sql_on: ${submission_date} = ${metric_definitions_sponsored_tiles_clients_daily.submission_date} AND ${client_id} = ${metric_definitions_sponsored_tiles_clients_daily.client_id} ;;
  }

  always_filter: {
    filters: [
      submission_date: "7 days",
    ]
  }
}