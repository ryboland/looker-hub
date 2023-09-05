
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: metric_definitions_sponsored_tiles_clients_daily {
  derived_table: {
    sql: SELECT
                COALESCE(LOGICAL_OR(sponsored_tiles_disable_count > 0), FALSE) AS sponsored_tiles_disabled,
                client_id AS client_id,
                submission_date AS submission_date
              FROM 
                (
    SELECT
        *
    FROM
        (mozdata.telemetry.sponsored_tiles_clients_daily)
    )
              WHERE submission_date BETWEEN 
                SAFE_CAST({% date_start metric_definitions_firefox_desktop.date %} AS DATE) AND 
                SAFE_CAST({% date_end metric_definitions_firefox_desktop.date %} AS DATE)
              GROUP BY
                client_id,
                submission_date ;;
  }

  dimension: client_id {
    type: string
    sql: COALESCE(${TABLE}.client_id
                        {% if  metric_definitions_baseline.client_id._in_query %}
                        , metric_definitions_baseline.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_metrics.client_id._in_query %}
                        , metric_definitions_metrics.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_mobile_search_clients_engines_sources_daily.client_id._in_query %}
                        , metric_definitions_mobile_search_clients_engines_sources_daily.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_mobile_active_users_aggregates_v1.client_id._in_query %}
                        , metric_definitions_mobile_active_users_aggregates_v1.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_active_users_aggregates_v1.client_id._in_query %}
                        , metric_definitions_active_users_aggregates_v1.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_baseline.client_id._in_query %}
                        , metric_definitions_baseline.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_baseline_v2.client_id._in_query %}
                        , metric_definitions_baseline_v2.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_events.client_id._in_query %}
                        , metric_definitions_events.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_metrics.client_id._in_query %}
                        , metric_definitions_metrics.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_mobile_search_clients_engines_sources_daily.client_id._in_query %}
                        , metric_definitions_mobile_search_clients_engines_sources_daily.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_new_profile_activation.client_id._in_query %}
                        , metric_definitions_new_profile_activation.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_special_onboarding_events.client_id._in_query %}
                        , metric_definitions_special_onboarding_events.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_active_users_aggregates_v1.client_id._in_query %}
                        , metric_definitions_active_users_aggregates_v1.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_baseline.client_id._in_query %}
                        , metric_definitions_baseline.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_baseline_v2.client_id._in_query %}
                        , metric_definitions_baseline_v2.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_events.client_id._in_query %}
                        , metric_definitions_events.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_metrics.client_id._in_query %}
                        , metric_definitions_metrics.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_mobile_search_clients_engines_sources_daily.client_id._in_query %}
                        , metric_definitions_mobile_search_clients_engines_sources_daily.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_new_profile_activation.client_id._in_query %}
                        , metric_definitions_new_profile_activation.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_special_onboarding_events.client_id._in_query %}
                        , metric_definitions_special_onboarding_events.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_active_users_aggregates_v1.client_id._in_query %}
                        , metric_definitions_active_users_aggregates_v1.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_baseline.client_id._in_query %}
                        , metric_definitions_baseline.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_baseline_v2.client_id._in_query %}
                        , metric_definitions_baseline_v2.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_metrics.client_id._in_query %}
                        , metric_definitions_metrics.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_mobile_search_clients_engines_sources_daily.client_id._in_query %}
                        , metric_definitions_mobile_search_clients_engines_sources_daily.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_browser_launched_to_handle_events.client_id._in_query %}
                        , metric_definitions_browser_launched_to_handle_events.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_active_users_aggregates_v1.client_id._in_query %}
                        , metric_definitions_active_users_aggregates_v1.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_main.client_id._in_query %}
                        , metric_definitions_main.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_crash.client_id._in_query %}
                        , metric_definitions_crash.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_events_memory.client_id._in_query %}
                        , metric_definitions_events_memory.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_search_clients_engines_sources_daily.client_id._in_query %}
                        , metric_definitions_search_clients_engines_sources_daily.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_clients_daily.client_id._in_query %}
                        , metric_definitions_clients_daily.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_events.client_id._in_query %}
                        , metric_definitions_events.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_newtab_interactions.client_id._in_query %}
                        , metric_definitions_newtab_interactions.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_normandy_events.client_id._in_query %}
                        , metric_definitions_normandy_events.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_activity_stream_events.client_id._in_query %}
                        , metric_definitions_activity_stream_events.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_sponsored_tiles_clients_daily.client_id._in_query %}
                        , metric_definitions_sponsored_tiles_clients_daily.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_active_users_aggregates_v1.client_id._in_query %}
                        , metric_definitions_active_users_aggregates_v1.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_baseline.client_id._in_query %}
                        , metric_definitions_baseline.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_baseline_v2.client_id._in_query %}
                        , metric_definitions_baseline_v2.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_metrics.client_id._in_query %}
                        , metric_definitions_metrics.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_mobile_search_clients_engines_sources_daily.client_id._in_query %}
                        , metric_definitions_mobile_search_clients_engines_sources_daily.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_baseline.client_id._in_query %}
                        , metric_definitions_baseline.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_metrics.client_id._in_query %}
                        , metric_definitions_metrics.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_mobile_search_clients_engines_sources_daily.client_id._in_query %}
                        , metric_definitions_mobile_search_clients_engines_sources_daily.client_id
                        {% endif %}
                    ) ;;
    label: "Client ID"
    description: "Unique client identifier"
  }

  dimension: sponsored_tiles_disabled {
    label: "Sponsored Tiles Disabled Event"
    description: "Boolean that identifies clients that disabled sponsored tiles during experiment"
    type: number
    sql: ${TABLE}.sponsored_tiles_disabled ;;
  }

  dimension_group: submission {
    type: time
    sql: CAST(${TABLE}.submission_date AS TIMESTAMP) ;;
    label: "Submission"
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
    ]
  }

  filter: date {
    type: date
    description: "Date Range"
  }

  set: metrics {
    fields: [sponsored_tiles_disabled]
  }
}