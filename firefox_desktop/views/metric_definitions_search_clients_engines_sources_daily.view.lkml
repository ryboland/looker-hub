
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: metric_definitions_search_clients_engines_sources_daily {
  derived_table: {
    sql: SELECT
                COALESCE(SUM(sap), 0) AS search_count,COALESCE(SUM(tagged_sap), 0) AS tagged_search_count,COALESCE(SUM(tagged_follow_on), 0) AS tagged_follow_on_search_count,COALESCE(SUM(ad_click), 0) AS ad_clicks,COALESCE(SUM(search_with_ads), 0) AS searches_with_ads,COALESCE(SUM(organic), 0) AS organic_search_count,COALESCE(SUM(search_with_ads_organic), 0) AS search_with_ads_organic,COALESCE(SUM(ad_click_organic), 0) AS ad_clicks_organic,SUM(search_with_ads) AS search_with_ads,SUM(ad_click) AS ad_click,SUM(sap) AS sap,SUM(ad_click_organic) AS ad_click_organic,
                client_id AS client_id,
                submission_date AS submission_date
              FROM (
                (
    SELECT
        *
    FROM
        (mozdata.search.search_clients_engines_sources_daily)
    )
              )
              GROUP BY
                client_id,
                submission_date ;;
  }

  dimension: client_id {
    type: string
    sql: ${TABLE}.client_id ;;
    label: "Client ID"
    description: "Unique client identifier"
  }

  dimension: search_count {
    label: "SAP searches"
    description: "    Counts the number of searches a user performed through Firefox's
    Search Access Points.
    Learn more in the
    [search data documentation](https://docs.telemetry.mozilla.org/datasets/search.html).
"
    type: number
    sql: ${TABLE}.search_count ;;
  }

  dimension: tagged_search_count {
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

  dimension: tagged_follow_on_search_count {
    label: "Tagged follow-on searches"
    description: "    Counts the number of follow-on searches with a Mozilla partner tag.
    These are additional searches that users performed from a search engine
    results page after executing a tagged search through a SAP.
    Learn more in the
    [search data documentation](https://docs.telemetry.mozilla.org/datasets/search.html).
"
    type: number
    sql: ${TABLE}.tagged_follow_on_search_count ;;
  }

  dimension: ad_clicks {
    label: "Ad clicks"
    description: "    Counts clicks on ads on search engine result pages with a Mozilla
    partner tag.
"
    type: number
    sql: ${TABLE}.ad_clicks ;;
  }

  dimension: searches_with_ads {
    label: "Search result pages with ads"
    description: "    Counts search result pages served with advertising.
    Users may not actually see these ads thanks to e.g. ad-blockers.
    Learn more in the
    [search analysis documentation](https://mozilla-private.report/search-analysis-docs/book/in_content_searches.html).
"
    type: number
    sql: ${TABLE}.searches_with_ads ;;
  }

  dimension: organic_search_count {
    label: "Organic searches"
    description: "    Counts organic searches, which are searches that are _not_ performed
    through a Firefox SAP and which are not monetizable.
    Learn more in the
    [search data documentation](https://docs.telemetry.mozilla.org/datasets/search.html).
"
    type: number
    sql: ${TABLE}.organic_search_count ;;
  }

  dimension: search_with_ads_organic {
    label: "Organic searches with ads"
    description: "    Counts search result pages from organic searches served with advertising. Organic searches
    are _not_ performed through a Firefox SAP and are not monetizable. 
    Users may not actually see these ads thanks to e.g. ad-blockers.
    Learn more in the
    [search analysis documentation](https://mozilla-private.report/search-analysis-docs/book/in_content_searches.html).
"
    type: number
    sql: ${TABLE}.search_with_ads_organic ;;
  }

  dimension: ad_clicks_organic {
    label: "Organic ad clicks"
    description: "    Counts clicks on ads on search engine result pages organic searches.
    Organic searches are _not_ performed through a Firefox SAP and are not monetizable. 
"
    type: number
    sql: ${TABLE}.ad_clicks_organic ;;
  }

  dimension: search_with_ads {
    label: "Search with Ads"
    description: "Total number of Searches with Ads"
    type: number
    sql: ${TABLE}.search_with_ads ;;
  }

  dimension: ad_click {
    label: "Ad Clicks"
    description: "Total number of Ad Clicks"
    type: number
    sql: ${TABLE}.ad_click ;;
  }

  dimension: sap {
    label: "SAP Search Count"
    description: "Total number of SAP search counts"
    type: number
    sql: ${TABLE}.sap ;;
  }

  dimension: ad_click_organic {
    label: "Organic Ad Click Count"
    description: "Total number of Organic Ad Click Counts"
    type: number
    sql: ${TABLE}.ad_click_organic ;;
  }

  dimension_group: submission {
    type: time
    sql: ${TABLE}.submission_date ;;
    label: "Submission Date"
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
    ]
  }

  measure: clients {
    type: count_distinct
    sql: ${client_id} ;;
  }
}