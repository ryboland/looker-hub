include: "/looker-hub/fenix/views/events.view.lkml"

explore: events {
  sql_always_where: ${events.submission_date} >= '2010-01-01' ;;
  view_name: events

  always_filter: {
    filters: [
      channel: "mozdata.org^_mozilla^_firefox.events",
      submission_date: "28 days",
    ]
  }

  join: events__metrics__labeled_counter__glean_error_invalid_label {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(${events.metrics__labeled_counter__glean_error_invalid_label}) AS events__metrics__labeled_counter__glean_error_invalid_label ;;
  }

  join: events__metrics__labeled_counter__glean_error_invalid_overflow {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(${events.metrics__labeled_counter__glean_error_invalid_overflow}) AS events__metrics__labeled_counter__glean_error_invalid_overflow ;;
  }

  join: events__metrics__labeled_counter__glean_error_invalid_state {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(${events.metrics__labeled_counter__glean_error_invalid_state}) AS events__metrics__labeled_counter__glean_error_invalid_state ;;
  }

  join: events__metrics__labeled_counter__glean_error_invalid_value {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(${events.metrics__labeled_counter__glean_error_invalid_value}) AS events__metrics__labeled_counter__glean_error_invalid_value ;;
  }

  join: suggest__events__metrics__labeled_counter__glean_error_invalid_label {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(${events.events__metrics__labeled_counter__glean_error_invalid_label}) AS suggest__events__metrics__labeled_counter__glean_error_invalid_label ;;
  }

  join: suggest__events__metrics__labeled_counter__glean_error_invalid_overflow {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(${events.events__metrics__labeled_counter__glean_error_invalid_overflow}) AS suggest__events__metrics__labeled_counter__glean_error_invalid_overflow ;;
  }

  join: suggest__events__metrics__labeled_counter__glean_error_invalid_state {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(${events.events__metrics__labeled_counter__glean_error_invalid_state}) AS suggest__events__metrics__labeled_counter__glean_error_invalid_state ;;
  }

  join: suggest__events__metrics__labeled_counter__glean_error_invalid_value {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(${events.events__metrics__labeled_counter__glean_error_invalid_value}) AS suggest__events__metrics__labeled_counter__glean_error_invalid_value ;;
  }
}