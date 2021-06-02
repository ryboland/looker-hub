include: "/looker-hub/fenix/views/baseline.view.lkml"

explore: baseline {
  sql_always_where: ${baseline.submission_date} >= '2010-01-01' ;;
  view_name: baseline

  always_filter: {
    filters: [
      channel: "mozdata.org^_mozilla^_firefox.baseline",
      submission_date: "28 days",
    ]
  }

  join: baseline__metrics__labeled_counter__browser_search_ad_clicks {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${baseline.metrics__labeled_counter__browser_search_ad_clicks}) AS baseline__metrics__labeled_counter__browser_search_ad_clicks ;;
    sql_on: ${baseline.client_info__client_id} = ${baseline__metrics__labeled_counter__browser_search_ad_clicks.client_id} ;;
  }

  join: baseline__metrics__labeled_counter__browser_search_in_content {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${baseline.metrics__labeled_counter__browser_search_in_content}) AS baseline__metrics__labeled_counter__browser_search_in_content ;;
    sql_on: ${baseline.client_info__client_id} = ${baseline__metrics__labeled_counter__browser_search_in_content.client_id} ;;
  }

  join: baseline__metrics__labeled_counter__browser_search_with_ads {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${baseline.metrics__labeled_counter__browser_search_with_ads}) AS baseline__metrics__labeled_counter__browser_search_with_ads ;;
    sql_on: ${baseline.client_info__client_id} = ${baseline__metrics__labeled_counter__browser_search_with_ads.client_id} ;;
  }

  join: baseline__metrics__labeled_counter__glean_error_invalid_label {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${baseline.metrics__labeled_counter__glean_error_invalid_label}) AS baseline__metrics__labeled_counter__glean_error_invalid_label ;;
    sql_on: ${baseline.client_info__client_id} = ${baseline__metrics__labeled_counter__glean_error_invalid_label.client_id} ;;
  }

  join: baseline__metrics__labeled_counter__glean_error_invalid_overflow {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${baseline.metrics__labeled_counter__glean_error_invalid_overflow}) AS baseline__metrics__labeled_counter__glean_error_invalid_overflow ;;
    sql_on: ${baseline.client_info__client_id} = ${baseline__metrics__labeled_counter__glean_error_invalid_overflow.client_id} ;;
  }

  join: baseline__metrics__labeled_counter__glean_error_invalid_state {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${baseline.metrics__labeled_counter__glean_error_invalid_state}) AS baseline__metrics__labeled_counter__glean_error_invalid_state ;;
    sql_on: ${baseline.client_info__client_id} = ${baseline__metrics__labeled_counter__glean_error_invalid_state.client_id} ;;
  }

  join: baseline__metrics__labeled_counter__glean_error_invalid_value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${baseline.metrics__labeled_counter__glean_error_invalid_value}) AS baseline__metrics__labeled_counter__glean_error_invalid_value ;;
    sql_on: ${baseline.client_info__client_id} = ${baseline__metrics__labeled_counter__glean_error_invalid_value.client_id} ;;
  }

  join: baseline__metrics__labeled_counter__glean_validation_pings_submitted {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${baseline.metrics__labeled_counter__glean_validation_pings_submitted}) AS baseline__metrics__labeled_counter__glean_validation_pings_submitted ;;
    sql_on: ${baseline.client_info__client_id} = ${baseline__metrics__labeled_counter__glean_validation_pings_submitted.client_id} ;;
  }

  join: baseline__metrics__labeled_counter__metrics_search_count {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${baseline.metrics__labeled_counter__metrics_search_count}) AS baseline__metrics__labeled_counter__metrics_search_count ;;
    sql_on: ${baseline.client_info__client_id} = ${baseline__metrics__labeled_counter__metrics_search_count.client_id} ;;
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