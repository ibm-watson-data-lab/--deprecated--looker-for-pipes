- view: lead
  sql_table_name: 'SF_LEAD'
  fields:

  - dimension: id
    primary_key: true
    sql: ${TABLE}.ID

  - dimension: _id
    sql: ${TABLE}._ID

#   - dimension: _rev
#     sql: ${TABLE}."_rev"

  - dimension: address_country
    sql: ${TABLE}.ADDRESS_COUNTRY

#   - dimension: attributes_type
#     sql: ${TABLE}."attributes_type"

  - dimension: attributes_url
    sql: ${TABLE}.ATTRIBUTES_URL

  - dimension: company
    sql: ${TABLE}.COMPANY

  - dimension: converted_account_id
    sql: ${TABLE}.CONVERTEDACCOUNTID

  - dimension: converted_contact_id
    sql: ${TABLE}.CONVERTEDCONTACTID

  - dimension: converted
    sql: ${TABLE}.CONVERTEDDATE
    type: time
    timeframes: [date, month, week, year]
    sql: TO_DATE(substring(${TABLE}.CONVERTEDDATE,1,10) || ' ' || substring(${TABLE}.CONVERTEDDATE,12,8),'YYYY-MM-DD HH24:MI:SS') 

  - dimension: converted_opportunity_id
    sql: ${TABLE}.CONVERTEDOPPORTUNITYID

  - dimension: country
    sql: ${TABLE}.COUNTRY

  - dimension: created_by_id
    sql: ${TABLE}.CREATEDBYID

  - dimension: created
    type: time
    timeframes: [date, month, week, year]
    sql: TO_DATE(substring(${TABLE}.CREATEDDATE,1,10) || ' ' || substring(${TABLE}.CREATEDDATE,12,8),'YYYY-MM-DD HH24:MI:SS') 

  - dimension: created_vs_handoff
    sql: ${TABLE}.CREATED_VS_HANDOFF__C

  - dimension: email
    sql: ${TABLE}.EMAIL

  - dimension: first_name
    sql: ${TABLE}.FIRSTNAME

  - dimension: geo_2
    sql: ${TABLE}.GEO_2__C

  - dimension: geo
    sql: ${TABLE}.GEO__C

  - dimension: has_opted_out_of_email
    type: number
    sql: ${TABLE}.HASOPTEDOUTOFEMAIL

  - dimension: is_converted
    type: number
    sql: ${TABLE}.ISCONVERTED

  - dimension: is_deleted
    type: number
    sql: ${TABLE}.ISDELETED

  - dimension: is_unread_by_owner
    type: number
    sql: ${TABLE}.ISUNREADBYOWNER
  
  - dimension: last_modified_by_id
    sql: ${TABLE}.LASTMODIFIEDBYID

  - dimension: last_modified
    type: time
    timeframes: [date, month, week]
    sql: TO_DATE(substring(${TABLE}.LASTMODIFIEDDATE,1,10) || ' ' || substring(${TABLE}.LASTMODIFIEDDATE,12,8),'YYYY-MM-DD HH24:MI:SS') 

  - dimension: last_name
    sql: ${TABLE}.LASTNAME

  - dimension: lead_source
    sql: ${TABLE}.LEADSOURCE

  - dimension: milestone_reporting_db
    type: number
    sql: ${TABLE}.MILESTONE_REPORTING_DB__C

  - dimension: milestone_reporting_docs
    type: number
    sql: ${TABLE}.MILESTONE_REPORTING_DOCS__C

  - dimension: milestone_reporting_funnel_rpt
    sql: ${TABLE}.MILESTONE_REPORTING_FUNNEL_RPT__C

  - dimension: milestone_reporting_funnel_sort
    type: number
    sql: ${TABLE}.MILESTONE_REPORTING_FUNNEL_SORT__C

  - dimension: milestone_reporting_view
    type: number
    sql: ${TABLE}.MILESTONE_REPORTING_VIEW__C

  - dimension: name
    sql: ${TABLE}.NAME

  - dimension: owner_id
    sql: ${TABLE}.OWNERID

  - dimension: pt_type
    sql: ${TABLE}.PT_TYPE

  - dimension: sales_connect_opp_number
    sql: ${TABLE}.SALES_CONNECT_OPPNUMBER__C

  - dimension: source_group
    sql: ${TABLE}.SOURCE_GROUP__C

  - dimension: status
    sql: ${TABLE}.STATUS

  - dimension: system_modstamp
    sql: ${TABLE}.SYSTEMMODSTAMP

  - dimension: time_to_opportunity
    type: number
    sql: ${TABLE}.TIMETOOPPORTUNITY__C

  - dimension: title
    sql: ${TABLE}.TITLE

  - dimension: user_agent
    type: number
    sql: ${TABLE}.USER_AGENT__C

  - measure: count
    type: count
    drill_fields: [id, first_name, last_name, name]
