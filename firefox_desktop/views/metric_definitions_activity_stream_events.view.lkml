
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: metric_definitions_activity_stream_events {
  derived_table: {
    sql: SELECT
                COUNTIF(
    event = 'CLICK'
    AND source = 'CARDGRID'
    AND JSON_EXTRACT_SCALAR(value, '$.card_type') = 'organic'
) AS pocket_rec_clicks,COUNTIF(
    event = 'CLICK'
    AND source = 'CARDGRID'
    AND JSON_EXTRACT_SCALAR(value, '$.card_type') = 'spoc'
) AS pocket_spoc_clicks,COUNTIF(
    event = 'PREF_CHANGED'
    AND source = 'TOP_STORIES'
    AND JSON_EXTRACT_SCALAR(value, '$.status') = 'false'
) AS disable_pocket_clicks,COUNTIF(
    event = 'PREF_CHANGED'
    AND source = 'POCKET_SPOCS'
    AND JSON_EXTRACT_SCALAR(value, '$.status') = 'false'
) AS disable_pocket_spocs_clicks,COUNTIF(
        event = 'BLOCK'
        AND value LIKE '%spoc%'
        AND SOURCE = 'TOP_SITES'
      ) AS sponsored_tiles_dismissals,COALESCE(LOGICAL_OR(
        event = 'BLOCK'
        AND value LIKE '%spoc%'
        AND SOURCE = 'TOP_SITES'
      ), FALSE) AS any_sponsored_tiles_dismissals,COUNTIF(
        event = 'BLOCK'
        AND value LIKE '%spoc%'
        AND SOURCE = 'TOP_SITES'
        AND action_position <= 1
      ) AS sponsored_tiles_dismissals_pos1_2,
                client_id AS client_id,
                submission_date AS submission_date
              FROM (
                (
    SELECT
        *
    FROM
        ((
    SELECT
        *,
        DATE(submission_timestamp) AS submission_date
    FROM mozdata.activity_stream.events
))
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

  dimension: pocket_rec_clicks {
    label: "Clicked Pocket organic recs in New Tab"
    description: "    Counts the number of Pocket rec clicks made by each client.
"
    type: number
    sql: ${TABLE}.pocket_rec_clicks ;;
  }

  dimension: pocket_spoc_clicks {
    label: "Clicked Pocket sponsored content in New Tab"
    description: "    Counts the number of Pocket sponsored content clicks made by each client.
"
    type: number
    sql: ${TABLE}.pocket_spoc_clicks ;;
  }

  dimension: disable_pocket_clicks {
    label: "Disabled Pocket in New Tab"
    description: "    Counts the number of clicks to disable Pocket in New Tab made by each client.
"
    type: number
    sql: ${TABLE}.disable_pocket_clicks ;;
  }

  dimension: disable_pocket_spocs_clicks {
    label: "Disabled Pocket sponsored content in New Tab"
    description: "    Counts the number of clicks to disable Pocket sponsored content
    in New Tab made by each client.
"
    type: number
    sql: ${TABLE}.disable_pocket_spocs_clicks ;;
  }

  dimension: sponsored_tiles_dismissals {
    label: "Sponsored Tiles Dismissals Count"
    description: "Count of sponsored tiles dismissals in all positions"
    type: number
    sql: ${TABLE}.sponsored_tiles_dismissals ;;
  }

  dimension: any_sponsored_tiles_dismissals {
    label: "Any Sponsored Tiles Dismissed"
    description: "Clients that dismissed any sponsored tiles"
    type: number
    sql: ${TABLE}.any_sponsored_tiles_dismissals ;;
  }

  dimension: sponsored_tiles_dismissals_pos1_2 {
    label: "Sponsored Tiles Dismissals Count (Positions 1 and 2)"
    description: "Count of sponsored tiles dismissals in the first two positions"
    type: number
    sql: ${TABLE}.sponsored_tiles_dismissals_pos1_2 ;;
  }

  dimension_group: submission {
    type: time
    sql: CAST(${TABLE}.submission_date AS TIMESTAMP) ;;
    label: "Submission"
    timeframes: [
      raw,
      day,
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
}