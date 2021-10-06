include: "/looker-hub/fenix/views/addresses_sync.view.lkml"

explore: addresses_sync {
  sql_always_where: ${addresses_sync.submission_date} >= '2010-01-01' ;;
  view_label: " Addresses_Sync"
  description: "Explore for the addresses_sync ping. A ping sent for every Addresses engine sync. It doesn't include the `client_id` because it reports a hashed version of the user's Firefox Account ID."
  view_name: addresses_sync

  always_filter: {
    filters: [
      channel: "mozdata.fenix.addresses^_sync",
      submission_date: "28 days",
    ]
  }

  join: addresses_sync__events {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${addresses_sync.events}) AS addresses_sync__events ;;
  }

  join: addresses_sync__events__extra {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${addresses_sync__events.events__extra}) AS addresses_sync__events__extra ;;
  }

  join: addresses_sync__metrics__jwe {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${addresses_sync__metrics.metrics__jwe}) AS addresses_sync__metrics__jwe ;;
  }

  join: addresses_sync__metrics__labeled_rate {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${addresses_sync__metrics.metrics__labeled_rate}) AS addresses_sync__metrics__labeled_rate ;;
  }

  join: addresses_sync__metrics__labeled_rate__value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${addresses_sync__metrics__labeled_rate.metrics__labeled_rate__value}) AS addresses_sync__metrics__labeled_rate__value ;;
  }

  join: addresses_sync__metrics__labeled_string__addresses_sync_failure_reason {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${addresses_sync__metrics__labeled_string.metrics__labeled_string__addresses_sync_failure_reason}) AS addresses_sync__metrics__labeled_string__addresses_sync_failure_reason ;;
  }

  join: addresses_sync__metrics__text {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${addresses_sync__metrics.metrics__text}) AS addresses_sync__metrics__text ;;
  }

  join: addresses_sync__metrics__url {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${addresses_sync__metrics.metrics__url}) AS addresses_sync__metrics__url ;;
  }

  join: addresses_sync__ping_info__experiments {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${addresses_sync__ping_info.ping_info__experiments}) AS addresses_sync__ping_info__experiments ;;
  }

  join: addresses_sync__metrics__labeled_counter__addresses_sync_incoming {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${addresses_sync.metrics__labeled_counter__addresses_sync_incoming}) AS addresses_sync__metrics__labeled_counter__addresses_sync_incoming ON ${addresses_sync.document_id} = ${addresses_sync__metrics__labeled_counter__addresses_sync_incoming.document_id} ;;
  }

  join: addresses_sync__metrics__labeled_counter__addresses_sync_outgoing {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${addresses_sync.metrics__labeled_counter__addresses_sync_outgoing}) AS addresses_sync__metrics__labeled_counter__addresses_sync_outgoing ON ${addresses_sync.document_id} = ${addresses_sync__metrics__labeled_counter__addresses_sync_outgoing.document_id} ;;
  }

  join: addresses_sync__metrics__labeled_counter__glean_error_invalid_label {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${addresses_sync.metrics__labeled_counter__glean_error_invalid_label}) AS addresses_sync__metrics__labeled_counter__glean_error_invalid_label ON ${addresses_sync.document_id} = ${addresses_sync__metrics__labeled_counter__glean_error_invalid_label.document_id} ;;
  }

  join: addresses_sync__metrics__labeled_counter__glean_error_invalid_overflow {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${addresses_sync.metrics__labeled_counter__glean_error_invalid_overflow}) AS addresses_sync__metrics__labeled_counter__glean_error_invalid_overflow ON ${addresses_sync.document_id} = ${addresses_sync__metrics__labeled_counter__glean_error_invalid_overflow.document_id} ;;
  }

  join: addresses_sync__metrics__labeled_counter__glean_error_invalid_state {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${addresses_sync.metrics__labeled_counter__glean_error_invalid_state}) AS addresses_sync__metrics__labeled_counter__glean_error_invalid_state ON ${addresses_sync.document_id} = ${addresses_sync__metrics__labeled_counter__glean_error_invalid_state.document_id} ;;
  }

  join: addresses_sync__metrics__labeled_counter__glean_error_invalid_value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${addresses_sync.metrics__labeled_counter__glean_error_invalid_value}) AS addresses_sync__metrics__labeled_counter__glean_error_invalid_value ON ${addresses_sync.document_id} = ${addresses_sync__metrics__labeled_counter__glean_error_invalid_value.document_id} ;;
  }
}

explore: suggest__addresses_sync__metrics__labeled_counter__addresses_sync_incoming {
  hidden: yes
}

explore: suggest__addresses_sync__metrics__labeled_counter__addresses_sync_outgoing {
  hidden: yes
}

explore: suggest__addresses_sync__metrics__labeled_counter__glean_error_invalid_label {
  hidden: yes
}

explore: suggest__addresses_sync__metrics__labeled_counter__glean_error_invalid_overflow {
  hidden: yes
}

explore: suggest__addresses_sync__metrics__labeled_counter__glean_error_invalid_state {
  hidden: yes
}

explore: suggest__addresses_sync__metrics__labeled_counter__glean_error_invalid_value {
  hidden: yes
}