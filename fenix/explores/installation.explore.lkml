include: "/looker-hub/fenix/views/installation.view.lkml"

explore: installation {
  sql_always_where: ${installation.submission_date} >= '2010-01-01' ;;
  view_label: " Installation"
  description: "Explore for the installation ping. This ping is intended to capture the source of the installation"
  view_name: installation

  always_filter: {
    filters: [
      channel: "mozdata.fenix.installation",
      submission_date: "28 days",
    ]
  }

  join: installation__events {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${installation.events}) AS installation__events ;;
  }

  join: installation__events__extra {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${installation__events.events__extra}) AS installation__events__extra ;;
  }

  join: installation__metrics__jwe {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${installation__metrics.metrics__jwe}) AS installation__metrics__jwe ;;
  }

  join: installation__metrics__labeled_rate {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${installation__metrics.metrics__labeled_rate}) AS installation__metrics__labeled_rate ;;
  }

  join: installation__metrics__labeled_rate__value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${installation__metrics__labeled_rate.metrics__labeled_rate__value}) AS installation__metrics__labeled_rate__value ;;
  }

  join: installation__metrics__text {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${installation__metrics.metrics__text}) AS installation__metrics__text ;;
  }

  join: installation__metrics__url {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${installation__metrics.metrics__url}) AS installation__metrics__url ;;
  }

  join: installation__ping_info__experiments {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${installation__ping_info.ping_info__experiments}) AS installation__ping_info__experiments ;;
  }

  join: installation__metrics__labeled_counter__glean_error_invalid_label {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${installation.metrics__labeled_counter__glean_error_invalid_label}) AS installation__metrics__labeled_counter__glean_error_invalid_label ON ${installation.document_id} = ${installation__metrics__labeled_counter__glean_error_invalid_label.document_id} ;;
  }

  join: installation__metrics__labeled_counter__glean_error_invalid_overflow {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${installation.metrics__labeled_counter__glean_error_invalid_overflow}) AS installation__metrics__labeled_counter__glean_error_invalid_overflow ON ${installation.document_id} = ${installation__metrics__labeled_counter__glean_error_invalid_overflow.document_id} ;;
  }

  join: installation__metrics__labeled_counter__glean_error_invalid_state {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${installation.metrics__labeled_counter__glean_error_invalid_state}) AS installation__metrics__labeled_counter__glean_error_invalid_state ON ${installation.document_id} = ${installation__metrics__labeled_counter__glean_error_invalid_state.document_id} ;;
  }

  join: installation__metrics__labeled_counter__glean_error_invalid_value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${installation.metrics__labeled_counter__glean_error_invalid_value}) AS installation__metrics__labeled_counter__glean_error_invalid_value ON ${installation.document_id} = ${installation__metrics__labeled_counter__glean_error_invalid_value.document_id} ;;
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