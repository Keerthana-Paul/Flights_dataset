view: products {
  derived_table: {
    sql: SELECT * FROM `cloud-training-demos.looker_ecomm.products` LIMIT 5000
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: distribution_center_id {
    type: number
    sql: ${TABLE}.distribution_center_id ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  set: detail {
    fields: [
      sku,
      distribution_center_id,
      brand,
      retail_price,
      name,
      category,
      cost,
      department,
      id
    ]
  }
}
