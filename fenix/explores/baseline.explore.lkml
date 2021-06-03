include: "/looker-hub/fenix/views/baseline.view.lkml"

explore: baseline {
  sql_always_where: ${baseline.submission_date} >= '2010-01-01' ;;
  description: "Explore for the baseline ping. This ping is intended to provide metrics that are managed by the library itself, and not explicitly set by the application or included in the application's `metrics.yaml` file. The `baseline` ping is automatically sent when the application is moved to the background."
  view_name: baseline

  always_filter: {
    filters: [
      channel: "mozdata.org^_mozilla^_firefox.baseline",
      submission_date: "28 days",
    ]
  }

  join: baseline__metrics__labeled_counter__browser_search_ad_clicks {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(${baseline.metrics__labeled_counter__browser_search_ad_clicks}) AS baseline__metrics__labeled_counter__browser_search_ad_clicks ;;
  }

  join: baseline__metrics__labeled_counter__browser_search_in_content {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(${baseline.metrics__labeled_counter__browser_search_in_content}) AS baseline__metrics__labeled_counter__browser_search_in_content ;;
  }

  join: baseline__metrics__labeled_counter__browser_search_with_ads {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(${baseline.metrics__labeled_counter__browser_search_with_ads}) AS baseline__metrics__labeled_counter__browser_search_with_ads ;;
  }

  join: baseline__metrics__labeled_counter__glean_error_invalid_label {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(${baseline.metrics__labeled_counter__glean_error_invalid_label}) AS baseline__metrics__labeled_counter__glean_error_invalid_label ;;
  }

  join: baseline__metrics__labeled_counter__glean_error_invalid_overflow {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(${baseline.metrics__labeled_counter__glean_error_invalid_overflow}) AS baseline__metrics__labeled_counter__glean_error_invalid_overflow ;;
  }

  join: baseline__metrics__labeled_counter__glean_error_invalid_state {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(${baseline.metrics__labeled_counter__glean_error_invalid_state}) AS baseline__metrics__labeled_counter__glean_error_invalid_state ;;
  }

  join: baseline__metrics__labeled_counter__glean_error_invalid_value {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(${baseline.metrics__labeled_counter__glean_error_invalid_value}) AS baseline__metrics__labeled_counter__glean_error_invalid_value ;;
  }

  join: baseline__metrics__labeled_counter__glean_validation_pings_submitted {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(${baseline.metrics__labeled_counter__glean_validation_pings_submitted}) AS baseline__metrics__labeled_counter__glean_validation_pings_submitted ;;
  }

  join: baseline__metrics__labeled_counter__metrics_search_count {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(${baseline.metrics__labeled_counter__metrics_search_count}) AS baseline__metrics__labeled_counter__metrics_search_count ;;
  }
}

explore: suggest__baseline__metrics__labeled_counter__browser_search_ad_clicks {
  hidden: yes
}

explore: suggest__baseline__metrics__labeled_counter__browser_search_in_content {
  hidden: yes
}

explore: suggest__baseline__metrics__labeled_counter__browser_search_with_ads {
  hidden: yes
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

explore: suggest__baseline__metrics__labeled_counter__metrics_search_count {
  hidden: yes
}