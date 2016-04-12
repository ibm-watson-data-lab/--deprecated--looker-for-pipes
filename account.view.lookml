- view: account
  sql_table_name: 'SF_ACCOUNT'
  fields:

  - dimension: id
    primary_key: true
    sql: ${TABLE}.ID

#   - dimension: _id
#     sql: ${TABLE}."_id"

  - dimension: _rev
    sql: ${TABLE}._REV

#   - dimension: attributes_type
#     sql: ${TABLE}."attributes_type"

  - dimension: attributes_url
    sql: ${TABLE}.ATTRIBUTES_URL

#   - dimension: billing_address_country
#     sql: ${TABLE}."BillingAddress_country"

  - dimension: billing_country
    sql: CASE WHEN ${TABLE}.BILLINGCOUNTRY = 'United States' THEN 'United States of America' ELSE ${TABLE}.BILLINGCOUNTRY END

  - dimension: created_by_id
    sql: ${TABLE}.CREATEDBYID

  - dimension_group: created
    type: time
    timeframes: [date, month, week, year]
    sql: TO_DATE(substring(${TABLE}.CREATEDDATE,1,10) || ' ' || substring(${TABLE}.CREATEDDATE,12,8),'YYYY-MM-DD HH24:MI:SS') 

  - dimension: is_deleted
    type: number
    sql: ${TABLE}.ISDELETED

  - dimension: last_modified_by_id
    sql: ${TABLE}.LASTMODIFIEDBYID

  - dimension: last_modified
    type: time
    timeframes: [date, month, week]
    sql: TO_DATE(substring(${TABLE}.LASTMODIFIEDDATE,1,10) || ' ' || substring(${TABLE}.LASTMODIFIEDDATE,12,8),'YYYY-MM-DD HH24:MI:SS') 

  - dimension: name
    sql: ${TABLE}.NAME

  - dimension: owner_id
    sql: ${TABLE}.OWNERID

#   - dimension: pt_type
#     sql: ${TABLE}."pt_type"

  - dimension: system_modstamp
    sql: ${TABLE}.SYSTEMMODSTAMP

  - dimension: total_number_of_nodes
    type: number
    sql: ${TABLE}.TOTAL_NUMBER_OF_NODES__C

  - measure: count
    type: count
    drill_fields: [id, name]
