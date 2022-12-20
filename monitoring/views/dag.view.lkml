
# *Do not manually modify this file*
#
# This file has been generated via https://github.com/mozilla/lookml-generator
# You can extend this view in the looker-spoke-default project (https://github.com/mozilla/looker-spoke-default)

view: dag {
  dimension: concurrency {
    sql: ${TABLE}.concurrency ;;
    type: number
  }

  dimension: dag_id {
    sql: ${TABLE}.dag_id ;;
    type: string
    description: "Airflow DAG id (<root_dag_id>.<subdag_id>)"
  }

  dimension: has_task_concurrency_limits {
    sql: ${TABLE}.has_task_concurrency_limits ;;
    type: yesno
  }

  dimension: is_paused {
    sql: ${TABLE}.is_paused ;;
    type: yesno
  }

  dimension: is_subdag {
    sql: ${TABLE}.is_subdag ;;
    type: yesno
    description: "Indicates if this DAG is a subdag"
  }

  dimension: max_active_runs {
    sql: ${TABLE}.max_active_runs ;;
    type: number
  }

  dimension: owners {
    sql: ${TABLE}.owners ;;
    type: string
    description: "DAG owners (comma separated)"
  }

  dimension: root_dag_id {
    sql: ${TABLE}.root_dag_id ;;
    type: string
    description: "Airflow Root DAG id"
  }

  dimension: subdag_id {
    sql: ${TABLE}.subdag_id ;;
    type: string
    description: "Airflow subdag id"
  }

  sql_table_name: `mozdata.monitoring.airflow_dag` ;;
}