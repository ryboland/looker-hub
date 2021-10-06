include: "/looker-hub/sync/views/sync.view.lkml"

explore: sync {
  sql_always_where: ${sync.submission_date} >= '2010-01-01' ;;
  view_name: sync

  always_filter: {
    filters: [
      submission_date: "28 days",
    ]
  }

  join: sync__application__metadata__payload__devices {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${sync__application__metadata__payload.devices}) AS sync__application__metadata__payload__devices ;;
  }

  join: sync__application__metadata__payload__devices__events {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${sync__application__metadata__payload__devices.events}) AS sync__application__metadata__payload__devices__events ;;
  }

  join: sync__application__metadata__payload__devices__events__f5_ {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${sync__application__metadata__payload__devices__events.f5_}) AS sync__application__metadata__payload__devices__events__f5_ ;;
  }

  join: sync__application__metadata__payload__devices__events__histograms__migrations {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${sync__application__metadata__payload__devices__events__histograms.migrations}) AS sync__application__metadata__payload__devices__events__histograms__migrations ;;
  }

  join: sync__application__metadata__payload__devices__events__histograms__migrations__os__syncs {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${sync__application__metadata__payload__devices__events__histograms__migrations__os.syncs}) AS sync__application__metadata__payload__devices__events__histograms__migrations__os__syncs ;;
  }

  join: sync__application__metadata__payload__devices__events__histograms__migrations__os__syncs__devices {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${sync__application__metadata__payload__devices__events__histograms__migrations__os__syncs.devices}) AS sync__application__metadata__payload__devices__events__histograms__migrations__os__syncs__devices ;;
  }

  join: sync__application__metadata__payload__devices__events__histograms__migrations__os__syncs__devices__engines {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${sync__application__metadata__payload__devices__events__histograms__migrations__os__syncs__devices.engines}) AS sync__application__metadata__payload__devices__events__histograms__migrations__os__syncs__devices__engines ;;
  }

  join: sync__application__metadata__payload__devices__events__histograms__migrations__os__syncs__devices__engines__failure_reason__incoming__outgoing {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${sync__application__metadata__payload__devices__events__histograms__migrations__os__syncs__devices__engines__failure_reason__incoming.outgoing}) AS sync__application__metadata__payload__devices__events__histograms__migrations__os__syncs__devices__engines__failure_reason__incoming__outgoing ;;
  }

  join: sync__application__metadata__payload__devices__events__histograms__migrations__os__syncs__devices__engines__failure_reason__incoming__outgoing__steps {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${sync__application__metadata__payload__devices__events__histograms__migrations__os__syncs__devices__engines__failure_reason__incoming__outgoing.steps}) AS sync__application__metadata__payload__devices__events__histograms__migrations__os__syncs__devices__engines__failure_reason__incoming__outgoing__steps ;;
  }

  join: sync__application__metadata__payload__devices__events__histograms__migrations__os__syncs__devices__engines__failure_reason__incoming__outgoing__steps__counts {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${sync__application__metadata__payload__devices__events__histograms__migrations__os__syncs__devices__engines__failure_reason__incoming__outgoing__steps.counts}) AS sync__application__metadata__payload__devices__events__histograms__migrations__os__syncs__devices__engines__failure_reason__incoming__outgoing__steps__counts ;;
  }

  join: sync__application__metadata__payload__devices__events__histograms__migrations__os__syncs__devices__engines__failure_reason__incoming__outgoing__steps__validation__failure_reason__problems {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${sync__application__metadata__payload__devices__events__histograms__migrations__os__syncs__devices__engines__failure_reason__incoming__outgoing__steps__validation__failure_reason.problems}) AS sync__application__metadata__payload__devices__events__histograms__migrations__os__syncs__devices__engines__failure_reason__incoming__outgoing__steps__validation__failure_reason__problems ;;
  }
}