
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: metric_definitions_newtab_interactions {
  derived_table: {
    sql: SELECT
                SUM(COALESCE(searches, 0)) AS newtab_searches,SUM(COALESCE(tagged_search_ad_impressions, 0)) AS newtab_searches_with_ads,SUM(COALESCE(tagged_search_ad_clicks, 0)) AS newtab_ad_clicks,SAFE_DIVIDE(SUM(COALESCE(tagged_search_ad_clicks, 0)),  SUM(COALESCE(tagged_search_ad_impressions, 0))) AS newtab_ad_click_rate,SUM(COALESCE(organic_pocket_clicks, 0)) AS organic_pocket_clicks,SUM(COALESCE(sponsored_pocket_clicks, 0)) AS sponsered_pocket_clicks,SUM(COALESCE(organic_pocket_impressions, 0)) AS organic_pocket_impressions,SUM(COALESCE(sponsored_pocket_impressions, 0)) AS sponsored_pocket_impressions,SUM(COALESCE(sponsored_topsite_impressions, 0)) AS sponsored_tile_impressions,SUM(COALESCE(sponsored_topsite_clicks, 0)) AS sponsored_tile_clicks,COALESCE(MAX(IF(newtab_newtab_category = 'enabled', 1, 0)), 0) AS newtab_newtab_enabled,COALESCE(MAX(IF(newtab_homepage_category = 'enabled', 1, 0)), 0) AS newtab_homepage_enabled,COALESCE(MAX(CAST(newtab_search_enabled AS INT)), 0) AS newtab_search_enabled,COALESCE(MAX(CAST(topsites_enabled AS INT)), 0) AS newtab_tiles_enabled,COALESCE(MAX(CAST(pocket_enabled AS INT)), 0) AS newtab_pocket_enabled,COALESCE(MAX(CAST(pocket_sponsored_stories_enabled AS INT)), 0) AS newtab_sponsored_pocket_stories_enabled,COALESCE(MAX(case when searches > 0 OR pocket_clicks > 0 OR topsite_clicks > 0 then 1 else 0 end), 0) AS newtab_engagement,
                client_id AS client_id,
                submission_date AS submission_date
              FROM (
                (
    SELECT
        *
    FROM
        (mozdata.telemetry.newtab_interactions)
    )
              )
              WHERE submission_date BETWEEN 
                SAFE_CAST({% date_start metric_definitions_firefox_desktop.date %}) AND 
                SAFE_CAST({% date_end metric_definitions_firefox_desktop.date %})
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

  dimension: newtab_searches {
    label: "Newtab Handoff Searches"
    description: "Count of searches performed on the New Tab and handed off to the urlbar
"
    type: number
    sql: ${TABLE}.newtab_searches ;;
  }

  dimension: newtab_searches_with_ads {
    label: "Newtab Searches with Ads"
    description: "Count of searches performed on the New Tab that resulted in an ad impression on the SERP
"
    type: number
    sql: ${TABLE}.newtab_searches_with_ads ;;
  }

  dimension: newtab_ad_clicks {
    label: "Newtab Ad Clicks"
    description: "Count of searches performed on the New Tab that resulted in an ad click
"
    type: number
    sql: ${TABLE}.newtab_ad_clicks ;;
  }

  dimension: newtab_ad_click_rate {
    label: "Newtab Ad Click Rate"
    description: "New Tab ad clicks divided by New Tab searches with ads
"
    type: number
    sql: ${TABLE}.newtab_ad_click_rate ;;
  }

  dimension: organic_pocket_clicks {
    label: "Organic Pocket Clicks"
    description: "Count of clicks on Organic Pocket content.
"
    type: number
    sql: ${TABLE}.organic_pocket_clicks ;;
  }

  dimension: sponsered_pocket_clicks {
    label: "Sponsored Pocket Clicks"
    description: "Count of clicks on Sponsored Pocket content.
"
    type: number
    sql: ${TABLE}.sponsered_pocket_clicks ;;
  }

  dimension: organic_pocket_impressions {
    label: "Organic Pocket Impressions"
    description: "Count of impressions on Organic Pocket content.
"
    type: number
    sql: ${TABLE}.organic_pocket_impressions ;;
  }

  dimension: sponsored_pocket_impressions {
    label: "Sponsored Pocket Impressions"
    description: "Count of impressions of Sponsored Pocket content.
"
    type: number
    sql: ${TABLE}.sponsored_pocket_impressions ;;
  }

  dimension: sponsored_tile_impressions {
    label: "Sponsored Tile Impressions"
    description: "Count of impressions of Sponsored Tiles (aka Sponsored Topsites on New Tab).
"
    type: number
    sql: ${TABLE}.sponsored_tile_impressions ;;
  }

  dimension: sponsored_tile_clicks {
    label: "Sponsored Tile Clicks"
    description: "Count of clicks of Sponsored Tiles (aka Sponsored Topsites on New Tab).
"
    type: number
    sql: ${TABLE}.sponsored_tile_clicks ;;
  }

  dimension: newtab_newtab_enabled {
    label: "Newtab Newtab Enabled"
    description: "Whether or not new tabs are set to display the default New Tab page.
"
    type: number
    sql: ${TABLE}.newtab_newtab_enabled ;;
  }

  dimension: newtab_homepage_enabled {
    label: "Newtab Homepage Enabled"
    description: "Whether or not the homepage is set to display the default New Tab page.
"
    type: number
    sql: ${TABLE}.newtab_homepage_enabled ;;
  }

  dimension: newtab_search_enabled {
    label: "Newtab Search Enabled"
    description: "Whether or not the SAP (i.e., search handoff) is enabled on the New Tab.
"
    type: number
    sql: ${TABLE}.newtab_search_enabled ;;
  }

  dimension: newtab_tiles_enabled {
    label: "Newtab Tiles Enabled"
    description: "Whether or not tiles are enabled on the New Tab. Includes both sponsored and nonsponsored tiles.
"
    type: number
    sql: ${TABLE}.newtab_tiles_enabled ;;
  }

  dimension: newtab_pocket_enabled {
    label: "Newtab Pocket Enabled"
    description: "Whether or not Pocket is enabled on the New Tab.
"
    type: number
    sql: ${TABLE}.newtab_pocket_enabled ;;
  }

  dimension: newtab_sponsored_pocket_stories_enabled {
    label: "Newtab Sponsored Pocket Stories Enabled"
    description: "Whether or not Pocket Sponsored Stories is enabled on the New Tab.
"
    type: number
    sql: ${TABLE}.newtab_sponsored_pocket_stories_enabled ;;
  }

  dimension: newtab_engagement {
    label: "Newtab Engagement"
    description: "Whether or not the client had a newtab search OR a pocket click OR a tile click.
"
    type: number
    sql: ${TABLE}.newtab_engagement ;;
  }

  dimension_group: submission {
    type: time
    sql: CAST(${TABLE}.submission_date AS TIMESTAMP) ;;
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

  filter: date {
    type: date
    description: "Date Range"
  }

  set: metrics {
    fields: [
      newtab_searches,
      newtab_searches_with_ads,
      newtab_ad_clicks,
      newtab_ad_click_rate,
      organic_pocket_clicks,
      sponsered_pocket_clicks,
      organic_pocket_impressions,
      sponsored_pocket_impressions,
      sponsored_tile_impressions,
      sponsored_tile_clicks,
      newtab_newtab_enabled,
      newtab_homepage_enabled,
      newtab_search_enabled,
      newtab_tiles_enabled,
      newtab_pocket_enabled,
      newtab_sponsored_pocket_stories_enabled,
      newtab_engagement,
    ]
  }
}