include: "/looker-hub/fenix/views/first_session.view.lkml"

explore: first_session {
  sql_always_where: ${first_session.submission_date} >= '2010-01-01' ;;
  view_label: " First_Session"
  description: "Explore for the first_session ping. This ping is intended to capture the source of the app install on the first session."
  view_name: first_session

  always_filter: {
    filters: [
      channel: "mozdata.fenix.first^_session",
      submission_date: "28 days",
    ]
  }

  join: first_session__client_info__events {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${first_session.client_info__events}) AS first_session__client_info__events ON ${first_session.document_id} = ${first_session__client_info__events.document_id} ;;
  }

  join: first_session__client_info__events__extra {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${first_session.client_info__events__extra}) AS first_session__client_info__events__extra ON ${first_session.document_id} = ${first_session__client_info__events__extra.document_id} ;;
  }

  join: first_session__client_info__events__metadata__metrics__datetime__jwe {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${first_session.client_info__events__metadata__metrics__datetime__jwe}) AS first_session__client_info__events__metadata__metrics__datetime__jwe ON ${first_session.document_id} = ${first_session__client_info__events__metadata__metrics__datetime__jwe.document_id} ;;
  }

  join: first_session__client_info__events__metadata__metrics__datetime__jwe__labeled_rate {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${first_session.client_info__events__metadata__metrics__datetime__jwe__labeled_rate}) AS first_session__client_info__events__metadata__metrics__datetime__jwe__labeled_rate ON ${first_session.document_id} = ${first_session__client_info__events__metadata__metrics__datetime__jwe__labeled_rate.document_id} ;;
  }

  join: first_session__client_info__events__metadata__metrics__datetime__jwe__labeled_rate__value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${first_session.client_info__events__metadata__metrics__datetime__jwe__labeled_rate__value}) AS first_session__client_info__events__metadata__metrics__datetime__jwe__labeled_rate__value ON ${first_session.document_id} = ${first_session__client_info__events__metadata__metrics__datetime__jwe__labeled_rate__value.document_id} ;;
  }

  join: first_session__client_info__events__metadata__metrics__datetime__jwe__labeled_rate__string__text {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${first_session.client_info__events__metadata__metrics__datetime__jwe__labeled_rate__string__text}) AS first_session__client_info__events__metadata__metrics__datetime__jwe__labeled_rate__string__text ON ${first_session.document_id} = ${first_session__client_info__events__metadata__metrics__datetime__jwe__labeled_rate__string__text.document_id} ;;
  }

  join: first_session__client_info__events__metadata__metrics__datetime__jwe__labeled_rate__string__text__url {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${first_session.client_info__events__metadata__metrics__datetime__jwe__labeled_rate__string__text__url}) AS first_session__client_info__events__metadata__metrics__datetime__jwe__labeled_rate__string__text__url ON ${first_session.document_id} = ${first_session__client_info__events__metadata__metrics__datetime__jwe__labeled_rate__string__text__url.document_id} ;;
  }

  join: first_session__client_info__events__metadata__metrics__ping_info__experiments {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${first_session.client_info__events__metadata__metrics__ping_info__experiments}) AS first_session__client_info__events__metadata__metrics__ping_info__experiments ON ${first_session.document_id} = ${first_session__client_info__events__metadata__metrics__ping_info__experiments.document_id} ;;
  }

  join: first_session__metrics__labeled_counter__glean_error_invalid_label {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${first_session.metrics__labeled_counter__glean_error_invalid_label}) AS first_session__metrics__labeled_counter__glean_error_invalid_label ON ${first_session.document_id} = ${first_session__metrics__labeled_counter__glean_error_invalid_label.document_id} ;;
  }

  join: first_session__metrics__labeled_counter__glean_error_invalid_overflow {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${first_session.metrics__labeled_counter__glean_error_invalid_overflow}) AS first_session__metrics__labeled_counter__glean_error_invalid_overflow ON ${first_session.document_id} = ${first_session__metrics__labeled_counter__glean_error_invalid_overflow.document_id} ;;
  }

  join: first_session__metrics__labeled_counter__glean_error_invalid_state {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${first_session.metrics__labeled_counter__glean_error_invalid_state}) AS first_session__metrics__labeled_counter__glean_error_invalid_state ON ${first_session.document_id} = ${first_session__metrics__labeled_counter__glean_error_invalid_state.document_id} ;;
  }

  join: first_session__metrics__labeled_counter__glean_error_invalid_value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${first_session.metrics__labeled_counter__glean_error_invalid_value}) AS first_session__metrics__labeled_counter__glean_error_invalid_value ON ${first_session.document_id} = ${first_session__metrics__labeled_counter__glean_error_invalid_value.document_id} ;;
  }
}

explore: suggest__first_session__metrics__labeled_counter__glean_error_invalid_label {
  hidden: yes
}

explore: suggest__first_session__metrics__labeled_counter__glean_error_invalid_overflow {
  hidden: yes
}

explore: suggest__first_session__metrics__labeled_counter__glean_error_invalid_state {
  hidden: yes
}

explore: suggest__first_session__metrics__labeled_counter__glean_error_invalid_value {
  hidden: yes
}