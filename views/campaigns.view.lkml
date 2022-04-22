view: campaigns {
  derived_table: {
    sql: SELECT * FROM `cloud-training-demos.looker_ecomm.campaigns` LIMIT 5000
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: created_at {
    type: date
    datatype: date
    sql: ${TABLE}.created_at ;;
  }

  dimension: period {
    type: number
    sql: ${TABLE}.period ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: advertising_channel {
    type: string
    sql: ${TABLE}.advertising_channel ;;
  }

  dimension: bid_type {
    type: string
    sql: ${TABLE}.bid_type ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  set: detail {
    fields: [
      created_at,
      period,
      campaign_name,
      amount,
      advertising_channel,
      bid_type,
      id
    ]
  }
}
