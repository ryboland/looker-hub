
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# Manual changes need to be made in https://github.com/mozilla/looker-spoke-default

include: "/looker-hub/contextual_services/views/event_aggregates.view.lkml"

explore: event_aggregates {
  sql_always_where: ${event_aggregates.submission_date} >= '2010-01-01' ;;
  view_name: event_aggregates

  always_filter: {
    filters: [
      submission_date: "28 days",
    ]
  }
}