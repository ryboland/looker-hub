include: "events_daily_table.view.lkml"

view: funnel_analysis {
  extends: [events_daily_table]
}

view: event_types {
  derived_table: {
    sql: SELECT mozfun.event_analysis.aggregate_match_strings( ARRAY_AGG( mozfun.event_analysis.event_index_to_match_string(index))) AS match_string FROM mozdata.firefox_accounts.event_types WHERE {% condition category %} category {% endcondition %} AND {% condition event %} event {% endcondition %} ;;
  }

  filter: category {
    description: "The event category, as defined in metrics.yaml."
    type: string
    suggest_explore: event_names
    suggest_dimension: event_names.category
  }

  filter: event {
    description: "The event name."
    type: string
    suggest_explore: event_names
    suggest_dimension: event_names.event
  }

  dimension: match_string {
    hidden: yes
    sql: ${TABLE}.match_string ;;
  }
}

view: event_names {
  derived_table: {
    sql: SELECT category,   event,   property.key AS property_name,   property_value.key AS property_value, FROM mozdata.firefox_accounts.event_types LEFT JOIN UNNEST(event_properties) AS property LEFT JOIN UNNEST(property.value) AS property_value ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: event {
    type: string
    sql: ${TABLE}.event ;;
  }

  dimension: property_name {
    type: string
    sql: ${TABLE}.property_name ;;
  }

  dimension: property_value {
    type: string
    sql: ${TABLE}.property_value ;;
  }
}