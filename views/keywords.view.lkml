view: keywords {
  derived_table: {
    sql: SELECT * FROM `cloud-training-demos.looker_ecomm.keywords` LIMIT 5000
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: quality_score {
    type: number
    sql: ${TABLE}.quality_score ;;
  }

  dimension: bidding_strategy_type {
    type: string
    sql: ${TABLE}.bidding_strategy_type ;;
  }

  dimension: system_serving_status {
    type: string
    sql: ${TABLE}.system_serving_status ;;
  }

  dimension: period {
    type: number
    sql: ${TABLE}.period ;;
  }

  dimension: cpc_bid_amount {
    type: number
    sql: ${TABLE}.cpc_bid_amount ;;
  }

  dimension: criterion_name {
    type: string
    sql: ${TABLE}.criterion_name ;;
  }

  dimension: created_at {
    type: date
    datatype: date
    sql: ${TABLE}.created_at ;;
  }

  dimension: ad_id {
    type: number
    sql: ${TABLE}.ad_id ;;
  }

  dimension: keyword_match_type {
    type: string
    sql: ${TABLE}.keyword_match_type ;;
  }

  dimension: keyword_id {
    type: number
    sql: ${TABLE}.keyword_id ;;
  }

  set: detail {
    fields: [
      quality_score,
      bidding_strategy_type,
      system_serving_status,
      period,
      cpc_bid_amount,
      criterion_name,
      created_at,
      ad_id,
      keyword_match_type,
      keyword_id
    ]
  }
}
