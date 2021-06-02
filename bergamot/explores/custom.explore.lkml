include: "/looker-hub/bergamot/views/custom.view.lkml"

explore: custom {
  sql_always_where: ${custom.submission_date} >= '2010-01-01' ;;
  view_name: custom

  always_filter: {
    filters: [
      submission_date: "28 days",
    ]
  }

  join: custom__metrics__labeled_counter__glean_error_invalid_label {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${custom.metrics__labeled_counter__glean_error_invalid_label}) AS custom__metrics__labeled_counter__glean_error_invalid_label ;;
    sql_on: ${custom.client_info__client_id} = ${custom__metrics__labeled_counter__glean_error_invalid_label.client_id} ;;
  }

  join: custom__metrics__labeled_counter__glean_error_invalid_overflow {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${custom.metrics__labeled_counter__glean_error_invalid_overflow}) AS custom__metrics__labeled_counter__glean_error_invalid_overflow ;;
    sql_on: ${custom.client_info__client_id} = ${custom__metrics__labeled_counter__glean_error_invalid_overflow.client_id} ;;
  }

  join: custom__metrics__labeled_counter__glean_error_invalid_state {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${custom.metrics__labeled_counter__glean_error_invalid_state}) AS custom__metrics__labeled_counter__glean_error_invalid_state ;;
    sql_on: ${custom.client_info__client_id} = ${custom__metrics__labeled_counter__glean_error_invalid_state.client_id} ;;
  }

  join: custom__metrics__labeled_counter__glean_error_invalid_value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${custom.metrics__labeled_counter__glean_error_invalid_value}) AS custom__metrics__labeled_counter__glean_error_invalid_value ;;
    sql_on: ${custom.client_info__client_id} = ${custom__metrics__labeled_counter__glean_error_invalid_value.client_id} ;;
  }
}

explore: suggest__custom__metrics__labeled_counter__glean_error_invalid_label {
  hidden: yes
}

explore: suggest__custom__metrics__labeled_counter__glean_error_invalid_overflow {
  hidden: yes
}

explore: suggest__custom__metrics__labeled_counter__glean_error_invalid_state {
  hidden: yes
}

explore: suggest__custom__metrics__labeled_counter__glean_error_invalid_value {
  hidden: yes
}