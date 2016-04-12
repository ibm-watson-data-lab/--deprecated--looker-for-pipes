- view: campaign
  sql_table_name: 'SF_CAMPAIGN'
  fields:

  - dimension: id
    primary_key: true
    sql: ${TABLE}.ID

  - dimension: _id
    sql: ${TABLE}._ID

#   - dimension: _rev
#     sql: ${TABLE}._rev

  - dimension: actual_cost
    type: number
    sql: ${TABLE}.ACTUALCOST

  - dimension: amount_all_opportunities
    type: number
    sql: ${TABLE}.AMOUNTALLOPPORTUNITIES

  - dimension: amount_won_opportunities
    type: number
    sql: ${TABLE}.AMOUNTWONOPPORTUNITIES

  - dimension: attributes_type
    sql: ${TABLE}.ATTRIBUTES_TYPE

  - dimension: attributes_url
    sql: ${TABLE}.ATTRIBUTES_URL

  - dimension: cost_lead
    type: number
    sql: ${TABLE}.COST_LEAD__C

  - dimension: created_by_id
    sql: ${TABLE}.CREATEDBYID

  - dimension: created
    type: time
    timeframes: [date, month, week, year]
    sql: TO_DATE(substring(${TABLE}.CREATEDDATE,1,10) || ' ' || substring(${TABLE}.CREATEDDATE,12,8),'YYYY-MM-DD HH24:MI:SS') 
  
  - dimension: end
    type: time
    timeframes: [date, month, week, year]
    sql: TO_DATE(substring(${TABLE}.ENDDATE,1,10) || ' ' || substring(${TABLE}.ENDDATE,12,8),'YYYY-MM-DD HH24:MI:SS') 
  
  - dimension: expected_response
    type: number
    sql: ${TABLE}.EXPECTEDRESPONSE

  - dimension: is_active
    type: number
    sql: ${TABLE}.ISACTIVE

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

  - dimension: number_of_contacts
    type: number
    sql: ${TABLE}.NUMBEROFCONTACTS

  - dimension: number_of_converted_leads
    type: number
    sql: ${TABLE}.NUMBEROFCONVERTEDLEADS

  - dimension: number_of_leads
    type: number
    sql: ${TABLE}.NUMBEROFLEADS

  - dimension: number_of_opportunities
    type: number
    sql: ${TABLE}.NUMBEROFOPPORTUNITIES

  - dimension: number_of_responses
    type: number
    sql: ${TABLE}.NUMBEROFRESPONSES

  - dimension: number_of_won_opportunities
    type: number
    sql: ${TABLE}.NUMBEROFWONOPPORTUNITIES

  - dimension: number_sent
    type: number
    sql: ${TABLE}.NUMBERSENT

  - dimension: owner_id
    sql: ${TABLE}.OWNERID

  - dimension: pt_type
    sql: ${TABLE}.PT_TYPE

  - dimension: start_date
    type: time
    timeframes: [date, month, week, year]
    sql: TO_DATE(substring(${TABLE}.STARTDATE,1,10) || ' ' || substring(${TABLE}.STARTDATE,12,8),'YYYY-MM-DD HH24:MI:SS') 

  - dimension: status
    sql: ${TABLE}.STATUS

  - dimension: system_modstamp
    sql: ${TABLE}.SYSTEMMODSTAMP

  - dimension: type
    sql: ${TABLE}.TYPE

  - measure: count
    type: count
    drill_fields: [id, name]
