
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: metric_definitions_desktop_engagement_v1 {
  derived_table: {
    sql: SELECT
                SUM(dau) AS desktop_engagement_dau_v1,
SUM(wau) AS desktop_engagement_wau_v1,
SUM(mau) AS desktop_engagement_mau_v1,

                countries_ads_value_tier,
countries_code,
countries_code_3,
countries_mozilla_vpn_available,
countries_name,
countries_pocket_available_on_newtab,
countries_region_name,
countries_sponsored_tiles_available_on_newtab,
countries_subregion_name,

                NULL AS client_id,
                {% if aggregate_metrics_by._parameter_value == 'day' %}
                submission_date AS analysis_basis
                {% elsif aggregate_metrics_by._parameter_value == 'week'  %}
                (FORMAT_DATE(
                    '%F',
                    DATE_TRUNC(submission_date,
                    WEEK(MONDAY)))
                ) AS analysis_basis
                {% elsif aggregate_metrics_by._parameter_value == 'month'  %}
                (FORMAT_DATE(
                    '%Y-%m',
                    submission_date)
                ) AS analysis_basis
                {% elsif aggregate_metrics_by._parameter_value == 'quarter'  %}
                (FORMAT_DATE(
                    '%Y-%m',
                    DATE_TRUNC(submission_date,
                    QUARTER))
                ) AS analysis_basis
                {% elsif aggregate_metrics_by._parameter_value == 'year'  %}
                (EXTRACT(
                    YEAR FROM submission_date)
                ) AS analysis_basis
                {% else %}
                NULL as analysis_basis
                {% endif %}
            FROM
                (
                    SELECT
                        desktop_engagement_v1.*,
                        countries.ads_value_tier AS countries_ads_value_tier,
countries.code AS countries_code,
countries.code_3 AS countries_code_3,
countries.mozilla_vpn_available AS countries_mozilla_vpn_available,
countries.name AS countries_name,
countries.pocket_available_on_newtab AS countries_pocket_available_on_newtab,
countries.region_name AS countries_region_name,
countries.sponsored_tiles_available_on_newtab AS countries_sponsored_tiles_available_on_newtab,
countries.subregion_name AS countries_subregion_name,

                    FROM
                    (
            SELECT
                *
            FROM
                moz-fx-data-shared-prod.telemetry.desktop_engagement
            ) AS desktop_engagement_v1
        LEFT JOIN
    (
            SELECT
                *
            FROM
                mozdata.static.country_codes_v1
            ) AS countries
        
    ON 
    desktop_engagement_v1.country = countries.code
    
                
                    WHERE 
                    desktop_engagement_v1.submission_date
                    BETWEEN
                    COALESCE(
                        SAFE_CAST(
                            {% date_start submission_date %} AS DATE
                        ), CURRENT_DATE()) AND
                    COALESCE(
                        SAFE_CAST(
                            {% date_end submission_date %} AS DATE
                        ), CURRENT_DATE())
                
                )
            GROUP BY
                countries_ads_value_tier,
countries_code,
countries_code_3,
countries_mozilla_vpn_available,
countries_name,
countries_pocket_available_on_newtab,
countries_region_name,
countries_sponsored_tiles_available_on_newtab,
countries_subregion_name,

                client_id,
                analysis_basis ;;
  }

  dimension: client_id {
    type: string
    sql: SAFE_CAST(${TABLE}.client_id AS STRING) ;;
    label: "Client ID"
    primary_key: yes
    group_label: "Base Fields"
    description: "Unique client identifier"
  }

  dimension: desktop_engagement_dau_v1 {
    group_label: "Metrics"
    label: "(non-official) DAU"
    description: "(non-official) Daily active users on desktop based on engagment data"
    type: number
    sql: ${TABLE}.desktop_engagement_dau_v1 ;;
  }

  dimension: desktop_engagement_wau_v1 {
    group_label: "Metrics"
    label: "(non-official) WAU"
    description: "(non-official) Weekly active users on desktop based on engagment data"
    type: number
    sql: ${TABLE}.desktop_engagement_wau_v1 ;;
  }

  dimension: desktop_engagement_mau_v1 {
    group_label: "Metrics"
    label: "(non-official) MAU"
    description: "(non-official) Monthly active users on desktop based on engagment data"
    type: number
    sql: ${TABLE}.desktop_engagement_mau_v1 ;;
  }

  dimension: ads_value_tier {
    sql: ${TABLE}.countries_ads_value_tier ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: code {
    sql: ${TABLE}.countries_code ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: code_3 {
    sql: ${TABLE}.countries_code_3 ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: mozilla_vpn_available {
    sql: ${TABLE}.countries_mozilla_vpn_available ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: name {
    sql: ${TABLE}.countries_name ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: pocket_available_on_newtab {
    sql: ${TABLE}.countries_pocket_available_on_newtab ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: region_name {
    sql: ${TABLE}.countries_region_name ;;
    type: string
    group_label: "Base Fields"
  }

  dimension: sponsored_tiles_available_on_newtab {
    sql: ${TABLE}.countries_sponsored_tiles_available_on_newtab ;;
    type: yesno
    group_label: "Base Fields"
  }

  dimension: subregion_name {
    sql: ${TABLE}.countries_subregion_name ;;
    type: string
    group_label: "Base Fields"
  }

  dimension_group: submission {
    type: time
    group_label: "Base Fields"
    sql: CAST(${TABLE}.analysis_basis AS TIMESTAMP) ;;
    label: "Submission"
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
    ]
  }

  measure: desktop_engagement_dau_v1_sum {
    type: sum
    sql: ${TABLE}.desktop_engagement_dau_v1*1 ;;
    label: "(non-official) DAU Sum"
    group_label: "Statistics"
    description: "Sum of (non-official) DAU"
  }

  measure: desktop_engagement_dau_v1_ratio {
    type: number
    label: "(non-official) DAU Ratio"
    sql: SAFE_DIVIDE(${desktop_engagement_dau_v1_sum}, ${desktop_engagement_mau_v1_sum}) ;;
    group_label: "Statistics"
    description: "\"
                                        Ratio between desktop_engagement_dau_v1.sum and
                                        desktop_engagement_mau_v1.sum"
  }

  measure: desktop_engagement_dau_v1_1_day_rolling_average {
    type: number
    label: "(non-official) DAU 1 Day Rolling Average"
    sql: AVG(sum(${TABLE}.desktop_engagement_dau_v1 * 1)) OVER (
                                                ROWS 1 PRECEDING
                                        ) ;;
    group_label: "Statistics"
    description: "1 day rolling average of (non-official) DAU"
  }

  measure: desktop_engagement_dau_v1_7_day_rolling_average {
    type: number
    label: "(non-official) DAU 7 Day Rolling Average"
    sql: AVG(sum(${TABLE}.desktop_engagement_dau_v1 * 1)) OVER (
                                                ROWS 7 PRECEDING
                                        ) ;;
    group_label: "Statistics"
    description: "7 day rolling average of (non-official) DAU"
  }

  measure: desktop_engagement_dau_v1_28_day_rolling_average {
    type: number
    label: "(non-official) DAU 28 Day Rolling Average"
    sql: AVG(sum(${TABLE}.desktop_engagement_dau_v1 * 1)) OVER (
                                                ROWS 28 PRECEDING
                                        ) ;;
    group_label: "Statistics"
    description: "28 day rolling average of (non-official) DAU"
  }

  measure: desktop_engagement_wau_v1_sum {
    type: sum
    sql: ${TABLE}.desktop_engagement_wau_v1*1 ;;
    label: "(non-official) WAU Sum"
    group_label: "Statistics"
    description: "Sum of (non-official) WAU"
  }

  measure: desktop_engagement_mau_v1_sum {
    type: sum
    sql: ${TABLE}.desktop_engagement_mau_v1*1 ;;
    label: "(non-official) MAU Sum"
    group_label: "Statistics"
    description: "Sum of (non-official) MAU"
  }

  set: metrics {
    fields: [
      desktop_engagement_dau_v1,
      desktop_engagement_wau_v1,
      desktop_engagement_mau_v1,
      desktop_engagement_dau_v1_sum,
      desktop_engagement_dau_v1_ratio,
      desktop_engagement_dau_v1_1_day_rolling_average,
      desktop_engagement_dau_v1_7_day_rolling_average,
      desktop_engagement_dau_v1_28_day_rolling_average,
      desktop_engagement_wau_v1_sum,
      desktop_engagement_mau_v1_sum,
    ]
  }

  parameter: aggregate_metrics_by {
    label: "Aggregate Client Metrics Per"
    type: unquoted
    default_value: "day"

    allowed_value: {
      label: "Per Day"
      value: "day"
    }

    allowed_value: {
      label: "Per Week"
      value: "week"
    }

    allowed_value: {
      label: "Per Month"
      value: "month"
    }

    allowed_value: {
      label: "Per Quarter"
      value: "quarter"
    }

    allowed_value: {
      label: "Per Year"
      value: "year"
    }

    allowed_value: {
      label: "Overall"
      value: "overall"
    }
  }

  parameter: sampling {
    label: "Sample of source data in %"
    type: unquoted
    default_value: "100"
    hidden: yes
  }
}