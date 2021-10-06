include: "/looker-hub/fenix/views/history_sync.view.lkml"

explore: history_sync {
  sql_always_where: ${history_sync.submission_date} >= '2010-01-01' ;;
  view_label: " History_Sync"
  description: "Explore for the history_sync ping. A ping sent for every history sync. It doesn't include the `client_id` because it reports a hashed version of the user's Firefox Account ID."
  view_name: history_sync

  always_filter: {
    filters: [
      channel: "mozdata.fenix.history^_sync",
      submission_date: "28 days",
    ]
  }

  join: history_sync__events {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${history_sync.events}) AS history_sync__events ON ${history_sync.document_id} = ${history_sync__events.document_id} ;;
  }

  join: history_sync__events__extra {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${history_sync.events__extra}) AS history_sync__events__extra ON ${history_sync.document_id} = ${history_sync__events__extra.document_id} ;;
  }

  join: history_sync__metrics__jwe {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${history_sync.metrics__jwe}) AS history_sync__metrics__jwe ON ${history_sync.document_id} = ${history_sync__metrics__jwe.document_id} ;;
  }

  join: history_sync__metrics__labeled_rate {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${history_sync.metrics__labeled_rate}) AS history_sync__metrics__labeled_rate ON ${history_sync.document_id} = ${history_sync__metrics__labeled_rate.document_id} ;;
  }

  join: history_sync__metrics__labeled_rate__value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${history_sync.metrics__labeled_rate__value}) AS history_sync__metrics__labeled_rate__value ON ${history_sync.document_id} = ${history_sync__metrics__labeled_rate__value.document_id} ;;
  }

  join: history_sync__metrics__labeled_string__history_sync_failure_reason {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${history_sync.metrics__labeled_string__history_sync_failure_reason}) AS history_sync__metrics__labeled_string__history_sync_failure_reason ON ${history_sync.document_id} = ${history_sync__metrics__labeled_string__history_sync_failure_reason.document_id} ;;
  }

  join: history_sync__metrics__text {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${history_sync.metrics__text}) AS history_sync__metrics__text ON ${history_sync.document_id} = ${history_sync__metrics__text.document_id} ;;
  }

  join: history_sync__metrics__url {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${history_sync.metrics__url}) AS history_sync__metrics__url ON ${history_sync.document_id} = ${history_sync__metrics__url.document_id} ;;
  }

  join: history_sync__ping_info__experiments {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${history_sync.ping_info__experiments}) AS history_sync__ping_info__experiments ON ${history_sync.document_id} = ${history_sync__ping_info__experiments.document_id} ;;
  }

  join: history_sync__metrics__labeled_counter__glean_error_invalid_label {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${history_sync.metrics__labeled_counter__glean_error_invalid_label}) AS history_sync__metrics__labeled_counter__glean_error_invalid_label ON ${history_sync.document_id} = ${history_sync__metrics__labeled_counter__glean_error_invalid_label.document_id} ;;
  }

  join: history_sync__metrics__labeled_counter__glean_error_invalid_overflow {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${history_sync.metrics__labeled_counter__glean_error_invalid_overflow}) AS history_sync__metrics__labeled_counter__glean_error_invalid_overflow ON ${history_sync.document_id} = ${history_sync__metrics__labeled_counter__glean_error_invalid_overflow.document_id} ;;
  }

  join: history_sync__metrics__labeled_counter__glean_error_invalid_state {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${history_sync.metrics__labeled_counter__glean_error_invalid_state}) AS history_sync__metrics__labeled_counter__glean_error_invalid_state ON ${history_sync.document_id} = ${history_sync__metrics__labeled_counter__glean_error_invalid_state.document_id} ;;
  }

  join: history_sync__metrics__labeled_counter__glean_error_invalid_value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${history_sync.metrics__labeled_counter__glean_error_invalid_value}) AS history_sync__metrics__labeled_counter__glean_error_invalid_value ON ${history_sync.document_id} = ${history_sync__metrics__labeled_counter__glean_error_invalid_value.document_id} ;;
  }

  join: history_sync__metrics__labeled_counter__history_sync_incoming {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${history_sync.metrics__labeled_counter__history_sync_incoming}) AS history_sync__metrics__labeled_counter__history_sync_incoming ON ${history_sync.document_id} = ${history_sync__metrics__labeled_counter__history_sync_incoming.document_id} ;;
  }

  join: history_sync__metrics__labeled_counter__history_sync_outgoing {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${history_sync.metrics__labeled_counter__history_sync_outgoing}) AS history_sync__metrics__labeled_counter__history_sync_outgoing ON ${history_sync.document_id} = ${history_sync__metrics__labeled_counter__history_sync_outgoing.document_id} ;;
  }
}

explore: suggest__history_sync__metrics__labeled_counter__glean_error_invalid_label {
  hidden: yes
}

explore: suggest__history_sync__metrics__labeled_counter__glean_error_invalid_overflow {
  hidden: yes
}

explore: suggest__history_sync__metrics__labeled_counter__glean_error_invalid_state {
  hidden: yes
}

explore: suggest__history_sync__metrics__labeled_counter__glean_error_invalid_value {
  hidden: yes
}

explore: suggest__history_sync__metrics__labeled_counter__history_sync_incoming {
  hidden: yes
}

explore: suggest__history_sync__metrics__labeled_counter__history_sync_outgoing {
  hidden: yes
}