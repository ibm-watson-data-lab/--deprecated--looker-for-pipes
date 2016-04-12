- view: campaign_member
  sql_table_name: 'SF_CAMPAIGNMEMBER'
  fields:

  - dimension: id
    primary_key: true
    sql: ${TABLE}.ID

  - dimension: _id
    sql: ${TABLE}._ID

#   - dimension: _rev
#     sql: ${TABLE}."_rev"

  - dimension: attributes_type
    sql: ${TABLE}.ATTRIBUTES_TYPE

  - dimension: attributes_url
    sql: ${TABLE}.ATTRIBUTES_URL

  - dimension: campaign_id
    sql: ${TABLE}.CAMPAIGNID

  - dimension: created_by_id
    sql: ${TABLE}.CREATEDBYID

  - dimension: created
    type: time
    timeframes: [date, month, week, year]
    sql: TO_DATE(substring(${TABLE}.CREATEDDATE,1,10) || ' ' || substring(${TABLE}.CREATEDDATE,12,8),'YYYY-MM-DD HH24:MI:SS') 

  - dimension: first_responded
    type: time
    timeframes: [date, month, week, year]
    sql: TO_DATE(substring(${TABLE}.FIRSTRESPONDEDDATE,1,10) || ' ' || substring(${TABLE}.FIRSTRESPONDEDDATE,12,8),'YYYY-MM-DD HH24:MI:SS') 

  - dimension: geo
    sql: ${TABLE}.GEO__C

  - dimension: has_responded
    type: number
    sql: ${TABLE}.HASRESPONDED

  - dimension: is_deleted
    type: number
    sql: ${TABLE}.ISDELETED

  - dimension: last_modified_by_id
    sql: ${TABLE}.LASTMODIFIEDBYID

  - dimension: last_modified
    type: time
    timeframes: [date, month, week]
    sql: TO_DATE(substring(${TABLE}.LASTMODIFIEDDATE,1,10) || ' ' || substring(${TABLE}.LASTMODIFIEDDATE,12,8),'YYYY-MM-DD HH24:MI:SS') 

  - dimension: lead_id
    sql: ${TABLE}.LEADID

  - dimension: net_new
    sql: ${TABLE}.NET_NEW__C

  - dimension: prospect_status
    sql: ${TABLE}.PROSPECT_STATUS__C

  - dimension: pt_type
    sql: ${TABLE}.PT_TYPE

  - dimension: status
    sql: ${TABLE}.STATUS

  - dimension: system_modstamp
    sql: ${TABLE}.SYSTEMMODSTAMP

  - measure: count
    type: count
    drill_fields: [id]
