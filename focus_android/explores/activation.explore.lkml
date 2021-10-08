include: "/looker-hub/focus_android/views/activation.view.lkml"

explore: activation {
  sql_always_where: ${activation.submission_date} >= '2010-01-01' ;;
  view_label: " Activation"
  description: "Explore for the activation ping. This ping is intended to provide a measure of the activation of mobile products. It's generated when Focus starts, right after Glean is initialized."
  view_name: activation

  always_filter: {
    filters: [
      submission_date: "28 days",
    ]
  }

  join: activation__events {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${activation.events}) AS activation__events ;;
  }

  join: activation__events__extra {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${activation.events__extra}) AS activation__events__extra ;;
  }

  join: activation__metrics__jwe {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${activation.metrics__jwe}) AS activation__metrics__jwe ;;
  }

  join: activation__metrics__labeled_rate {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${activation.metrics__labeled_rate}) AS activation__metrics__labeled_rate ;;
  }

  join: activation__metrics__labeled_rate__value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${activation.metrics__labeled_rate__value}) AS activation__metrics__labeled_rate__value ;;
  }

  join: activation__metrics__text {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${activation.metrics__text}) AS activation__metrics__text ;;
  }

  join: activation__metrics__url {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${activation.metrics__url}) AS activation__metrics__url ;;
  }

  join: activation__ping_info__experiments {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${activation.ping_info__experiments}) AS activation__ping_info__experiments ;;
  }

  join: activation__metrics__labeled_counter__glean_error_invalid_label {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${activation.metrics__labeled_counter__glean_error_invalid_label}) AS activation__metrics__labeled_counter__glean_error_invalid_label ON ${activation.document_id} = ${activation__metrics__labeled_counter__glean_error_invalid_label.document_id} ;;
  }

  join: activation__metrics__labeled_counter__glean_error_invalid_overflow {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${activation.metrics__labeled_counter__glean_error_invalid_overflow}) AS activation__metrics__labeled_counter__glean_error_invalid_overflow ON ${activation.document_id} = ${activation__metrics__labeled_counter__glean_error_invalid_overflow.document_id} ;;
  }

  join: activation__metrics__labeled_counter__glean_error_invalid_state {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${activation.metrics__labeled_counter__glean_error_invalid_state}) AS activation__metrics__labeled_counter__glean_error_invalid_state ON ${activation.document_id} = ${activation__metrics__labeled_counter__glean_error_invalid_state.document_id} ;;
  }

  join: activation__metrics__labeled_counter__glean_error_invalid_value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${activation.metrics__labeled_counter__glean_error_invalid_value}) AS activation__metrics__labeled_counter__glean_error_invalid_value ON ${activation.document_id} = ${activation__metrics__labeled_counter__glean_error_invalid_value.document_id} ;;
  }
}

explore: suggest__activation__metrics__labeled_counter__glean_error_invalid_label {
  hidden: yes
}

explore: suggest__activation__metrics__labeled_counter__glean_error_invalid_overflow {
  hidden: yes
}

explore: suggest__activation__metrics__labeled_counter__glean_error_invalid_state {
  hidden: yes
}

explore: suggest__activation__metrics__labeled_counter__glean_error_invalid_value {
  hidden: yes
}