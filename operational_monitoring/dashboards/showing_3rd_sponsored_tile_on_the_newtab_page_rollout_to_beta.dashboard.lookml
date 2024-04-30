
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

- dashboard: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta
  title: Showing 3Rd Sponsored Tile On The Newtab Page Rollout To Beta
  layout: newspaper
  preferred_viewer: dashboards-next

  elements:
  - title: Search Count
    name: Search Count_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta
    type: looker_line
    fields: [
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.submission_date,
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.branch,
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.point
    ]
    pivots: [
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.branch
    ]
    filters:
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.metric: 'search_count'
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.statistic: mean
    row: 0
    col: 0
    width: 12
    height: 8
    field_x: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.submission_date
    field_y: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.point
    log_scale: false
    ci_lower: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.lower
    ci_upper: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.upper
    show_grid: true
    listen:
      Date: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Qualified Cumulative Days Of Use
    name: Qualified Cumulative Days Of Use_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta
    type: looker_line
    fields: [
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.submission_date,
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.branch,
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.point
    ]
    pivots: [
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.branch
    ]
    filters:
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.metric: 'qualified_cumulative_days_of_use'
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.statistic: mean
    row: 0
    col: 12
    width: 12
    height: 8
    field_x: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.submission_date
    field_y: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.point
    log_scale: false
    ci_lower: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.lower
    ci_upper: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.upper
    show_grid: true
    listen:
      Date: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Retained
    name: Retained_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta
    type: looker_line
    fields: [
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.submission_date,
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.branch,
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.point
    ]
    pivots: [
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.branch
    ]
    filters:
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.metric: 'retained'
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.statistic: mean
    row: 10
    col: 0
    width: 12
    height: 8
    field_x: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.submission_date
    field_y: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.point
    log_scale: false
    ci_lower: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.lower
    ci_upper: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.upper
    show_grid: true
    listen:
      Date: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Uri Count
    name: Uri Count_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta
    type: looker_line
    fields: [
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.submission_date,
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.branch,
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.point
    ]
    pivots: [
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.branch
    ]
    filters:
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.metric: 'uri_count'
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.statistic: mean
    row: 10
    col: 12
    width: 12
    height: 8
    field_x: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.submission_date
    field_y: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.point
    log_scale: false
    ci_lower: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.lower
    ci_upper: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.upper
    show_grid: true
    listen:
      Date: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Days Of Use
    name: Days Of Use_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta
    type: looker_line
    fields: [
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.submission_date,
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.branch,
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.point
    ]
    pivots: [
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.branch
    ]
    filters:
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.metric: 'days_of_use'
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.statistic: mean
    row: 20
    col: 0
    width: 12
    height: 8
    field_x: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.submission_date
    field_y: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.point
    log_scale: false
    ci_lower: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.lower
    ci_upper: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.upper
    show_grid: true
    listen:
      Date: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Ad Clicks
    name: Ad Clicks_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta
    type: looker_line
    fields: [
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.submission_date,
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.branch,
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.point
    ]
    pivots: [
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.branch
    ]
    filters:
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.metric: 'ad_clicks'
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.statistic: mean
    row: 20
    col: 12
    width: 12
    height: 8
    field_x: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.submission_date
    field_y: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.point
    log_scale: false
    ci_lower: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.lower
    ci_upper: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.upper
    show_grid: true
    listen:
      Date: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Active Hours
    name: Active Hours_mean
    note_state: expanded
    note_display: above
    note_text: Mean
    explore: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta
    type: looker_line
    fields: [
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.submission_date,
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.branch,
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.point
    ]
    pivots: [
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.branch
    ]
    filters:
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.metric: 'active_hours'
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.statistic: mean
    row: 30
    col: 0
    width: 12
    height: 8
    field_x: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.submission_date
    field_y: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.point
    log_scale: false
    ci_lower: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.lower
    ci_upper: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.upper
    show_grid: true
    listen:
      Date: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.submission_date
      
    enabled: "#3FE1B0"
    disabled: "#0060E0"
    defaults_version: 0
  - title: Memory Total
    name: Memory Total_percentile
    note_state: expanded
    note_display: above
    note_text: Percentile
    explore: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta
    type: "ci-line-chart"
    fields: [
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.submission_date,
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.branch,
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.upper,
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.lower,
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.point
    ]
    pivots: [
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.branch
    ]
    filters:
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.metric: 'memory_total'
      showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.statistic: percentile
    row: 30
    col: 12
    width: 12
    height: 8
    field_x: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.submission_date
    field_y: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.point
    log_scale: false
    ci_lower: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.lower
    ci_upper: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.upper
    show_grid: true
    listen:
      Date: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.submission_date
      Percentile: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.parameter
      
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
    explore: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta
    listens_to_filters: []
    field: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.submission_date

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
    explore: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta
    listens_to_filters: []
    field: showing_3rd_sponsored_tile_on_the_newtab_page_rollout_to_beta.parameter
  