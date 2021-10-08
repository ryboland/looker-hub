include: "/looker-hub/bergamot/views/custom.view.lkml"

explore: custom {
  sql_always_where: ${custom.submission_date} >= '2010-01-01' ;;
  view_label: " Custom"
  description: "Explore for the custom ping. A custom ping, sending time is fully controlled by the application."
  view_name: custom

  always_filter: {
    filters: [
      submission_date: "28 days",
    ]
  }

  join: custom__events {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${custom.events}) AS custom__events ;;
  }

  join: custom__events__extra {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${custom__events.extra}) AS custom__events__extra ;;
  }

  join: custom__metrics__jwe {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${custom.metrics__jwe}) AS custom__metrics__jwe ;;
  }

  join: custom__metrics__labeled_rate {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${custom.metrics__labeled_rate}) AS custom__metrics__labeled_rate ;;
  }

  join: custom__metrics__labeled_rate__value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${custom__metrics__labeled_rate.value}) AS custom__metrics__labeled_rate__value ;;
  }

  join: custom__metrics__text {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${custom.metrics__text}) AS custom__metrics__text ;;
  }

  join: custom__metrics__url {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${custom.metrics__url}) AS custom__metrics__url ;;
  }

  join: custom__ping_info__experiments {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${custom.ping_info__experiments}) AS custom__ping_info__experiments ;;
  }

  join: custom__metrics__labeled_counter__glean_error_invalid_label {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${custom.metrics__labeled_counter__glean_error_invalid_label}) AS custom__metrics__labeled_counter__glean_error_invalid_label ON ${custom.document_id} = ${custom__metrics__labeled_counter__glean_error_invalid_label.document_id} ;;
  }

  join: custom__metrics__labeled_counter__glean_error_invalid_overflow {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${custom.metrics__labeled_counter__glean_error_invalid_overflow}) AS custom__metrics__labeled_counter__glean_error_invalid_overflow ON ${custom.document_id} = ${custom__metrics__labeled_counter__glean_error_invalid_overflow.document_id} ;;
  }

  join: custom__metrics__labeled_counter__glean_error_invalid_state {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${custom.metrics__labeled_counter__glean_error_invalid_state}) AS custom__metrics__labeled_counter__glean_error_invalid_state ON ${custom.document_id} = ${custom__metrics__labeled_counter__glean_error_invalid_state.document_id} ;;
  }

  join: custom__metrics__labeled_counter__glean_error_invalid_value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${custom.metrics__labeled_counter__glean_error_invalid_value}) AS custom__metrics__labeled_counter__glean_error_invalid_value ON ${custom.document_id} = ${custom__metrics__labeled_counter__glean_error_invalid_value.document_id} ;;
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