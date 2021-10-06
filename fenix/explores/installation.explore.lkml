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

  join: installation__client_info__events {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${installation.client_info__events}) AS installation__client_info__events ON ${installation.document_id} = ${installation__client_info__events.document_id} ;;
  }

  join: installation__client_info__events__extra {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${installation.client_info__events__extra}) AS installation__client_info__events__extra ON ${installation.document_id} = ${installation__client_info__events__extra.document_id} ;;
  }

  join: installation__client_info__events__metadata__metrics__datetime__jwe {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${installation.client_info__events__metadata__metrics__datetime__jwe}) AS installation__client_info__events__metadata__metrics__datetime__jwe ON ${installation.document_id} = ${installation__client_info__events__metadata__metrics__datetime__jwe.document_id} ;;
  }

  join: installation__client_info__events__metadata__metrics__datetime__jwe__labeled_rate {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${installation.client_info__events__metadata__metrics__datetime__jwe__labeled_rate}) AS installation__client_info__events__metadata__metrics__datetime__jwe__labeled_rate ON ${installation.document_id} = ${installation__client_info__events__metadata__metrics__datetime__jwe__labeled_rate.document_id} ;;
  }

  join: installation__client_info__events__metadata__metrics__datetime__jwe__labeled_rate__value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${installation.client_info__events__metadata__metrics__datetime__jwe__labeled_rate__value}) AS installation__client_info__events__metadata__metrics__datetime__jwe__labeled_rate__value ON ${installation.document_id} = ${installation__client_info__events__metadata__metrics__datetime__jwe__labeled_rate__value.document_id} ;;
  }

  join: installation__client_info__events__metadata__metrics__datetime__jwe__labeled_rate__string__text {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${installation.client_info__events__metadata__metrics__datetime__jwe__labeled_rate__string__text}) AS installation__client_info__events__metadata__metrics__datetime__jwe__labeled_rate__string__text ON ${installation.document_id} = ${installation__client_info__events__metadata__metrics__datetime__jwe__labeled_rate__string__text.document_id} ;;
  }

  join: installation__client_info__events__metadata__metrics__datetime__jwe__labeled_rate__string__text__url {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${installation.client_info__events__metadata__metrics__datetime__jwe__labeled_rate__string__text__url}) AS installation__client_info__events__metadata__metrics__datetime__jwe__labeled_rate__string__text__url ON ${installation.document_id} = ${installation__client_info__events__metadata__metrics__datetime__jwe__labeled_rate__string__text__url.document_id} ;;
  }

  join: installation__client_info__events__metadata__metrics__ping_info__experiments {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${installation.client_info__events__metadata__metrics__ping_info__experiments}) AS installation__client_info__events__metadata__metrics__ping_info__experiments ON ${installation.document_id} = ${installation__client_info__events__metadata__metrics__ping_info__experiments.document_id} ;;
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