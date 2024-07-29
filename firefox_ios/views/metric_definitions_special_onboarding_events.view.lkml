
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: metric_definitions_special_onboarding_events {
  derived_table: {
    sql: SELECT
                COALESCE(SUM(turn_on_notifications_flag)) AS turn_on_notifications_ctr_onboarding,
COALESCE(SUM(set_to_default_flag)) AS set_to_default_ctr_onboarding,
COALESCE(SUM(sign_in_flag)) AS sign_in_ctr_onboarding,
COALESCE(SUM(at_least_1_cta)) AS at_least_1_cta_ctr_onboarding,

                
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
                        special_onboarding_events.*,
                        
                    FROM
                    (
            SELECT
                *
            FROM
                (
SELECT
    expo.submission_date
    , expo.client_id
    , case when (conv.set_to_default >= 1 AND expo.set_to_default_card >= 1) then 1
           when (coalesce(conv.set_to_default, 0) = 0 AND expo.set_to_default_card >= 1) then 0 else null end as set_to_default_flag
    , case when (conv.turn_on_notifications >= 1 AND expo.turn_on_notifications_card >= 1) then 1
           when (coalesce(conv.turn_on_notifications, 0) = 0 AND expo.turn_on_notifications_card >= 1) then 0 else null end as turn_on_notifications_flag
    , case when (conv.sign_in >= 1 AND expo.sign_in_card >= 1) then 1
           when (coalesce(conv.sign_in,0) = 0 AND expo.sign_in_card >= 1) then 0 else null end as sign_in_flag
    , case when (conv.set_to_default >= 1 AND expo.set_to_default_card >= 1) OR (conv.turn_on_notifications >= 1 AND expo.turn_on_notifications_card >= 1) OR (conv.sign_in >= 1 AND expo.sign_in_card >= 1)then 1
           when (coalesce(conv.set_to_default, 0) = 0 AND coalesce(conv.turn_on_notifications, 0) = 0 AND coalesce(conv.sign_in,0) = 0)  AND (set_to_default_card >= 1 OR turn_on_notifications_card >= 1 OR sign_in_card >= 1) then 0 else null end as at_least_1_cta

FROM (
      SELECT
            client_info.client_id as client_id
            , min(DATE(submission_timestamp)) as submission_date
            , count(case when ext.value in ("default-browser", "welcome") then DATE(submission_timestamp) END) as set_to_default_card
            , count(case when ext.value in ( "notification-permissions", "notificationPermission", "notificationPermissions") then DATE(submission_timestamp) END) as turn_on_notifications_card
            , count(case when ext.value in ("sign-to-sync", "signToSync") then DATE(submission_timestamp) END) as sign_in_card
      FROM
        `mozdata.org_mozilla_ios_firefox.events` tm
      CROSS JOIN
        UNNEST(events) AS event
      CROSS JOIN
        UNNEST(event.extra) AS ext
      WHERE event.name = "card_view" AND event.category = "onboarding" AND ext.key ="card_type"
        AND ext.value in ("default-browser", "welcome", "notification-permissions", "sign-to-sync", "signToSync", "notificationPermission", "notificationPermissions")
        -- Ask if any of the CTAs we care about are shown on wallpaper, welcome, pin card
        -- if so that will make the logic a bit complex
        -- Also ask if the different variation mean the same thing and ask engineers to standardize
      AND DATE(submission_timestamp) >= "2023-06-01"
      GROUP BY 1
      ) expo
LEFT JOIN (
  SELECT
      client_info.client_id as client_id
            , count(case when ext.value = "set-default-browser" then DATE(submission_timestamp) END) as set_to_default
            , count(case when ext.value = "request-notifications" then DATE(submission_timestamp) END) as turn_on_notifications
            , count(case when ext.value = "sync-sign-in" then DATE(submission_timestamp) END) as sign_in
  FROM
    `mozdata.org_mozilla_ios_firefox.events` tm
  CROSS JOIN
     UNNEST(events) AS event
  CROSS JOIN
     UNNEST(event.extra) AS ext
  WHERE event.category = "onboarding" AND event.name = "primary_button_tap"  AND ext.key ="button_action"
    AND ext.value in ("set-default-browser", "request-notifications", "open-default-browser-popup", "sync-sign-in")
    -- "open-default-browser-popup" the same as "set-default-browser"??
  AND DATE(submission_timestamp) >= "2023-06-01"
  GROUP BY 1
) conv
ON expo.client_id = conv.client_id
GROUP BY 1, 2, 3, 4, 5, 6
)
            ) AS special_onboarding_events
        
                    WHERE 
                    special_onboarding_events.submission_date
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

  dimension: turn_on_notifications_ctr_onboarding {
    group_label: "Metrics"
    label: "Turn on Notification Click"
    description: "This metric looks at proportion of all new profiles that were exposed to the turn on notification card and clicked the action during on-boarding."
    type: number
    sql: ${TABLE}.turn_on_notifications_ctr_onboarding ;;
  }

  dimension: set_to_default_ctr_onboarding {
    group_label: "Metrics"
    label: "Set to Default Click"
    description: "This metric looks at proportion of all new profiles that were exposed to the set to default card and clicked the action during on-boarding."
    type: number
    sql: ${TABLE}.set_to_default_ctr_onboarding ;;
  }

  dimension: sign_in_ctr_onboarding {
    group_label: "Metrics"
    label: "Sign in Click"
    description: "This metric looks at proportion of all new profiles that were exposed to the sign-in card and clicked the action during on-boarding."
    type: number
    sql: ${TABLE}.sign_in_ctr_onboarding ;;
  }

  dimension: at_least_1_cta_ctr_onboarding {
    group_label: "Metrics"
    label: "Clicked at least one CTA"
    description: "This metric looks at proportion of all new profiles that were exposed to onboarding cards and clicked at least one action during on-boarding."
    type: number
    sql: ${TABLE}.at_least_1_cta_ctr_onboarding ;;
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
    fields: [turn_on_notifications_ctr_onboarding, set_to_default_ctr_onboarding, sign_in_ctr_onboarding, at_least_1_cta_ctr_onboarding]
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