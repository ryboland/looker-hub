include: "/looker-hub/fenix/views/events.view.lkml"

explore: events {
  sql_always_where: ${events.submission_date} >= '2010-01-01' ;;
  view_name: events

  always_filter: {
    filters: [
      channel: "mozdata.org^_mozilla^_firefox.events",
      submission_date: "28 days",
    ]
  }

  join: events__metrics__labeled_counter__glean_error_invalid_label {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${events.metrics__labeled_counter__glean_error_invalid_label}) AS events__metrics__labeled_counter__glean_error_invalid_label ON ${events.client_info__client_id} = ${events__metrics__labeled_counter__glean_error_invalid_label.client_id} ;;
  }

  join: events__metrics__labeled_counter__glean_error_invalid_overflow {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${events.metrics__labeled_counter__glean_error_invalid_overflow}) AS events__metrics__labeled_counter__glean_error_invalid_overflow ON ${events.client_info__client_id} = ${events__metrics__labeled_counter__glean_error_invalid_overflow.client_id} ;;
  }

  join: events__metrics__labeled_counter__glean_error_invalid_state {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${events.metrics__labeled_counter__glean_error_invalid_state}) AS events__metrics__labeled_counter__glean_error_invalid_state ON ${events.client_info__client_id} = ${events__metrics__labeled_counter__glean_error_invalid_state.client_id} ;;
  }

  join: events__metrics__labeled_counter__glean_error_invalid_value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${events.metrics__labeled_counter__glean_error_invalid_value}) AS events__metrics__labeled_counter__glean_error_invalid_value ON ${events.client_info__client_id} = ${events__metrics__labeled_counter__glean_error_invalid_value.client_id} ;;
  }
}

explore: suggest__events__metrics__labeled_counter__glean_error_invalid_label {
  hidden: yes
}

explore: suggest__events__metrics__labeled_counter__glean_error_invalid_overflow {
  hidden: yes
}

explore: suggest__events__metrics__labeled_counter__glean_error_invalid_state {
  hidden: yes
}

explore: suggest__events__metrics__labeled_counter__glean_error_invalid_value {
  hidden: yes
}