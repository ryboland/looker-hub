include: "/looker-hub/burnham/views/starbase46.view.lkml"

explore: starbase46 {
  sql_always_where: ${starbase46.submission_date} >= '2010-01-01' ;;
  view_label: " Starbase46"
  description: "Explore for the starbase46 ping. Custom ping for testing ping names that contain numbers."
  view_name: starbase46

  always_filter: {
    filters: [
      submission_date: "28 days",
    ]
  }

  join: starbase46__metrics__labeled_counter__glean_error_invalid_label {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${starbase46.metrics__labeled_counter__glean_error_invalid_label}) AS starbase46__metrics__labeled_counter__glean_error_invalid_label ON ${starbase46.document_id} = ${starbase46__metrics__labeled_counter__glean_error_invalid_label.document_id} ;;
  }

  join: starbase46__metrics__labeled_counter__glean_error_invalid_overflow {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${starbase46.metrics__labeled_counter__glean_error_invalid_overflow}) AS starbase46__metrics__labeled_counter__glean_error_invalid_overflow ON ${starbase46.document_id} = ${starbase46__metrics__labeled_counter__glean_error_invalid_overflow.document_id} ;;
  }

  join: starbase46__metrics__labeled_counter__glean_error_invalid_state {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${starbase46.metrics__labeled_counter__glean_error_invalid_state}) AS starbase46__metrics__labeled_counter__glean_error_invalid_state ON ${starbase46.document_id} = ${starbase46__metrics__labeled_counter__glean_error_invalid_state.document_id} ;;
  }

  join: starbase46__metrics__labeled_counter__glean_error_invalid_value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${starbase46.metrics__labeled_counter__glean_error_invalid_value}) AS starbase46__metrics__labeled_counter__glean_error_invalid_value ON ${starbase46.document_id} = ${starbase46__metrics__labeled_counter__glean_error_invalid_value.document_id} ;;
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

explore: suggest__starbase46__metrics__labeled_counter__glean_error_invalid_label {
  hidden: yes
}

explore: suggest__starbase46__metrics__labeled_counter__glean_error_invalid_overflow {
  hidden: yes
}

explore: suggest__starbase46__metrics__labeled_counter__glean_error_invalid_state {
  hidden: yes
}

explore: suggest__starbase46__metrics__labeled_counter__glean_error_invalid_value {
  hidden: yes
}