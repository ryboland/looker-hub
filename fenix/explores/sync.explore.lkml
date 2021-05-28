include: "/looker-hub/fenix/views/sync.view.lkml"

explore: sync {
  sql_always_where: ${sync.submission_date} >= '2010-01-01' ;;
  view_name: sync

  always_filter: {
    filters: [
      channel: "mozdata.org^_mozilla^_firefox.sync",
      submission_date: "28 days",
    ]
  }

  join: sync__metrics__labeled_counter__glean_error_invalid_label {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(${sync.metrics__labeled_counter__glean_error_invalid_label}) AS sync__metrics__labeled_counter__glean_error_invalid_label ;; ;;
  }

  join: sync__metrics__labeled_counter__glean_error_invalid_overflow {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(${sync.metrics__labeled_counter__glean_error_invalid_overflow}) AS sync__metrics__labeled_counter__glean_error_invalid_overflow ;; ;;
  }

  join: sync__metrics__labeled_counter__glean_error_invalid_state {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(${sync.metrics__labeled_counter__glean_error_invalid_state}) AS sync__metrics__labeled_counter__glean_error_invalid_state ;; ;;
  }

  join: sync__metrics__labeled_counter__glean_error_invalid_value {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(${sync.metrics__labeled_counter__glean_error_invalid_value}) AS sync__metrics__labeled_counter__glean_error_invalid_value ;; ;;
  }
}