
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: new_profile_clients_table {
  dimension: adjust_ad_group {
    sql: ${TABLE}.adjust_ad_group ;;
    type: string
  }

  dimension: adjust_campaign {
    sql: ${TABLE}.adjust_campaign ;;
    type: string
  }

  dimension: adjust_creative {
    sql: ${TABLE}.adjust_creative ;;
    type: string
  }

  dimension: adjust_network {
    sql: ${TABLE}.adjust_network ;;
    type: string
  }

  dimension: app_name {
    sql: ${TABLE}.app_name ;;
    type: string
  }

  dimension: app_version {
    sql: ${TABLE}.app_version ;;
    type: string
  }

  dimension: client_id {
    sql: ${TABLE}.client_id ;;
    hidden: yes
  }

  dimension: country {
    sql: ${TABLE}.country ;;
    type: string
    map_layer_name: countries
  }

  dimension: device_manufacturer {
    sql: ${TABLE}.device_manufacturer ;;
    type: string
  }

  dimension: device_model {
    sql: ${TABLE}.device_model ;;
    type: string
  }

  dimension: is_mobile {
    sql: ${TABLE}.is_mobile ;;
    type: yesno
  }

  dimension: is_suspicious_device_client {
    sql: ${TABLE}.is_suspicious_device_client ;;
    type: yesno
  }

  dimension: isp {
    sql: ${TABLE}.isp ;;
    type: string
  }

  dimension: locale {
    sql: ${TABLE}.locale ;;
    type: string
  }

  dimension: normalized_channel {
    sql: ${TABLE}.normalized_channel ;;
    type: string
  }

  dimension: os {
    sql: ${TABLE}.os ;;
    type: string
  }

  dimension: os_version {
    sql: ${TABLE}.os_version ;;
    type: string
  }

  dimension: paid_vs_organic {
    sql: ${TABLE}.paid_vs_organic ;;
    type: string
  }

  dimension_group: adjust_attribution {
    sql: ${TABLE}.adjust_attribution_timestamp ;;
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

  dimension_group: first_seen {
    sql: ${TABLE}.first_seen_date ;;
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
    ]
    convert_tz: no
    datatype: date
  }

  sql_table_name: `mozdata.firefox_ios.new_profile_clients` ;;
}