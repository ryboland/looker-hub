
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

- dashboard: vpn_moments_page_october_release_new_users_v2
  title: Vpn Moments Page October Release New Users V2
  layout: newspaper
  preferred_viewer: dashboards-next

  elements:
  - title: Memory Total
    name: Memory Total_percentile
    note_state: expanded
    note_display: above
    note_text: Percentile
    explore: vpn_moments_page_october_release_new_users_v2
    type: "ci-line-chart"
    fields: [
      vpn_moments_page_october_release_new_users_v2.submission_date,
      vpn_moments_page_october_release_new_users_v2.branch,
      vpn_moments_page_october_release_new_users_v2.upper,
      vpn_moments_page_october_release_new_users_v2.lower,
      vpn_moments_page_october_release_new_users_v2.point
    ]
    pivots: [
      vpn_moments_page_october_release_new_users_v2.branch
    ]
    filters:
      vpn_moments_page_october_release_new_users_v2.metric: 'memory_total'
      vpn_moments_page_october_release_new_users_v2.statistic: percentile
    row: 0
    col: 0
    width: 12
    height: 8
    field_x: vpn_moments_page_october_release_new_users_v2.submission_date
    field_y: vpn_moments_page_october_release_new_users_v2.point
    log_scale: false
    ci_lower: vpn_moments_page_october_release_new_users_v2.lower
    ci_upper: vpn_moments_page_october_release_new_users_v2.upper
    show_grid: true
    listen:
      Date: vpn_moments_page_october_release_new_users_v2.submission_date
      Percentile: vpn_moments_page_october_release_new_users_v2.parameter
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Ad Clicks
    name: Ad Clicks_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: vpn_moments_page_october_release_new_users_v2
    type: looker_line
    fields: [
      vpn_moments_page_october_release_new_users_v2.submission_date,
      vpn_moments_page_october_release_new_users_v2.branch,
      vpn_moments_page_october_release_new_users_v2.point
    ]
    pivots: [
      vpn_moments_page_october_release_new_users_v2.branch
    ]
    filters:
      vpn_moments_page_october_release_new_users_v2.metric: 'ad_clicks'
      vpn_moments_page_october_release_new_users_v2.statistic: mean
    row: 0
    col: 12
    width: 12
    height: 8
    field_x: vpn_moments_page_october_release_new_users_v2.submission_date
    field_y: vpn_moments_page_october_release_new_users_v2.point
    log_scale: false
    ci_lower: vpn_moments_page_october_release_new_users_v2.lower
    ci_upper: vpn_moments_page_october_release_new_users_v2.upper
    show_grid: true
    listen:
      Date: vpn_moments_page_october_release_new_users_v2.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Uri Count
    name: Uri Count_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: vpn_moments_page_october_release_new_users_v2
    type: looker_line
    fields: [
      vpn_moments_page_october_release_new_users_v2.submission_date,
      vpn_moments_page_october_release_new_users_v2.branch,
      vpn_moments_page_october_release_new_users_v2.point
    ]
    pivots: [
      vpn_moments_page_october_release_new_users_v2.branch
    ]
    filters:
      vpn_moments_page_october_release_new_users_v2.metric: 'uri_count'
      vpn_moments_page_october_release_new_users_v2.statistic: mean
    row: 10
    col: 0
    width: 12
    height: 8
    field_x: vpn_moments_page_october_release_new_users_v2.submission_date
    field_y: vpn_moments_page_october_release_new_users_v2.point
    log_scale: false
    ci_lower: vpn_moments_page_october_release_new_users_v2.lower
    ci_upper: vpn_moments_page_october_release_new_users_v2.upper
    show_grid: true
    listen:
      Date: vpn_moments_page_october_release_new_users_v2.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Active Hours
    name: Active Hours_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: vpn_moments_page_october_release_new_users_v2
    type: looker_line
    fields: [
      vpn_moments_page_october_release_new_users_v2.submission_date,
      vpn_moments_page_october_release_new_users_v2.branch,
      vpn_moments_page_october_release_new_users_v2.point
    ]
    pivots: [
      vpn_moments_page_october_release_new_users_v2.branch
    ]
    filters:
      vpn_moments_page_october_release_new_users_v2.metric: 'active_hours'
      vpn_moments_page_october_release_new_users_v2.statistic: mean
    row: 10
    col: 12
    width: 12
    height: 8
    field_x: vpn_moments_page_october_release_new_users_v2.submission_date
    field_y: vpn_moments_page_october_release_new_users_v2.point
    log_scale: false
    ci_lower: vpn_moments_page_october_release_new_users_v2.lower
    ci_upper: vpn_moments_page_october_release_new_users_v2.upper
    show_grid: true
    listen:
      Date: vpn_moments_page_october_release_new_users_v2.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Retained
    name: Retained_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: vpn_moments_page_october_release_new_users_v2
    type: looker_line
    fields: [
      vpn_moments_page_october_release_new_users_v2.submission_date,
      vpn_moments_page_october_release_new_users_v2.branch,
      vpn_moments_page_october_release_new_users_v2.point
    ]
    pivots: [
      vpn_moments_page_october_release_new_users_v2.branch
    ]
    filters:
      vpn_moments_page_october_release_new_users_v2.metric: 'retained'
      vpn_moments_page_october_release_new_users_v2.statistic: mean
    row: 20
    col: 0
    width: 12
    height: 8
    field_x: vpn_moments_page_october_release_new_users_v2.submission_date
    field_y: vpn_moments_page_october_release_new_users_v2.point
    log_scale: false
    ci_lower: vpn_moments_page_october_release_new_users_v2.lower
    ci_upper: vpn_moments_page_october_release_new_users_v2.upper
    show_grid: true
    listen:
      Date: vpn_moments_page_october_release_new_users_v2.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Search Count
    name: Search Count_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: vpn_moments_page_october_release_new_users_v2
    type: looker_line
    fields: [
      vpn_moments_page_october_release_new_users_v2.submission_date,
      vpn_moments_page_october_release_new_users_v2.branch,
      vpn_moments_page_october_release_new_users_v2.point
    ]
    pivots: [
      vpn_moments_page_october_release_new_users_v2.branch
    ]
    filters:
      vpn_moments_page_october_release_new_users_v2.metric: 'search_count'
      vpn_moments_page_october_release_new_users_v2.statistic: mean
    row: 20
    col: 12
    width: 12
    height: 8
    field_x: vpn_moments_page_october_release_new_users_v2.submission_date
    field_y: vpn_moments_page_october_release_new_users_v2.point
    log_scale: false
    ci_lower: vpn_moments_page_october_release_new_users_v2.lower
    ci_upper: vpn_moments_page_october_release_new_users_v2.upper
    show_grid: true
    listen:
      Date: vpn_moments_page_october_release_new_users_v2.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Days Of Use
    name: Days Of Use_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: vpn_moments_page_october_release_new_users_v2
    type: looker_line
    fields: [
      vpn_moments_page_october_release_new_users_v2.submission_date,
      vpn_moments_page_october_release_new_users_v2.branch,
      vpn_moments_page_october_release_new_users_v2.point
    ]
    pivots: [
      vpn_moments_page_october_release_new_users_v2.branch
    ]
    filters:
      vpn_moments_page_october_release_new_users_v2.metric: 'days_of_use'
      vpn_moments_page_october_release_new_users_v2.statistic: mean
    row: 30
    col: 0
    width: 12
    height: 8
    field_x: vpn_moments_page_october_release_new_users_v2.submission_date
    field_y: vpn_moments_page_october_release_new_users_v2.point
    log_scale: false
    ci_lower: vpn_moments_page_october_release_new_users_v2.lower
    ci_upper: vpn_moments_page_october_release_new_users_v2.upper
    show_grid: true
    listen:
      Date: vpn_moments_page_october_release_new_users_v2.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Qualified Cumulative Days Of Use
    name: Qualified Cumulative Days Of Use_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: vpn_moments_page_october_release_new_users_v2
    type: looker_line
    fields: [
      vpn_moments_page_october_release_new_users_v2.submission_date,
      vpn_moments_page_october_release_new_users_v2.branch,
      vpn_moments_page_october_release_new_users_v2.point
    ]
    pivots: [
      vpn_moments_page_october_release_new_users_v2.branch
    ]
    filters:
      vpn_moments_page_october_release_new_users_v2.metric: 'qualified_cumulative_days_of_use'
      vpn_moments_page_october_release_new_users_v2.statistic: mean
    row: 30
    col: 12
    width: 12
    height: 8
    field_x: vpn_moments_page_october_release_new_users_v2.submission_date
    field_y: vpn_moments_page_october_release_new_users_v2.point
    log_scale: false
    ci_lower: vpn_moments_page_october_release_new_users_v2.lower
    ci_upper: vpn_moments_page_october_release_new_users_v2.upper
    show_grid: true
    listen:
      Date: vpn_moments_page_october_release_new_users_v2.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  
  filters:
  - name: Date
    title: Date
    type: field_filter
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: operational_monitoring
    explore: vpn_moments_page_october_release_new_users_v2
    listens_to_filters: []
    field: vpn_moments_page_october_release_new_users_v2.submission_date

  - name: Percentile
    title: Percentile
    type: field_filter
    default_value: '50'
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
    model: operational_monitoring
    explore: vpn_moments_page_october_release_new_users_v2
    listens_to_filters: []
    field: vpn_moments_page_october_release_new_users_v2.parameter
  