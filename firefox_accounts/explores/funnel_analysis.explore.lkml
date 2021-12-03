
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# Manual changes need to be made in https://github.com/mozilla/looker-spoke-default

include: "/looker-hub/firefox_accounts/views/funnel_analysis.view.lkml"

explore: funnel_analysis {
  description: "Count funnel completion over time. Funnels are limited to a single day."
  view_label: " User-Day Funnels"

  always_filter: {
    filters: [
      submission_date: "14 days",
    ]
  }

  join: step_1 {
    relationship: many_to_one
    type: cross
  }

  join: step_2 {
    relationship: many_to_one
    type: cross
  }

  join: step_3 {
    relationship: many_to_one
    type: cross
  }

  join: step_4 {
    relationship: many_to_one
    type: cross
  }

  sql_always_where: ${funnel_analysis.submission_date} >= '2010-01-01' ;;
}

explore: event_names {
  hidden: yes
}