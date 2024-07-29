
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: metric_definitions_events {
  derived_table: {
    sql: SELECT
                      COALESCE(COUNTIF(
          event.category = 'top_site'
          AND event.name = 'contile_impression'
      ),0) AS spoc_tiles_impressions,
      COALESCE(COUNTIF(
          event.category = 'top_site'
          AND event.name = 'contile_click'
      ),0) AS spoc_tiles_clicks,
  COALESCE(SUM(CASE WHEN
          event.category = 'preferences'
          AND event.name = 'changed'
          AND `mozfun.map.get_key`(event.extra, 'preference') = 'sponsoredTiles'
	THEN 1 ELSE 0 END
  ),0) AS spoc_tiles_preference_toggled,

                
                client_info.client_id AS client_id,
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
                        events.*,
                        
                    FROM
                    (
            SELECT
                *
            FROM
                (
    SELECT
        p.* EXCEPT (events),
        DATE(p.submission_timestamp) AS submission_date,
        event
    FROM
        `moz-fx-data-shared-prod.firefox_ios.events` p
    CROSS JOIN
        UNNEST(p.events) AS event
)
            ) AS events
        
                    WHERE 
                    events.submission_date
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

  dimension: spoc_tiles_impressions {
    group_label: "Metrics"
    label: "Sponsored Tiles Impressions"
    description: "Number of times Contile Sponsored Tiles are shown."
    type: number
    sql: ${TABLE}.spoc_tiles_impressions ;;
  }

  dimension: spoc_tiles_clicks {
    group_label: "Metrics"
    label: "Sponsored Tiles Clicks"
    description: "Number of times user clicked a Contile Sponsored Tile."
    type: number
    sql: ${TABLE}.spoc_tiles_clicks ;;
  }

  dimension: spoc_tiles_preference_toggled {
    group_label: "Metrics"
    label: "Sponsored Tiles Preference Toggled"
    description: "Number of times Contile Sponsored Tiles setting is flipped."
    type: number
    sql: ${TABLE}.spoc_tiles_preference_toggled ;;
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
    fields: [spoc_tiles_impressions, spoc_tiles_clicks, spoc_tiles_preference_toggled]
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