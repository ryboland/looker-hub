# *Do not manually modify this file*

# This file has been generated via https://github.com/mozilla/lookml-generator

# Using a datagroup in an Explore: https://cloud.google.com/looker/docs/reference/param-explore-persist-with
# Using a datagroup in a derived table: https://cloud.google.com/looker/docs/reference/param-view-datagroup-trigger

datagroup: quick_suggest_v1_last_updated {
  label: "quick_suggest_v1 Last Updated"
  sql_trigger: SELECT MAX(last_modified_time)
    FROM `moz-fx-data-shared-prod`.firefox_desktop_stable.INFORMATION_SCHEMA.PARTITIONS
    WHERE table_name = 'quick_suggest_v1' ;;
  description: "Updates when moz-fx-data-shared-prod:firefox_desktop_stable.quick_suggest_v1 is modified."
  max_cache_age: "24 hours"
}