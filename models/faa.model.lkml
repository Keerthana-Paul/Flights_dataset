connection: "baby_names"

# include all the views
include: "/views/**/*.view"

datagroup: faa_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: faa_default_datagroup

explore: users {}

explore: testing {}

explore: order_items {}

explore: inventory_items {}

explore: distribution_centers {}

explore: products {}

explore: events {}

explore: ad_events {}

explore: ad_groups {}

explore: campaigns {}

explore: keywords {}

explore: airport_test {}
