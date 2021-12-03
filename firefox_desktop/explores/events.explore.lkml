include: "/looker-hub/firefox_desktop/views/events.view.lkml"

explore: event_counts {
  sql_always_where: ${events.submission_date} >= '2010-01-01' ;;
  view_name: events
  description: "Event counts over time."

  query: all_event_counts {
    description: "Event counts from all events over the past two weeks."
    dimensions: [submission_date]
    measures: [event_count]
    filters: [
      submission_date: "14 days",
    ]
  }

  join: events_unnested_table__event_extra {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${events.event_extra}) AS events__event_extra ;;
  }

  join: events_unnested_table__ping_info__experiments {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${events.ping_info__experiments}) AS events__ping_info__experiments ;;
  }

  always_filter: {
    filters: [
      submission_date: "28 days",
    ]
  }
}