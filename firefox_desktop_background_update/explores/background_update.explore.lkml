include: "/looker-hub/firefox_desktop_background_update/views/background_update.view.lkml"

explore: background_update {
  sql_always_where: ${background_update.submission_date} >= '2010-01-01' ;;
  view_label: " Background_Update"
  description: "Explore for the background_update ping. This ping measures the technical health of the background update system. Said system downloads and processes updates when Firefox is not running. It is expected that this ping will be analyzed by humans to gain confidence in the implementation as the staged rollout of the system proceeds to the release channel, before settling into an automated analysis to detect spikes in background update failure rates. This ping will also help to characterize the update-related settings of our user population. Right now the background update system, and therefore this ping, is restricted to Windows. This ping is submitted only by the background update task. It should be submitted once per background update task invocation. The expected schedule is every 7 hours, controlled by the pref `app.update.background.interval`, and subject to scheduling decisions made by the OS."
  view_name: background_update

  always_filter: {
    filters: [
      submission_date: "28 days",
    ]
  }

  join: background_update__events {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${background_update.events}) AS background_update__events ;;
  }

  join: background_update__events__extra {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${background_update__events.extra}) AS background_update__events__extra ;;
  }

  join: background_update__metrics__jwe {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${background_update.metrics__jwe}) AS background_update__metrics__jwe ;;
  }

  join: background_update__metrics__labeled_rate {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${background_update.metrics__labeled_rate}) AS background_update__metrics__labeled_rate ;;
  }

  join: background_update__metrics__labeled_rate__value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${background_update__metrics__labeled_rate.value}) AS background_update__metrics__labeled_rate__value ;;
  }

  join: background_update__metrics__text {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${background_update.metrics__text}) AS background_update__metrics__text ;;
  }

  join: background_update__metrics__url {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${background_update.metrics__url}) AS background_update__metrics__url ;;
  }

  join: background_update__ping_info__experiments {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${background_update.ping_info__experiments}) AS background_update__ping_info__experiments ;;
  }

  join: background_update__metrics__labeled_counter__glean_error_invalid_label {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${background_update.metrics__labeled_counter__glean_error_invalid_label}) AS background_update__metrics__labeled_counter__glean_error_invalid_label ON ${background_update.document_id} = ${background_update__metrics__labeled_counter__glean_error_invalid_label.document_id} ;;
  }

  join: background_update__metrics__labeled_counter__glean_error_invalid_overflow {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${background_update.metrics__labeled_counter__glean_error_invalid_overflow}) AS background_update__metrics__labeled_counter__glean_error_invalid_overflow ON ${background_update.document_id} = ${background_update__metrics__labeled_counter__glean_error_invalid_overflow.document_id} ;;
  }

  join: background_update__metrics__labeled_counter__glean_error_invalid_state {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${background_update.metrics__labeled_counter__glean_error_invalid_state}) AS background_update__metrics__labeled_counter__glean_error_invalid_state ON ${background_update.document_id} = ${background_update__metrics__labeled_counter__glean_error_invalid_state.document_id} ;;
  }

  join: background_update__metrics__labeled_counter__glean_error_invalid_value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${background_update.metrics__labeled_counter__glean_error_invalid_value}) AS background_update__metrics__labeled_counter__glean_error_invalid_value ON ${background_update.document_id} = ${background_update__metrics__labeled_counter__glean_error_invalid_value.document_id} ;;
  }
}

explore: suggest__background_update__metrics__labeled_counter__glean_error_invalid_label {
  hidden: yes
}

explore: suggest__background_update__metrics__labeled_counter__glean_error_invalid_overflow {
  hidden: yes
}

explore: suggest__background_update__metrics__labeled_counter__glean_error_invalid_state {
  hidden: yes
}

explore: suggest__background_update__metrics__labeled_counter__glean_error_invalid_value {
  hidden: yes
}