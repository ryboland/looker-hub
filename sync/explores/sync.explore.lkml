include: "/looker-hub/sync/views/sync.view.lkml"

explore: sync {
  sql_always_where: ${sync.submission_date} >= '2010-01-01' ;;
  view_name: sync

  always_filter: {
    filters: [
      submission_date: "28 days",
    ]
  }
}