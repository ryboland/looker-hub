
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# Manual changes need to be made in https://github.com/mozilla/looker-spoke-default

view: protected_table {
  dimension: fxa_uid {
    sql: ${TABLE}.fxa_uid ;;
    type: string
  }

  dimension_group: first_protected {
    sql: ${TABLE}.first_protected ;;
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
    ]
  }

  sql_table_name: `mozdata.mozilla_vpn.protected` ;;
}