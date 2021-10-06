include: "/looker-hub/focus_ios/views/metrics.view.lkml"

explore: metrics {
  sql_always_where: ${metrics.submission_date} >= '2010-01-01' ;;
  view_label: " Metrics"
  description: "Explore for the metrics ping. The `metrics` ping is intended for all of the metrics that are explicitly set by the application or are included in the application's `metrics.yaml` file (except events). The reported data is tied to the ping's *measurement window*, which is the time between the collection of two `metrics` ping. Ideally, this window is expected to be about 24 hours, given that the collection is scheduled daily at 4AM. Data in the `ping_info` section of the ping can be used to infer the length of this window."
  view_name: metrics

  always_filter: {
    filters: [
      submission_date: "28 days",
    ]
  }

  join: metrics__events {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.events}) AS metrics__events ;;
  }

  join: metrics__events__extra {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics__events.events__extra}) AS metrics__events__extra ;;
  }

  join: metrics__metrics__jwe {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics__metrics.metrics__jwe}) AS metrics__metrics__jwe ;;
  }

  join: metrics__metrics__labeled_rate {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics__metrics.metrics__labeled_rate}) AS metrics__metrics__labeled_rate ;;
  }

  join: metrics__metrics__labeled_rate__value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics__metrics__labeled_rate.metrics__labeled_rate__value}) AS metrics__metrics__labeled_rate__value ;;
  }

  join: metrics__metrics__memory_distribution__glean_database_size__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics__metrics__memory_distribution__glean_database_size.metrics__memory_distribution__glean_database_size__values}) AS metrics__metrics__memory_distribution__glean_database_size__values ;;
  }

  join: metrics__metrics__memory_distribution__glean_upload_discarded_exceeding_pings_size__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics__metrics__memory_distribution__glean_upload_discarded_exceeding_pings_size.metrics__memory_distribution__glean_upload_discarded_exceeding_pings_size__values}) AS metrics__metrics__memory_distribution__glean_upload_discarded_exceeding_pings_size__values ;;
  }

  join: metrics__metrics__memory_distribution__glean_upload_pending_pings_directory_size__values {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics__metrics__memory_distribution__glean_upload_pending_pings_directory_size.metrics__memory_distribution__glean_upload_pending_pings_directory_size__values}) AS metrics__metrics__memory_distribution__glean_upload_pending_pings_directory_size__values ;;
  }

  join: metrics__metrics__text {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics__metrics.metrics__text}) AS metrics__metrics__text ;;
  }

  join: metrics__metrics__url {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics__metrics.metrics__url}) AS metrics__metrics__url ;;
  }

  join: metrics__ping_info__experiments {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics__ping_info.ping_info__experiments}) AS metrics__ping_info__experiments ;;
  }

  join: metrics__metrics__labeled_counter__glean_error_invalid_label {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__glean_error_invalid_label}) AS metrics__metrics__labeled_counter__glean_error_invalid_label ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__glean_error_invalid_label.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__glean_error_invalid_overflow {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__glean_error_invalid_overflow}) AS metrics__metrics__labeled_counter__glean_error_invalid_overflow ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__glean_error_invalid_overflow.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__glean_error_invalid_state {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__glean_error_invalid_state}) AS metrics__metrics__labeled_counter__glean_error_invalid_state ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__glean_error_invalid_state.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__glean_error_invalid_value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__glean_error_invalid_value}) AS metrics__metrics__labeled_counter__glean_error_invalid_value ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__glean_error_invalid_value.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__glean_upload_ping_upload_failure {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__glean_upload_ping_upload_failure}) AS metrics__metrics__labeled_counter__glean_upload_ping_upload_failure ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__glean_upload_ping_upload_failure.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__glean_validation_pings_submitted {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__glean_validation_pings_submitted}) AS metrics__metrics__labeled_counter__glean_validation_pings_submitted ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__glean_validation_pings_submitted.document_id} ;;
  }

  join: metrics__metrics__labeled_counter__shortcuts_shortcut_removed_counter {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${metrics.metrics__labeled_counter__shortcuts_shortcut_removed_counter}) AS metrics__metrics__labeled_counter__shortcuts_shortcut_removed_counter ON ${metrics.document_id} = ${metrics__metrics__labeled_counter__shortcuts_shortcut_removed_counter.document_id} ;;
  }
}

explore: suggest__metrics__metrics__labeled_counter__glean_error_invalid_label {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__glean_error_invalid_overflow {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__glean_error_invalid_state {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__glean_error_invalid_value {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__glean_upload_ping_upload_failure {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__glean_validation_pings_submitted {
  hidden: yes
}

explore: suggest__metrics__metrics__labeled_counter__shortcuts_shortcut_removed_counter {
  hidden: yes
}