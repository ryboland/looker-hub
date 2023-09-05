
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: metric_definitions_normandy_events {
  derived_table: {
    sql: SELECT
                COALESCE(LOGICAL_OR(        event_category = 'normandy'
        AND event_method = 'unenroll'
        AND event_string_value = '{experiment_slug}'
     ), FALSE) AS unenroll,
                client_id AS client_id,
                submission_date AS submission_date
              FROM 
                (
    SELECT
        *
    FROM
        ((
    SELECT
        *
    FROM mozdata.telemetry.events
    WHERE event_category = 'normandy'
))
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
    sql: COALESCE(SAFE_CAST(COALESCE(${TABLE}.client_id, 'NULL') AS STRING)
                        {% if  metric_definitions_browser_launched_to_handle_events._in_query %}
                        , metric_definitions_browser_launched_to_handle_events.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_active_users_aggregates_v1._in_query %}
                        , metric_definitions_active_users_aggregates_v1.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_main._in_query %}
                        , metric_definitions_main.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_crash._in_query %}
                        , metric_definitions_crash.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_events_memory._in_query %}
                        , metric_definitions_events_memory.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_search_clients_engines_sources_daily._in_query %}
                        , metric_definitions_search_clients_engines_sources_daily.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_clients_daily._in_query %}
                        , metric_definitions_clients_daily.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_events._in_query %}
                        , metric_definitions_events.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_newtab_interactions._in_query %}
                        , metric_definitions_newtab_interactions.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_normandy_events._in_query %}
                        , metric_definitions_normandy_events.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_activity_stream_events._in_query %}
                        , metric_definitions_activity_stream_events.client_id
                        {% endif %}
                    
                        {% if  metric_definitions_sponsored_tiles_clients_daily._in_query %}
                        , metric_definitions_sponsored_tiles_clients_daily.client_id
                        {% endif %}
                    ) ;;
    label: "Client ID"
    description: "Unique client identifier"
  }

  dimension: unenroll {
    label: "Unenrollments"
    description: "    Counts the number of clients with an experiment unenrollment event.
"
    type: number
    sql: ${TABLE}.unenroll ;;
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
    fields: [unenroll]
  }
}