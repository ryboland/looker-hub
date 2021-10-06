include: "/looker-hub/fenix/views/migration.view.lkml"

explore: migration {
  sql_always_where: ${migration.submission_date} >= '2010-01-01' ;;
  view_label: " Migration"
  description: "Explore for the migration ping. A ping sent after a Fennec->Fenix migration was completed."
  view_name: migration

  always_filter: {
    filters: [
      channel: "mozdata.fenix.migration",
      submission_date: "28 days",
    ]
  }

  join: migration__client_info__events {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${migration.client_info__events}) AS migration__client_info__events ON ${migration.document_id} = ${migration__client_info__events.document_id} ;;
  }

  join: migration__client_info__events__extra {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${migration.client_info__events__extra}) AS migration__client_info__events__extra ON ${migration.document_id} = ${migration__client_info__events__extra.document_id} ;;
  }

  join: migration__client_info__events__metadata__metrics__boolean__counter__datetime__jwe {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${migration.client_info__events__metadata__metrics__boolean__counter__datetime__jwe}) AS migration__client_info__events__metadata__metrics__boolean__counter__datetime__jwe ON ${migration.document_id} = ${migration__client_info__events__metadata__metrics__boolean__counter__datetime__jwe.document_id} ;;
  }

  join: migration__client_info__events__metadata__metrics__boolean__counter__datetime__jwe__labeled_rate {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${migration.client_info__events__metadata__metrics__boolean__counter__datetime__jwe__labeled_rate}) AS migration__client_info__events__metadata__metrics__boolean__counter__datetime__jwe__labeled_rate ON ${migration.document_id} = ${migration__client_info__events__metadata__metrics__boolean__counter__datetime__jwe__labeled_rate.document_id} ;;
  }

  join: migration__client_info__events__metadata__metrics__boolean__counter__datetime__jwe__labeled_rate__value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${migration.client_info__events__metadata__metrics__boolean__counter__datetime__jwe__labeled_rate__value}) AS migration__client_info__events__metadata__metrics__boolean__counter__datetime__jwe__labeled_rate__value ON ${migration.document_id} = ${migration__client_info__events__metadata__metrics__boolean__counter__datetime__jwe__labeled_rate__value.document_id} ;;
  }

  join: migration__client_info__events__metadata__metrics__boolean__counter__datetime__jwe__labeled_rate__labeled_string__migration_migration_versions {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${migration.client_info__events__metadata__metrics__boolean__counter__datetime__jwe__labeled_rate__labeled_string__migration_migration_versions}) AS migration__client_info__events__metadata__metrics__boolean__counter__datetime__jwe__labeled_rate__labeled_string__migration_migration_versions ON ${migration.document_id} = ${migration__client_info__events__metadata__metrics__boolean__counter__datetime__jwe__labeled_rate__labeled_string__migration_migration_versions.document_id} ;;
  }

  join: migration__client_info__events__metadata__metrics__boolean__counter__datetime__jwe__labeled_rate__labeled_string__string__text {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${migration.client_info__events__metadata__metrics__boolean__counter__datetime__jwe__labeled_rate__labeled_string__string__text}) AS migration__client_info__events__metadata__metrics__boolean__counter__datetime__jwe__labeled_rate__labeled_string__string__text ON ${migration.document_id} = ${migration__client_info__events__metadata__metrics__boolean__counter__datetime__jwe__labeled_rate__labeled_string__string__text.document_id} ;;
  }

  join: migration__client_info__events__metadata__metrics__boolean__counter__datetime__jwe__labeled_rate__labeled_string__string__text__timespan__url {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${migration.client_info__events__metadata__metrics__boolean__counter__datetime__jwe__labeled_rate__labeled_string__string__text__timespan__url}) AS migration__client_info__events__metadata__metrics__boolean__counter__datetime__jwe__labeled_rate__labeled_string__string__text__timespan__url ON ${migration.document_id} = ${migration__client_info__events__metadata__metrics__boolean__counter__datetime__jwe__labeled_rate__labeled_string__string__text__timespan__url.document_id} ;;
  }

  join: migration__client_info__events__metadata__metrics__ping_info__experiments {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${migration.client_info__events__metadata__metrics__ping_info__experiments}) AS migration__client_info__events__metadata__metrics__ping_info__experiments ON ${migration.document_id} = ${migration__client_info__events__metadata__metrics__ping_info__experiments.document_id} ;;
  }

  join: migration__metrics__labeled_counter__glean_error_invalid_label {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${migration.metrics__labeled_counter__glean_error_invalid_label}) AS migration__metrics__labeled_counter__glean_error_invalid_label ON ${migration.document_id} = ${migration__metrics__labeled_counter__glean_error_invalid_label.document_id} ;;
  }

  join: migration__metrics__labeled_counter__glean_error_invalid_overflow {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${migration.metrics__labeled_counter__glean_error_invalid_overflow}) AS migration__metrics__labeled_counter__glean_error_invalid_overflow ON ${migration.document_id} = ${migration__metrics__labeled_counter__glean_error_invalid_overflow.document_id} ;;
  }

  join: migration__metrics__labeled_counter__glean_error_invalid_state {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${migration.metrics__labeled_counter__glean_error_invalid_state}) AS migration__metrics__labeled_counter__glean_error_invalid_state ON ${migration.document_id} = ${migration__metrics__labeled_counter__glean_error_invalid_state.document_id} ;;
  }

  join: migration__metrics__labeled_counter__glean_error_invalid_value {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${migration.metrics__labeled_counter__glean_error_invalid_value}) AS migration__metrics__labeled_counter__glean_error_invalid_value ON ${migration.document_id} = ${migration__metrics__labeled_counter__glean_error_invalid_value.document_id} ;;
  }

  join: migration__metrics__labeled_counter__migration_bookmarks_migrated {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${migration.metrics__labeled_counter__migration_bookmarks_migrated}) AS migration__metrics__labeled_counter__migration_bookmarks_migrated ON ${migration.document_id} = ${migration__metrics__labeled_counter__migration_bookmarks_migrated.document_id} ;;
  }

  join: migration__metrics__labeled_counter__migration_history_migrated {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${migration.metrics__labeled_counter__migration_history_migrated}) AS migration__metrics__labeled_counter__migration_history_migrated ON ${migration.document_id} = ${migration__metrics__labeled_counter__migration_history_migrated.document_id} ;;
  }

  join: migration__metrics__labeled_counter__migration_logins_failure_counts {
    relationship: one_to_many
    sql: LEFT JOIN UNNEST(${migration.metrics__labeled_counter__migration_logins_failure_counts}) AS migration__metrics__labeled_counter__migration_logins_failure_counts ON ${migration.document_id} = ${migration__metrics__labeled_counter__migration_logins_failure_counts.document_id} ;;
  }
}

explore: suggest__migration__metrics__labeled_counter__glean_error_invalid_label {
  hidden: yes
}

explore: suggest__migration__metrics__labeled_counter__glean_error_invalid_overflow {
  hidden: yes
}

explore: suggest__migration__metrics__labeled_counter__glean_error_invalid_state {
  hidden: yes
}

explore: suggest__migration__metrics__labeled_counter__glean_error_invalid_value {
  hidden: yes
}

explore: suggest__migration__metrics__labeled_counter__migration_bookmarks_migrated {
  hidden: yes
}

explore: suggest__migration__metrics__labeled_counter__migration_history_migrated {
  hidden: yes
}

explore: suggest__migration__metrics__labeled_counter__migration_logins_failure_counts {
  hidden: yes
}