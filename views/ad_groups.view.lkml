view: ad_groups {
  derived_table: {
    sql: SELECT * FROM `cloud-training-demos.looker_ecomm.ad_groups` LIMIT 5000
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: ad_type {
    type: string
    sql: ${TABLE}.ad_type ;;
  }

  dimension: headline {
    type: string
    sql: ${TABLE}.headline ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: ad_id {
    type: number
    sql: ${TABLE}.ad_id ;;
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

  set: detail {
    fields: [
      ad_type,
      headline,
      campaign_id,
      name,
      ad_id,
      created_at,
      period
    ]
  }
}
