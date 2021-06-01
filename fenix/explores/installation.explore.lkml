include: "/looker-hub/fenix/views/installation.view.lkml"

explore: installation {
  sql_always_where: ${installation.submission_date} >= '2010-01-01' ;;
  view_name: installation

  always_filter: {
    filters: [
      channel: "mozdata.org^_mozilla^_firefox.installation",
      submission_date: "28 days",
    ]
  }

  join: installation__metrics__labeled_counter__glean_error_invalid_label {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(${installation.metrics__labeled_counter__glean_error_invalid_label}) AS installation__metrics__labeled_counter__glean_error_invalid_label ;;
  }

  join: installation__metrics__labeled_counter__glean_error_invalid_overflow {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(${installation.metrics__labeled_counter__glean_error_invalid_overflow}) AS installation__metrics__labeled_counter__glean_error_invalid_overflow ;;
  }

  join: installation__metrics__labeled_counter__glean_error_invalid_state {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(${installation.metrics__labeled_counter__glean_error_invalid_state}) AS installation__metrics__labeled_counter__glean_error_invalid_state ;;
  }

  join: installation__metrics__labeled_counter__glean_error_invalid_value {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(${installation.metrics__labeled_counter__glean_error_invalid_value}) AS installation__metrics__labeled_counter__glean_error_invalid_value ;;
  }

  join: suggest__installation__metrics__labeled_counter__glean_error_invalid_label {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(${installation.installation__metrics__labeled_counter__glean_error_invalid_label}) AS suggest__installation__metrics__labeled_counter__glean_error_invalid_label ;;
  }

  join: suggest__installation__metrics__labeled_counter__glean_error_invalid_overflow {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(${installation.installation__metrics__labeled_counter__glean_error_invalid_overflow}) AS suggest__installation__metrics__labeled_counter__glean_error_invalid_overflow ;;
  }

  join: suggest__installation__metrics__labeled_counter__glean_error_invalid_state {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(${installation.installation__metrics__labeled_counter__glean_error_invalid_state}) AS suggest__installation__metrics__labeled_counter__glean_error_invalid_state ;;
  }

  join: suggest__installation__metrics__labeled_counter__glean_error_invalid_value {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(${installation.installation__metrics__labeled_counter__glean_error_invalid_value}) AS suggest__installation__metrics__labeled_counter__glean_error_invalid_value ;;
  }
}