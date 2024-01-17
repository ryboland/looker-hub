
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

include: "/looker-hub/fenix/views/client_counts.view.lkml"
include: "/looker-hub/fenix/views/metric_definitions_metrics.view.lkml"

explore: metric_definitions_metrics {
  from: client_counts
  view_label: "Base Fields"

  join: metric_definitions {
    from: metric_definitions_metrics
    view_label: "Metric Definitions Metrics"
    relationship: many_to_many
    type: full_outer
    fields: [metrics*]
    sql: FULL OUTER JOIN metric_definitions_metrics AS metric_definitions USING(submission_date, client_id) ;;
  }

  always_filter: {
    filters: [
      submission_date: "7 days",
    ]
  }

  fields: [ALL_FIELDS*, -metric_definitions_metrics.have_completed_period]
}
