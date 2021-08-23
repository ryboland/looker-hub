include: "/looker-hub/burnham/views/discovery.view.lkml"

explore: discovery {
  sql_always_where: ${discovery.submission_date} >= '2010-01-01' ;;
  view_label: " Discovery"
  description: "Explore for the discovery ping. Custom ping sent by the burnham CLI app."
  view_name: discovery

  always_filter: {
    filters: [
      submission_date: "28 days",
    ]
  }

  join: discovery__metrics__labeled_counter__glean_error_invalid_label {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${discovery.metrics__labeled_counter__glean_error_invalid_label}) AS discovery__metrics__labeled_counter__glean_error_invalid_label ON ${discovery.document_id} = ${discovery__metrics__labeled_counter__glean_error_invalid_label.document_id} ;;
  }

  join: discovery__metrics__labeled_counter__glean_error_invalid_overflow {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${discovery.metrics__labeled_counter__glean_error_invalid_overflow}) AS discovery__metrics__labeled_counter__glean_error_invalid_overflow ON ${discovery.document_id} = ${discovery__metrics__labeled_counter__glean_error_invalid_overflow.document_id} ;;
  }

  join: discovery__metrics__labeled_counter__glean_error_invalid_state {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${discovery.metrics__labeled_counter__glean_error_invalid_state}) AS discovery__metrics__labeled_counter__glean_error_invalid_state ON ${discovery.document_id} = ${discovery__metrics__labeled_counter__glean_error_invalid_state.document_id} ;;
  }

  join: discovery__metrics__labeled_counter__glean_error_invalid_value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${discovery.metrics__labeled_counter__glean_error_invalid_value}) AS discovery__metrics__labeled_counter__glean_error_invalid_value ON ${discovery.document_id} = ${discovery__metrics__labeled_counter__glean_error_invalid_value.document_id} ;;
  }

  join: discovery__metrics__labeled_counter__technology_space_travel {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${discovery.metrics__labeled_counter__technology_space_travel}) AS discovery__metrics__labeled_counter__technology_space_travel ON ${discovery.document_id} = ${discovery__metrics__labeled_counter__technology_space_travel.document_id} ;;
  }

  join: discovery__metrics__labeled_counter__test_burnham_space_travel {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${discovery.metrics__labeled_counter__test_burnham_space_travel}) AS discovery__metrics__labeled_counter__test_burnham_space_travel ON ${discovery.document_id} = ${discovery__metrics__labeled_counter__test_burnham_space_travel.document_id} ;;
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

explore: suggest__discovery__metrics__labeled_counter__glean_error_invalid_label {
  hidden: yes
}

explore: suggest__discovery__metrics__labeled_counter__glean_error_invalid_overflow {
  hidden: yes
}

explore: suggest__discovery__metrics__labeled_counter__glean_error_invalid_state {
  hidden: yes
}

explore: suggest__discovery__metrics__labeled_counter__glean_error_invalid_value {
  hidden: yes
}

explore: suggest__discovery__metrics__labeled_counter__technology_space_travel {
  hidden: yes
}

explore: suggest__discovery__metrics__labeled_counter__test_burnham_space_travel {
  hidden: yes
}