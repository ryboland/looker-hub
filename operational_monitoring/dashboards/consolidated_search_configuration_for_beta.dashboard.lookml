
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

- dashboard: consolidated_search_configuration_for_beta
  title: Consolidated Search Configuration For Beta
  layout: newspaper
  preferred_viewer: dashboards-next

  elements:
  - title: Search Count
    name: Search Count_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: consolidated_search_configuration_for_beta
    type: looker_line
    fields: [
      consolidated_search_configuration_for_beta.submission_date,
      consolidated_search_configuration_for_beta.branch,
      consolidated_search_configuration_for_beta.point
    ]
    pivots: [
      consolidated_search_configuration_for_beta.branch
    ]
    filters:
      consolidated_search_configuration_for_beta.metric: 'search_count'
      consolidated_search_configuration_for_beta.statistic: mean
    row: 0
    col: 0
    width: 12
    height: 8
    field_x: consolidated_search_configuration_for_beta.submission_date
    field_y: consolidated_search_configuration_for_beta.point
    log_scale: false
    ci_lower: consolidated_search_configuration_for_beta.lower
    ci_upper: consolidated_search_configuration_for_beta.upper
    show_grid: true
    listen:
      Date: consolidated_search_configuration_for_beta.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Qualified Cumulative Days Of Use
    name: Qualified Cumulative Days Of Use_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: consolidated_search_configuration_for_beta
    type: looker_line
    fields: [
      consolidated_search_configuration_for_beta.submission_date,
      consolidated_search_configuration_for_beta.branch,
      consolidated_search_configuration_for_beta.point
    ]
    pivots: [
      consolidated_search_configuration_for_beta.branch
    ]
    filters:
      consolidated_search_configuration_for_beta.metric: 'qualified_cumulative_days_of_use'
      consolidated_search_configuration_for_beta.statistic: mean
    row: 0
    col: 12
    width: 12
    height: 8
    field_x: consolidated_search_configuration_for_beta.submission_date
    field_y: consolidated_search_configuration_for_beta.point
    log_scale: false
    ci_lower: consolidated_search_configuration_for_beta.lower
    ci_upper: consolidated_search_configuration_for_beta.upper
    show_grid: true
    listen:
      Date: consolidated_search_configuration_for_beta.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Retained
    name: Retained_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: consolidated_search_configuration_for_beta
    type: looker_line
    fields: [
      consolidated_search_configuration_for_beta.submission_date,
      consolidated_search_configuration_for_beta.branch,
      consolidated_search_configuration_for_beta.point
    ]
    pivots: [
      consolidated_search_configuration_for_beta.branch
    ]
    filters:
      consolidated_search_configuration_for_beta.metric: 'retained'
      consolidated_search_configuration_for_beta.statistic: mean
    row: 10
    col: 0
    width: 12
    height: 8
    field_x: consolidated_search_configuration_for_beta.submission_date
    field_y: consolidated_search_configuration_for_beta.point
    log_scale: false
    ci_lower: consolidated_search_configuration_for_beta.lower
    ci_upper: consolidated_search_configuration_for_beta.upper
    show_grid: true
    listen:
      Date: consolidated_search_configuration_for_beta.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Uri Count
    name: Uri Count_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: consolidated_search_configuration_for_beta
    type: looker_line
    fields: [
      consolidated_search_configuration_for_beta.submission_date,
      consolidated_search_configuration_for_beta.branch,
      consolidated_search_configuration_for_beta.point
    ]
    pivots: [
      consolidated_search_configuration_for_beta.branch
    ]
    filters:
      consolidated_search_configuration_for_beta.metric: 'uri_count'
      consolidated_search_configuration_for_beta.statistic: mean
    row: 10
    col: 12
    width: 12
    height: 8
    field_x: consolidated_search_configuration_for_beta.submission_date
    field_y: consolidated_search_configuration_for_beta.point
    log_scale: false
    ci_lower: consolidated_search_configuration_for_beta.lower
    ci_upper: consolidated_search_configuration_for_beta.upper
    show_grid: true
    listen:
      Date: consolidated_search_configuration_for_beta.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Days Of Use
    name: Days Of Use_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: consolidated_search_configuration_for_beta
    type: looker_line
    fields: [
      consolidated_search_configuration_for_beta.submission_date,
      consolidated_search_configuration_for_beta.branch,
      consolidated_search_configuration_for_beta.point
    ]
    pivots: [
      consolidated_search_configuration_for_beta.branch
    ]
    filters:
      consolidated_search_configuration_for_beta.metric: 'days_of_use'
      consolidated_search_configuration_for_beta.statistic: mean
    row: 20
    col: 0
    width: 12
    height: 8
    field_x: consolidated_search_configuration_for_beta.submission_date
    field_y: consolidated_search_configuration_for_beta.point
    log_scale: false
    ci_lower: consolidated_search_configuration_for_beta.lower
    ci_upper: consolidated_search_configuration_for_beta.upper
    show_grid: true
    listen:
      Date: consolidated_search_configuration_for_beta.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Ad Clicks
    name: Ad Clicks_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: consolidated_search_configuration_for_beta
    type: looker_line
    fields: [
      consolidated_search_configuration_for_beta.submission_date,
      consolidated_search_configuration_for_beta.branch,
      consolidated_search_configuration_for_beta.point
    ]
    pivots: [
      consolidated_search_configuration_for_beta.branch
    ]
    filters:
      consolidated_search_configuration_for_beta.metric: 'ad_clicks'
      consolidated_search_configuration_for_beta.statistic: mean
    row: 20
    col: 12
    width: 12
    height: 8
    field_x: consolidated_search_configuration_for_beta.submission_date
    field_y: consolidated_search_configuration_for_beta.point
    log_scale: false
    ci_lower: consolidated_search_configuration_for_beta.lower
    ci_upper: consolidated_search_configuration_for_beta.upper
    show_grid: true
    listen:
      Date: consolidated_search_configuration_for_beta.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Active Hours
    name: Active Hours_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: consolidated_search_configuration_for_beta
    type: looker_line
    fields: [
      consolidated_search_configuration_for_beta.submission_date,
      consolidated_search_configuration_for_beta.branch,
      consolidated_search_configuration_for_beta.point
    ]
    pivots: [
      consolidated_search_configuration_for_beta.branch
    ]
    filters:
      consolidated_search_configuration_for_beta.metric: 'active_hours'
      consolidated_search_configuration_for_beta.statistic: mean
    row: 30
    col: 0
    width: 12
    height: 8
    field_x: consolidated_search_configuration_for_beta.submission_date
    field_y: consolidated_search_configuration_for_beta.point
    log_scale: false
    ci_lower: consolidated_search_configuration_for_beta.lower
    ci_upper: consolidated_search_configuration_for_beta.upper
    show_grid: true
    listen:
      Date: consolidated_search_configuration_for_beta.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Memory Total
    name: Memory Total_percentile
    note_state: expanded
    note_display: above
    note_text: Percentile
    explore: consolidated_search_configuration_for_beta
    type: "ci-line-chart"
    fields: [
      consolidated_search_configuration_for_beta.submission_date,
      consolidated_search_configuration_for_beta.branch,
      consolidated_search_configuration_for_beta.upper,
      consolidated_search_configuration_for_beta.lower,
      consolidated_search_configuration_for_beta.point
    ]
    pivots: [
      consolidated_search_configuration_for_beta.branch
    ]
    filters:
      consolidated_search_configuration_for_beta.metric: 'memory_total'
      consolidated_search_configuration_for_beta.statistic: percentile
    row: 30
    col: 12
    width: 12
    height: 8
    field_x: consolidated_search_configuration_for_beta.submission_date
    field_y: consolidated_search_configuration_for_beta.point
    log_scale: false
    ci_lower: consolidated_search_configuration_for_beta.lower
    ci_upper: consolidated_search_configuration_for_beta.upper
    show_grid: true
    listen:
      Date: consolidated_search_configuration_for_beta.submission_date
      Percentile: consolidated_search_configuration_for_beta.parameter
      
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
    explore: consolidated_search_configuration_for_beta
    listens_to_filters: []
    field: consolidated_search_configuration_for_beta.submission_date

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
    explore: consolidated_search_configuration_for_beta
    listens_to_filters: []
    field: consolidated_search_configuration_for_beta.parameter
  