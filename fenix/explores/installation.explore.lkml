include: "/looker-hub/fenix/views/installation.view.lkml"

explore: installation {
  sql_always_where: ${installation.submission_date} >= '2010-01-01' ;;
  view_name: installation

  always_filter: {
    filters: [
      channel: "mozdata.org^_mozilla^_firefox.installation",
      submission_date: "28 days",
    ]
  }

  join: installation__metrics__labeled_counter__glean_error_invalid_label {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${installation.metrics__labeled_counter__glean_error_invalid_label}) AS installation__metrics__labeled_counter__glean_error_invalid_label ;;
    sql_on: ${installation.client_info__client_id} = ${installation__metrics__labeled_counter__glean_error_invalid_label.client_id} ;;
  }

  join: installation__metrics__labeled_counter__glean_error_invalid_overflow {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${installation.metrics__labeled_counter__glean_error_invalid_overflow}) AS installation__metrics__labeled_counter__glean_error_invalid_overflow ;;
    sql_on: ${installation.client_info__client_id} = ${installation__metrics__labeled_counter__glean_error_invalid_overflow.client_id} ;;
  }

  join: installation__metrics__labeled_counter__glean_error_invalid_state {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${installation.metrics__labeled_counter__glean_error_invalid_state}) AS installation__metrics__labeled_counter__glean_error_invalid_state ;;
    sql_on: ${installation.client_info__client_id} = ${installation__metrics__labeled_counter__glean_error_invalid_state.client_id} ;;
  }

  join: installation__metrics__labeled_counter__glean_error_invalid_value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${installation.metrics__labeled_counter__glean_error_invalid_value}) AS installation__metrics__labeled_counter__glean_error_invalid_value ;;
    sql_on: ${installation.client_info__client_id} = ${installation__metrics__labeled_counter__glean_error_invalid_value.client_id} ;;
  }
}

explore: suggest__installation__metrics__labeled_counter__glean_error_invalid_label {
  hidden: yes
}

explore: suggest__installation__metrics__labeled_counter__glean_error_invalid_overflow {
  hidden: yes
}

explore: suggest__installation__metrics__labeled_counter__glean_error_invalid_state {
  hidden: yes
}

explore: suggest__installation__metrics__labeled_counter__glean_error_invalid_value {
  hidden: yes
}