
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# Manual changes need to be made in https://github.com/mozilla/looker-spoke-default

include: "fxa_events_table.view.lkml"

view: events {
  extends: [fxa_events_table]

  measure: event_count {
    type: count
    description: "The number of times the event(s) occurred."
  }
}