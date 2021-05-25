include: "/looker-hub/fenix/views/funnel_analysis.view.lkml"

explore: funnel_analysis {
  view_label: " User-Day Funnels"

  always_filter: {
    filters: [
      submission_date: "14 days",
    ]
  }

  join: event_type_1 {
    relationship: many_to_one
    type: cross
  }

  join: event_type_2 {
    relationship: many_to_one
    type: cross
  }

  join: event_type_3 {
    relationship: many_to_one
    type: cross
  }

  join: event_type_4 {
    relationship: many_to_one
    type: cross
  }

  sql_always_where: ${funnel_analysis.submission_date} >= '2010-01-01' ;;
}