
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
) AS pocket_rec_clicks,
COUNTIF(
    event = 'CLICK'
    AND source = 'CARDGRID'
    AND JSON_EXTRACT_SCALAR(value, '$.card_type') = 'spoc'
) AS pocket_spoc_clicks,
COUNTIF(
    event = 'PREF_CHANGED'
    AND source = 'TOP_STORIES'
    AND JSON_EXTRACT_SCALAR(value, '$.status') = 'false'
) AS disable_pocket_clicks,
COUNTIF(
    event = 'PREF_CHANGED'
    AND source = 'POCKET_SPOCS'
    AND JSON_EXTRACT_SCALAR(value, '$.status') = 'false'
) AS disable_pocket_spocs_clicks,

                
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
                        activity_stream_events.*,
                        
                    FROM
                    (
            SELECT
                *
            FROM
                (
    SELECT
        *,
        DATE(submission_timestamp) AS submission_date
    FROM mozdata.activity_stream.events
)
            ) AS activity_stream_events
        
                    WHERE 
                    activity_stream_events.submission_date
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

  dimension: pocket_rec_clicks {
    group_label: "Metrics"
    label: "Clicked Pocket organic recs in New Tab"
    description: "    Counts the number of Pocket rec clicks made by each client.
"
    type: number
    sql: ${TABLE}.pocket_rec_clicks ;;
  }

  dimension: pocket_spoc_clicks {
    group_label: "Metrics"
    label: "Clicked Pocket sponsored content in New Tab"
    description: "    Counts the number of Pocket sponsored content clicks made by each client.
"
    type: number
    sql: ${TABLE}.pocket_spoc_clicks ;;
  }

  dimension: disable_pocket_clicks {
    group_label: "Metrics"
    label: "Disabled Pocket in New Tab"
    description: "    Counts the number of clicks to disable Pocket in New Tab made by each client.
"
    type: number
    sql: ${TABLE}.disable_pocket_clicks ;;
  }

  dimension: disable_pocket_spocs_clicks {
    group_label: "Metrics"
    label: "Disabled Pocket sponsored content in New Tab"
    description: "    Counts the number of clicks to disable Pocket sponsored content
    in New Tab made by each client.
"
    type: number
    sql: ${TABLE}.disable_pocket_spocs_clicks ;;
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
    fields: [pocket_rec_clicks, pocket_spoc_clicks, disable_pocket_clicks, disable_pocket_spocs_clicks]
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