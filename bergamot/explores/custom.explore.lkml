include: "/looker-hub/bergamot/views/custom.view.lkml"

explore: custom {
  view_name: custom

  always_filter: {
    filters: [
      submission_date: "28 days",
    ]
  }
}