include: "/looker-hub/focus_android/views/baseline.view.lkml"

explore: baseline {
  sql_always_where: ${baseline.submission_date} >= '2010-01-01' ;;
  view_label: " Baseline"
  description: "Explore for the baseline ping. This ping is intended to provide metrics that are managed by the library itself, and not explicitly set by the application or included in the application's `metrics.yaml` file. The `baseline` ping is automatically sent when the application is moved to the background."
  view_name: baseline

  always_filter: {
    filters: [
      submission_date: "28 days",
    ]
  }

  join: baseline__events {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${baseline.events}) AS baseline__events ON ${baseline.document_id} = ${baseline__events.document_id} ;;
  }

  join: baseline__events__extra {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${baseline.events__extra}) AS baseline__events__extra ON ${baseline.document_id} = ${baseline__events__extra.document_id} ;;
  }

  join: baseline__metrics__jwe {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${baseline.metrics__jwe}) AS baseline__metrics__jwe ON ${baseline.document_id} = ${baseline__metrics__jwe.document_id} ;;
  }

  join: baseline__metrics__labeled_rate {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${baseline.metrics__labeled_rate}) AS baseline__metrics__labeled_rate ON ${baseline.document_id} = ${baseline__metrics__labeled_rate.document_id} ;;
  }

  join: baseline__metrics__labeled_rate__value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${baseline.metrics__labeled_rate__value}) AS baseline__metrics__labeled_rate__value ON ${baseline.document_id} = ${baseline__metrics__labeled_rate__value.document_id} ;;
  }

  join: baseline__metrics__text {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${baseline.metrics__text}) AS baseline__metrics__text ON ${baseline.document_id} = ${baseline__metrics__text.document_id} ;;
  }

  join: baseline__metrics__url {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${baseline.metrics__url}) AS baseline__metrics__url ON ${baseline.document_id} = ${baseline__metrics__url.document_id} ;;
  }

  join: baseline__ping_info__experiments {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${baseline.ping_info__experiments}) AS baseline__ping_info__experiments ON ${baseline.document_id} = ${baseline__ping_info__experiments.document_id} ;;
  }

  join: baseline__metrics__labeled_counter__glean_error_invalid_label {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${baseline.metrics__labeled_counter__glean_error_invalid_label}) AS baseline__metrics__labeled_counter__glean_error_invalid_label ON ${baseline.document_id} = ${baseline__metrics__labeled_counter__glean_error_invalid_label.document_id} ;;
  }

  join: baseline__metrics__labeled_counter__glean_error_invalid_overflow {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${baseline.metrics__labeled_counter__glean_error_invalid_overflow}) AS baseline__metrics__labeled_counter__glean_error_invalid_overflow ON ${baseline.document_id} = ${baseline__metrics__labeled_counter__glean_error_invalid_overflow.document_id} ;;
  }

  join: baseline__metrics__labeled_counter__glean_error_invalid_state {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${baseline.metrics__labeled_counter__glean_error_invalid_state}) AS baseline__metrics__labeled_counter__glean_error_invalid_state ON ${baseline.document_id} = ${baseline__metrics__labeled_counter__glean_error_invalid_state.document_id} ;;
  }

  join: baseline__metrics__labeled_counter__glean_error_invalid_value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${baseline.metrics__labeled_counter__glean_error_invalid_value}) AS baseline__metrics__labeled_counter__glean_error_invalid_value ON ${baseline.document_id} = ${baseline__metrics__labeled_counter__glean_error_invalid_value.document_id} ;;
  }

  join: baseline__metrics__labeled_counter__glean_validation_pings_submitted {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${baseline.metrics__labeled_counter__glean_validation_pings_submitted}) AS baseline__metrics__labeled_counter__glean_validation_pings_submitted ON ${baseline.document_id} = ${baseline__metrics__labeled_counter__glean_validation_pings_submitted.document_id} ;;
  }
}

explore: suggest__baseline__metrics__labeled_counter__glean_error_invalid_label {
  hidden: yes
}

explore: suggest__baseline__metrics__labeled_counter__glean_error_invalid_overflow {
  hidden: yes
}

explore: suggest__baseline__metrics__labeled_counter__glean_error_invalid_state {
  hidden: yes
}

explore: suggest__baseline__metrics__labeled_counter__glean_error_invalid_value {
  hidden: yes
}

explore: suggest__baseline__metrics__labeled_counter__glean_validation_pings_submitted {
  hidden: yes
}