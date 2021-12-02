include: "/looker-hub/sync/views/sync.view.lkml"

explore: sync {
  sql_always_where: ${sync.submission_date} >= '2010-01-01' ;;
  view_name: sync

  always_filter: {
    filters: [
      submission_date: "28 days",
    ]
  }

  join: sync__payload__devices {
    label: "payload__devices"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${sync.payload__devices}) AS sync__payload__devices ;;
  }

  join: sync__payload__events {
    label: "payload__events"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${sync.payload__events}) AS sync__payload__events ;;
  }

  join: sync__payload__events__f5_ {
    label: "f5_"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${sync.f5_}) AS sync__payload__events__f5_ ;;
  }

  join: sync__payload__migrations {
    label: "payload__migrations"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${sync.payload__migrations}) AS sync__payload__migrations ;;
  }

  join: sync__payload__syncs {
    label: "payload__syncs"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${sync.payload__syncs}) AS sync__payload__syncs ;;
  }

  join: sync__payload__syncs__devices {
    label: "devices"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${sync.devices}) AS sync__payload__syncs__devices ;;
  }

  join: sync__payload__syncs__engines {
    label: "engines"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${sync.engines}) AS sync__payload__syncs__engines ;;
  }

  join: sync__payload__syncs__engines__outgoing {
    label: "outgoing"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${sync.outgoing}) AS sync__payload__syncs__engines__outgoing ;;
  }

  join: sync__payload__syncs__engines__steps {
    label: "steps"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${sync.steps}) AS sync__payload__syncs__engines__steps ;;
  }

  join: sync__payload__syncs__engines__steps__counts {
    label: "counts"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${sync.counts}) AS sync__payload__syncs__engines__steps__counts ;;
  }

  join: sync__payload__syncs__engines__validation__problems {
    label: "validation__problems"
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${sync.validation__problems}) AS sync__payload__syncs__engines__validation__problems ;;
  }
}