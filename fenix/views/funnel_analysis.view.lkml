include: "events_daily_table.view.lkml"

view: funnel_analysis {
  extends: [events_daily_table]

  dimension: completed_event_1 {
    type: yesno
    sql: REGEXP_CONTAINS(${TABLE}.events, mozfun.event_analysis.create_funnel_regex([${event_type_1.match_string}],True)) ;;
  }

  dimension: completed_event_2 {
    type: yesno
    sql: REGEXP_CONTAINS(${TABLE}.events, mozfun.event_analysis.create_funnel_regex([${event_type_2.match_string}],True)) ;;
  }

  dimension: completed_event_3 {
    type: yesno
    sql: REGEXP_CONTAINS(${TABLE}.events, mozfun.event_analysis.create_funnel_regex([${event_type_3.match_string}],True)) ;;
  }

  dimension: completed_event_4 {
    type: yesno
    sql: REGEXP_CONTAINS(${TABLE}.events, mozfun.event_analysis.create_funnel_regex([${event_type_4.match_string}],True)) ;;
  }

  measure: count_user_days_event_1 {
    type: count
    filters: [
      completed_event_1: "yes",
    ]
  }

  measure: count_user_days_event_2 {
    type: count
    filters: [
      completed_event_1: "yes",
      completed_event_2: "yes",
    ]
  }

  measure: count_user_days_event_3 {
    type: count
    filters: [
      completed_event_1: "yes",
      completed_event_2: "yes",
      completed_event_3: "yes",
    ]
  }

  measure: count_user_days_event_4 {
    type: count
    filters: [
      completed_event_1: "yes",
      completed_event_2: "yes",
      completed_event_3: "yes",
      completed_event_4: "yes",
    ]
  }

  measure: fraction_user_days_event_1 {
    type: number
    sql: SAFE_DIVIDE(${count_user_days_event_1}, ${count_user_days_event_1}) ;;
  }

  measure: fraction_user_days_event_2 {
    type: number
    sql: SAFE_DIVIDE(${count_user_days_event_2}, ${count_user_days_event_1}) ;;
  }

  measure: fraction_user_days_event_3 {
    type: number
    sql: SAFE_DIVIDE(${count_user_days_event_3}, ${count_user_days_event_1}) ;;
  }

  measure: fraction_user_days_event_4 {
    type: number
    sql: SAFE_DIVIDE(${count_user_days_event_4}, ${count_user_days_event_1}) ;;
  }
}

view: event_types {
  derived_table: {
    sql: SELECT mozfun.event_analysis.aggregate_match_strings( ARRAY_AGG( mozfun.event_analysis.event_index_to_match_string(index))) AS match_string FROM `mozdata.org_mozilla_firefox.event_types` WHERE {% condition message_id %} event_types.category {% endcondition %} AND {% condition event_type %} event_types.event {% endcondition %} ;;
  }

  filter: category {
    type: string
    suggest_explore: event_names
    suggest_dimension: event_names.category
  }

  filter: name {
    type: string
    suggest_explore: event_names
    suggest_dimension: event_names.name
  }

  dimension: match_string {
    hidden: yes
    sql: ${TABLE}.match_string ;;
  }
}

view: event_type_1 {
  extends: [event_types]
}

view: event_type_2 {
  extends: [event_types]
}

view: event_type_3 {
  extends: [event_types]
}

view: event_type_4 {
  extends: [event_types]
}