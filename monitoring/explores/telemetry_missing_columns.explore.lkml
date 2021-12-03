
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# Manual changes need to be made in https://github.com/mozilla/looker-spoke-default

include: "/looker-hub/monitoring/views/telemetry_missing_columns.view.lkml"

explore: telemetry_missing_columns {
  sql_always_where: ${telemetry_missing_columns.submission_date} >= '2010-01-01' ;;
  view_name: telemetry_missing_columns

  always_filter: {
    filters: [
      submission_date: "28 days",
    ]
  }
}