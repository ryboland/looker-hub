
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: metric_definitions_mobile_search_clients_engines_sources_daily {
  derived_table: {
    sql: SELECT
                COALESCE(SUM(tagged_sap), 0) AS tagged_sap_searches,
COALESCE(SUM(organic), 0) AS organic_search_count,
COALESCE(SUM(ad_click_organic), 0) AS ad_click_organic,
COALESCE(SUM(search_with_ads_organic), 0) AS searches_with_ads_organic,
COALESCE(SUM(search_count), 0) AS search_count,
COALESCE(SUM(search_with_ads), 0) AS searches_with_ads,
COALESCE(SUM(ad_click), 0) AS ad_clicks,
COALESCE(SUM(tagged_sap), 0) AS tagged_search_count,
COALESCE(SUM(tagged_follow_on), 0) AS tagged_follow_on,

                
                client_id AS client_id,
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
                        mobile_search_clients_engines_sources_daily.*,
                        
                    FROM
                    (
            SELECT
                *
            FROM
                (
    SELECT *
    FROM `mozdata.search.mobile_search_clients_engines_sources_daily`
    WHERE normalized_app_name_os = 'Firefox Android'
)
            ) AS mobile_search_clients_engines_sources_daily
        
                    WHERE 
                    mobile_search_clients_engines_sources_daily.submission_date
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

  dimension: tagged_sap_searches {
    group_label: "Metrics"
    label: "Tagged SAP Searches"
    description: "Total number of tagged SAP searches. This metric is deprecated, use tagged_search_count instead"
    type: number
    sql: ${TABLE}.tagged_sap_searches ;;
  }

  dimension: organic_search_count {
    group_label: "Metrics"
    label: "Organic searches"
    description: "    Counts organic searches, which are searches that are _not_ performed
    through a Firefox SAP and which are not monetizable.
    Learn more in the
    [search data documentation](https://docs.telemetry.mozilla.org/datasets/search.html).
"
    type: number
    sql: ${TABLE}.organic_search_count ;;
  }

  dimension: ad_click_organic {
    group_label: "Metrics"
    label: "Organic Ad Click Count"
    description: "Total number of Organic Ad Click Counts"
    type: number
    sql: ${TABLE}.ad_click_organic ;;
  }

  dimension: searches_with_ads_organic {
    group_label: "Metrics"
    label: "Organic Search With Ads Count"
    description: "Total number of Organic Search With Ads Counts"
    type: number
    sql: ${TABLE}.searches_with_ads_organic ;;
  }

  dimension: search_count {
    group_label: "Metrics"
    label: "SAP searches"
    description: "    Counts the number of searches a user performed through Firefox's
    Search Access Points.
    Learn more in the
    [search data documentation](https://docs.telemetry.mozilla.org/datasets/search.html).
"
    type: number
    sql: ${TABLE}.search_count ;;
  }

  dimension: searches_with_ads {
    group_label: "Metrics"
    label: "Search result pages with ads"
    description: "    Counts search result pages served with advertising.
    Users may not actually see these ads thanks to e.g. ad-blockers.
    Learn more in the
    [search analysis documentation](https://mozilla-private.report/search-analysis-docs/book/in_content_searches.html).
"
    type: number
    sql: ${TABLE}.searches_with_ads ;;
  }

  dimension: ad_clicks {
    group_label: "Metrics"
    label: "Ad clicks"
    description: "    Counts clicks on ads on search engine result pages with a Mozilla
    partner tag.
"
    type: number
    sql: ${TABLE}.ad_clicks ;;
  }

  dimension: tagged_search_count {
    group_label: "Metrics"
    label: "Tagged SAP searches"
    description: "    Counts the number of searches a user performed through Firefox's
    Search Access Points that were submitted with a partner code
    and were potentially revenue-generating.
    Learn more in the
    [search data documentation](https://docs.telemetry.mozilla.org/datasets/search.html).
"
    type: number
    sql: ${TABLE}.tagged_search_count ;;
  }

  dimension: tagged_follow_on {
    group_label: "Metrics"
    label: "Tagged follow-on searches"
    description: "    Counts the number of follow-on searches with a Mozilla partner tag.
    These are additional searches that users performed from a search engine
    results page after executing a tagged search through a SAP.
    Learn more in the
    [search data documentation](https://docs.telemetry.mozilla.org/datasets/search.html).
"
    type: number
    sql: ${TABLE}.tagged_follow_on ;;
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

  set: metrics {
    fields: [
      tagged_sap_searches,
      organic_search_count,
      ad_click_organic,
      searches_with_ads_organic,
      search_count,
      searches_with_ads,
      ad_clicks,
      tagged_search_count,
      tagged_follow_on,
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