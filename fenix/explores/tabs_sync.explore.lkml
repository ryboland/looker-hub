include: "/looker-hub/fenix/views/tabs_sync.view.lkml"

explore: tabs_sync {
  sql_always_where: ${tabs_sync.submission_date} >= '2010-01-01' ;;
  view_label: " Tabs_Sync"
  description: "Explore for the tabs_sync ping. A ping sent for every Tabs engine sync. It doesn't include the `client_id` because it reports a hashed version of the user's Firefox Account ID."
  view_name: tabs_sync

  always_filter: {
    filters: [
      channel: "mozdata.fenix.tabs^_sync",
      submission_date: "28 days",
    ]
  }

  join: tabs_sync__events {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${tabs_sync.events}) AS tabs_sync__events ;;
  }

  join: tabs_sync__events__extra {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${tabs_sync__events.events__extra}) AS tabs_sync__events__extra ;;
  }

  join: tabs_sync__metrics__jwe {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${tabs_sync__metrics.metrics__jwe}) AS tabs_sync__metrics__jwe ;;
  }

  join: tabs_sync__metrics__labeled_rate {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${tabs_sync__metrics.metrics__labeled_rate}) AS tabs_sync__metrics__labeled_rate ;;
  }

  join: tabs_sync__metrics__labeled_rate__value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${tabs_sync__metrics__labeled_rate.metrics__labeled_rate__value}) AS tabs_sync__metrics__labeled_rate__value ;;
  }

  join: tabs_sync__metrics__labeled_string__tabs_sync_failure_reason {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${tabs_sync__metrics__labeled_string.metrics__labeled_string__tabs_sync_failure_reason}) AS tabs_sync__metrics__labeled_string__tabs_sync_failure_reason ;;
  }

  join: tabs_sync__metrics__text {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${tabs_sync__metrics.metrics__text}) AS tabs_sync__metrics__text ;;
  }

  join: tabs_sync__metrics__url {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${tabs_sync__metrics.metrics__url}) AS tabs_sync__metrics__url ;;
  }

  join: tabs_sync__ping_info__experiments {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${tabs_sync__ping_info.ping_info__experiments}) AS tabs_sync__ping_info__experiments ;;
  }

  join: tabs_sync__metrics__labeled_counter__glean_error_invalid_label {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${tabs_sync.metrics__labeled_counter__glean_error_invalid_label}) AS tabs_sync__metrics__labeled_counter__glean_error_invalid_label ON ${tabs_sync.document_id} = ${tabs_sync__metrics__labeled_counter__glean_error_invalid_label.document_id} ;;
  }

  join: tabs_sync__metrics__labeled_counter__glean_error_invalid_overflow {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${tabs_sync.metrics__labeled_counter__glean_error_invalid_overflow}) AS tabs_sync__metrics__labeled_counter__glean_error_invalid_overflow ON ${tabs_sync.document_id} = ${tabs_sync__metrics__labeled_counter__glean_error_invalid_overflow.document_id} ;;
  }

  join: tabs_sync__metrics__labeled_counter__glean_error_invalid_state {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${tabs_sync.metrics__labeled_counter__glean_error_invalid_state}) AS tabs_sync__metrics__labeled_counter__glean_error_invalid_state ON ${tabs_sync.document_id} = ${tabs_sync__metrics__labeled_counter__glean_error_invalid_state.document_id} ;;
  }

  join: tabs_sync__metrics__labeled_counter__glean_error_invalid_value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${tabs_sync.metrics__labeled_counter__glean_error_invalid_value}) AS tabs_sync__metrics__labeled_counter__glean_error_invalid_value ON ${tabs_sync.document_id} = ${tabs_sync__metrics__labeled_counter__glean_error_invalid_value.document_id} ;;
  }

  join: tabs_sync__metrics__labeled_counter__tabs_sync_incoming {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${tabs_sync.metrics__labeled_counter__tabs_sync_incoming}) AS tabs_sync__metrics__labeled_counter__tabs_sync_incoming ON ${tabs_sync.document_id} = ${tabs_sync__metrics__labeled_counter__tabs_sync_incoming.document_id} ;;
  }

  join: tabs_sync__metrics__labeled_counter__tabs_sync_outgoing {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${tabs_sync.metrics__labeled_counter__tabs_sync_outgoing}) AS tabs_sync__metrics__labeled_counter__tabs_sync_outgoing ON ${tabs_sync.document_id} = ${tabs_sync__metrics__labeled_counter__tabs_sync_outgoing.document_id} ;;
  }
}

explore: suggest__tabs_sync__metrics__labeled_counter__glean_error_invalid_label {
  hidden: yes
}

explore: suggest__tabs_sync__metrics__labeled_counter__glean_error_invalid_overflow {
  hidden: yes
}

explore: suggest__tabs_sync__metrics__labeled_counter__glean_error_invalid_state {
  hidden: yes
}

explore: suggest__tabs_sync__metrics__labeled_counter__glean_error_invalid_value {
  hidden: yes
}

explore: suggest__tabs_sync__metrics__labeled_counter__tabs_sync_incoming {
  hidden: yes
}

explore: suggest__tabs_sync__metrics__labeled_counter__tabs_sync_outgoing {
  hidden: yes
}