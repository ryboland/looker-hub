include: "/looker-hub/fenix/views/creditcards_sync.view.lkml"

explore: creditcards_sync {
  sql_always_where: ${creditcards_sync.submission_date} >= '2010-01-01' ;;
  view_label: " Creditcards_Sync"
  description: "Explore for the creditcards_sync ping. A ping sent for every Credit Cards engine sync. It doesn't include the `client_id` because it reports a hashed version of the user's Firefox Account ID."
  view_name: creditcards_sync

  always_filter: {
    filters: [
      channel: "mozdata.fenix.creditcards^_sync",
      submission_date: "28 days",
    ]
  }

  join: creditcards_sync__events {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${creditcards_sync.events}) AS creditcards_sync__events ;;
  }

  join: creditcards_sync__events__extra {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${creditcards_sync__events.events__extra}) AS creditcards_sync__events__extra ;;
  }

  join: creditcards_sync__metrics__jwe {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${creditcards_sync__metrics.metrics__jwe}) AS creditcards_sync__metrics__jwe ;;
  }

  join: creditcards_sync__metrics__labeled_rate {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${creditcards_sync__metrics.metrics__labeled_rate}) AS creditcards_sync__metrics__labeled_rate ;;
  }

  join: creditcards_sync__metrics__labeled_rate__value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${creditcards_sync__metrics__labeled_rate.metrics__labeled_rate__value}) AS creditcards_sync__metrics__labeled_rate__value ;;
  }

  join: creditcards_sync__metrics__labeled_string__creditcards_sync_failure_reason {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${creditcards_sync__metrics__labeled_string.metrics__labeled_string__creditcards_sync_failure_reason}) AS creditcards_sync__metrics__labeled_string__creditcards_sync_failure_reason ;;
  }

  join: creditcards_sync__metrics__text {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${creditcards_sync__metrics.metrics__text}) AS creditcards_sync__metrics__text ;;
  }

  join: creditcards_sync__metrics__url {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${creditcards_sync__metrics.metrics__url}) AS creditcards_sync__metrics__url ;;
  }

  join: creditcards_sync__ping_info__experiments {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${creditcards_sync__ping_info.ping_info__experiments}) AS creditcards_sync__ping_info__experiments ;;
  }

  join: creditcards_sync__metrics__labeled_counter__creditcards_sync_incoming {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${creditcards_sync.metrics__labeled_counter__creditcards_sync_incoming}) AS creditcards_sync__metrics__labeled_counter__creditcards_sync_incoming ON ${creditcards_sync.document_id} = ${creditcards_sync__metrics__labeled_counter__creditcards_sync_incoming.document_id} ;;
  }

  join: creditcards_sync__metrics__labeled_counter__creditcards_sync_outgoing {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${creditcards_sync.metrics__labeled_counter__creditcards_sync_outgoing}) AS creditcards_sync__metrics__labeled_counter__creditcards_sync_outgoing ON ${creditcards_sync.document_id} = ${creditcards_sync__metrics__labeled_counter__creditcards_sync_outgoing.document_id} ;;
  }

  join: creditcards_sync__metrics__labeled_counter__glean_error_invalid_label {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${creditcards_sync.metrics__labeled_counter__glean_error_invalid_label}) AS creditcards_sync__metrics__labeled_counter__glean_error_invalid_label ON ${creditcards_sync.document_id} = ${creditcards_sync__metrics__labeled_counter__glean_error_invalid_label.document_id} ;;
  }

  join: creditcards_sync__metrics__labeled_counter__glean_error_invalid_overflow {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${creditcards_sync.metrics__labeled_counter__glean_error_invalid_overflow}) AS creditcards_sync__metrics__labeled_counter__glean_error_invalid_overflow ON ${creditcards_sync.document_id} = ${creditcards_sync__metrics__labeled_counter__glean_error_invalid_overflow.document_id} ;;
  }

  join: creditcards_sync__metrics__labeled_counter__glean_error_invalid_state {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${creditcards_sync.metrics__labeled_counter__glean_error_invalid_state}) AS creditcards_sync__metrics__labeled_counter__glean_error_invalid_state ON ${creditcards_sync.document_id} = ${creditcards_sync__metrics__labeled_counter__glean_error_invalid_state.document_id} ;;
  }

  join: creditcards_sync__metrics__labeled_counter__glean_error_invalid_value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${creditcards_sync.metrics__labeled_counter__glean_error_invalid_value}) AS creditcards_sync__metrics__labeled_counter__glean_error_invalid_value ON ${creditcards_sync.document_id} = ${creditcards_sync__metrics__labeled_counter__glean_error_invalid_value.document_id} ;;
  }
}

explore: suggest__creditcards_sync__metrics__labeled_counter__creditcards_sync_incoming {
  hidden: yes
}

explore: suggest__creditcards_sync__metrics__labeled_counter__creditcards_sync_outgoing {
  hidden: yes
}

explore: suggest__creditcards_sync__metrics__labeled_counter__glean_error_invalid_label {
  hidden: yes
}

explore: suggest__creditcards_sync__metrics__labeled_counter__glean_error_invalid_overflow {
  hidden: yes
}

explore: suggest__creditcards_sync__metrics__labeled_counter__glean_error_invalid_state {
  hidden: yes
}

explore: suggest__creditcards_sync__metrics__labeled_counter__glean_error_invalid_value {
  hidden: yes
}