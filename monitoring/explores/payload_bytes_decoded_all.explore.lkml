
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# Manual changes need to be made in https://github.com/mozilla/looker-spoke-default

include: "/looker-hub/monitoring/views/payload_bytes_decoded_all.view.lkml"

explore: payload_bytes_decoded_all {
  sql_always_where: ${payload_bytes_decoded_all.submission_date} >= '2010-01-01' ;;
  view_name: payload_bytes_decoded_all

  always_filter: {
    filters: [
      submission_date: "28 days",
    ]
  }
}