include: "/looker-hub/fenix/views/bookmarks_sync.view.lkml"

explore: bookmarks_sync {
  sql_always_where: ${bookmarks_sync.submission_date} >= '2010-01-01' ;;
  view_label: " Bookmarks_Sync"
  description: "Explore for the bookmarks_sync ping. A ping sent for every bookmarks sync. It doesn't include the `client_id` because it reports a hashed version of the user's Firefox Account ID."
  view_name: bookmarks_sync

  always_filter: {
    filters: [
      channel: "moz-fx-data-shared-prod.fenix.bookmarks^_sync",
      submission_date: "28 days",
    ]
  }

  join: bookmarks_sync__events {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${bookmarks_sync.events}) AS bookmarks_sync__events ;;
  }

  join: bookmarks_sync__events__extra {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${bookmarks_sync__events.extra}) AS bookmarks_sync__events__extra ;;
  }

  join: bookmarks_sync__metrics__jwe {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${bookmarks_sync.metrics__jwe}) AS bookmarks_sync__metrics__jwe ;;
  }

  join: bookmarks_sync__metrics__labeled_rate {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${bookmarks_sync.metrics__labeled_rate}) AS bookmarks_sync__metrics__labeled_rate ;;
  }

  join: bookmarks_sync__metrics__labeled_rate__value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${bookmarks_sync__metrics__labeled_rate.value}) AS bookmarks_sync__metrics__labeled_rate__value ;;
  }

  join: bookmarks_sync__metrics__labeled_string__bookmarks_sync_failure_reason {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${bookmarks_sync.metrics__labeled_string__bookmarks_sync_failure_reason}) AS bookmarks_sync__metrics__labeled_string__bookmarks_sync_failure_reason ;;
  }

  join: bookmarks_sync__metrics__text {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${bookmarks_sync.metrics__text}) AS bookmarks_sync__metrics__text ;;
  }

  join: bookmarks_sync__metrics__url {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${bookmarks_sync.metrics__url}) AS bookmarks_sync__metrics__url ;;
  }

  join: bookmarks_sync__ping_info__experiments {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${bookmarks_sync.ping_info__experiments}) AS bookmarks_sync__ping_info__experiments ;;
  }

  join: bookmarks_sync__metrics__labeled_counter__bookmarks_sync_incoming {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${bookmarks_sync.metrics__labeled_counter__bookmarks_sync_incoming}) AS bookmarks_sync__metrics__labeled_counter__bookmarks_sync_incoming ON ${bookmarks_sync.document_id} = ${bookmarks_sync__metrics__labeled_counter__bookmarks_sync_incoming.document_id} ;;
  }

  join: bookmarks_sync__metrics__labeled_counter__bookmarks_sync_outgoing {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${bookmarks_sync.metrics__labeled_counter__bookmarks_sync_outgoing}) AS bookmarks_sync__metrics__labeled_counter__bookmarks_sync_outgoing ON ${bookmarks_sync.document_id} = ${bookmarks_sync__metrics__labeled_counter__bookmarks_sync_outgoing.document_id} ;;
  }

  join: bookmarks_sync__metrics__labeled_counter__bookmarks_sync_remote_tree_problems {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${bookmarks_sync.metrics__labeled_counter__bookmarks_sync_remote_tree_problems}) AS bookmarks_sync__metrics__labeled_counter__bookmarks_sync_remote_tree_problems ON ${bookmarks_sync.document_id} = ${bookmarks_sync__metrics__labeled_counter__bookmarks_sync_remote_tree_problems.document_id} ;;
  }

  join: bookmarks_sync__metrics__labeled_counter__glean_error_invalid_label {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${bookmarks_sync.metrics__labeled_counter__glean_error_invalid_label}) AS bookmarks_sync__metrics__labeled_counter__glean_error_invalid_label ON ${bookmarks_sync.document_id} = ${bookmarks_sync__metrics__labeled_counter__glean_error_invalid_label.document_id} ;;
  }

  join: bookmarks_sync__metrics__labeled_counter__glean_error_invalid_overflow {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${bookmarks_sync.metrics__labeled_counter__glean_error_invalid_overflow}) AS bookmarks_sync__metrics__labeled_counter__glean_error_invalid_overflow ON ${bookmarks_sync.document_id} = ${bookmarks_sync__metrics__labeled_counter__glean_error_invalid_overflow.document_id} ;;
  }

  join: bookmarks_sync__metrics__labeled_counter__glean_error_invalid_state {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${bookmarks_sync.metrics__labeled_counter__glean_error_invalid_state}) AS bookmarks_sync__metrics__labeled_counter__glean_error_invalid_state ON ${bookmarks_sync.document_id} = ${bookmarks_sync__metrics__labeled_counter__glean_error_invalid_state.document_id} ;;
  }

  join: bookmarks_sync__metrics__labeled_counter__glean_error_invalid_value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${bookmarks_sync.metrics__labeled_counter__glean_error_invalid_value}) AS bookmarks_sync__metrics__labeled_counter__glean_error_invalid_value ON ${bookmarks_sync.document_id} = ${bookmarks_sync__metrics__labeled_counter__glean_error_invalid_value.document_id} ;;
  }
}

explore: suggest__bookmarks_sync__metrics__labeled_counter__bookmarks_sync_incoming {
  hidden: yes
}

explore: suggest__bookmarks_sync__metrics__labeled_counter__bookmarks_sync_outgoing {
  hidden: yes
}

explore: suggest__bookmarks_sync__metrics__labeled_counter__bookmarks_sync_remote_tree_problems {
  hidden: yes
}

explore: suggest__bookmarks_sync__metrics__labeled_counter__glean_error_invalid_label {
  hidden: yes
}

explore: suggest__bookmarks_sync__metrics__labeled_counter__glean_error_invalid_overflow {
  hidden: yes
}

explore: suggest__bookmarks_sync__metrics__labeled_counter__glean_error_invalid_state {
  hidden: yes
}

explore: suggest__bookmarks_sync__metrics__labeled_counter__glean_error_invalid_value {
  hidden: yes
}