include: "/looker-hub/burnham/views/space_ship_ready.view.lkml"

explore: space_ship_ready {
  sql_always_where: ${space_ship_ready.submission_date} >= '2010-01-01' ;;
  view_label: " Space_Ship_Ready"
  description: "Explore for the space_ship_ready ping. Custom ping for testing kebab-case ping names."
  view_name: space_ship_ready

  always_filter: {
    filters: [
      submission_date: "28 days",
    ]
  }

  join: space_ship_ready__metrics__labeled_counter__glean_error_invalid_label {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${space_ship_ready.metrics__labeled_counter__glean_error_invalid_label}) AS space_ship_ready__metrics__labeled_counter__glean_error_invalid_label ON ${space_ship_ready.document_id} = ${space_ship_ready__metrics__labeled_counter__glean_error_invalid_label.document_id} ;;
  }

  join: space_ship_ready__metrics__labeled_counter__glean_error_invalid_overflow {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${space_ship_ready.metrics__labeled_counter__glean_error_invalid_overflow}) AS space_ship_ready__metrics__labeled_counter__glean_error_invalid_overflow ON ${space_ship_ready.document_id} = ${space_ship_ready__metrics__labeled_counter__glean_error_invalid_overflow.document_id} ;;
  }

  join: space_ship_ready__metrics__labeled_counter__glean_error_invalid_state {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${space_ship_ready.metrics__labeled_counter__glean_error_invalid_state}) AS space_ship_ready__metrics__labeled_counter__glean_error_invalid_state ON ${space_ship_ready.document_id} = ${space_ship_ready__metrics__labeled_counter__glean_error_invalid_state.document_id} ;;
  }

  join: space_ship_ready__metrics__labeled_counter__glean_error_invalid_value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${space_ship_ready.metrics__labeled_counter__glean_error_invalid_value}) AS space_ship_ready__metrics__labeled_counter__glean_error_invalid_value ON ${space_ship_ready.document_id} = ${space_ship_ready__metrics__labeled_counter__glean_error_invalid_value.document_id} ;;
  }

  query: client_count {
    description: "Number of clients over the past 28 days"
    dimensions: [submission_date]
    measures: [clients]
    filters: [
      submission_date: "28 days",
    ]
    sorts: [
      submission_date: desc,
    ]
  }

  query: client_count_tier_1 {
    description: "Number of clients over the past 28 days for tier-1 countries"
    dimensions: [submission_date]
    measures: [clients]
    filters: [
      submission_date: "28 days",
      country: "United States,France,Germany,United Kingdom,Canada",
    ]
    sorts: [
      submission_date: desc,
    ]
  }
}

explore: suggest__space_ship_ready__metrics__labeled_counter__glean_error_invalid_label {
  hidden: yes
}

explore: suggest__space_ship_ready__metrics__labeled_counter__glean_error_invalid_overflow {
  hidden: yes
}

explore: suggest__space_ship_ready__metrics__labeled_counter__glean_error_invalid_state {
  hidden: yes
}

explore: suggest__space_ship_ready__metrics__labeled_counter__glean_error_invalid_value {
  hidden: yes
}