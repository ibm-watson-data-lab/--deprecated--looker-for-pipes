- view: contact
  sql_table_name: 'SF_CONTACT'
  fields:

  - dimension: id
    primary_key: true
    sql: ${TABLE}.ID

  - dimension: _id
    sql: ${TABLE}._ID

  - dimension: _rev
    sql: ${TABLE}._REV

  - dimension: attributes_type
    sql: ${TABLE}.ATTRIBUTES_TYPE

  - dimension: attributes_url
    sql: ${TABLE}.ATTRIBUTES_URL

  - dimension: created_by_id
    sql: ${TABLE}.CREATEDBYID

  - dimension_group: created
    type: time
    timeframes: [date, month, week, year]
    sql: TO_DATE(substring(${TABLE}.CREATEDDATE,1,10) || ' ' || substring(${TABLE}.CREATEDDATE,12,8),'YYYY-MM-DD HH24:MI:SS')

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

  - dimension: is_deleted
    type: number
    sql: ${TABLE}.ISDELETED

  - dimension: is_email_bounced
    type: number
    sql: ${TABLE}.ISEMAILBOUNCED

  - dimension: last_modified_by_id
    sql: ${TABLE}.LASTMODIFIEDBYID

  - dimension: last_modified
    type: time
    timeframes: [date, month, week]
    sql: TO_DATE(substring(${TABLE}.LASTMODIFIEDDATE,1,10) || ' ' || substring(${TABLE}.LASTMODIFIEDDATE,12,8),'YYYY-MM-DD HH24:MI:SS') 

  - dimension: last_name
    sql: ${TABLE}.LASTNAME

  - dimension: mailing_address_country
    sql: ${TABLE}.MAILINGADDRESS_COUNTRY

  - dimension: mailing_country
    sql: ${TABLE}.MAILINGCOUNTRY

  - dimension: name
    sql: ${TABLE}.NAME

  - dimension: owner_id
    sql: ${TABLE}.OWNERID

  - dimension: pt_type
    sql: ${TABLE}.PT_TYPE

  - dimension: source_group
    sql: ${TABLE}.SOURCE_GROUP__C

  - dimension: system_modstamp
    sql: ${TABLE}.SYSTEMMODSTAMP

  - dimension: title
    sql: ${TABLE}.TITLE

  - measure: count
    type: count
    drill_fields: [id, first_name, last_name, name]
