- view: opportunity
  sql_table_name: 'SF_OPPORTUNITY'

  fields:

  - dimension: acv
    type: number
    sql: ${TABLE}.ACV__C

  - dimension: account_id
    sql: ${TABLE}.ACCOUNTID

  - dimension: cra_compelling_reason_to_act
    sql: ${TABLE}.CRA_COMPELLING_REASON_TO_ACT__C

  - dimension: campaign_id
    sql: ${TABLE}.CAMPAIGNID

  - dimension_group: close
    sql: ${TABLE}.CLOSEDATE
    type: time
    timeframes: [date,week,month,year]
    convert_tz: false
    
  - dimension: contract_term
    sql: ${TABLE}.CONTRACT_TERM__C

  - dimension: created_by_id
    sql: ${TABLE}.CREATEDBYID

  - dimension_group: created
    type: time
    timeframes: [date, month, week, year]
    sql: TO_DATE(substring(${TABLE}.CREATEDDATE,1,10) || ' ' || substring(${TABLE}.CREATEDDATE,12,8),'YYYY-MM-DD HH24:MI:SS') 

  - dimension: executive_sponsor
    sql: ${TABLE}.EXECUTIVE_SPONSOR__C

  - dimension: fiscal
    sql: ${TABLE}.FISCAL

  - dimension: fiscal_quarter
    type: number
    sql: ${TABLE}.FISCALQUARTER

  - dimension: fiscal_year
    type: number
    sql: ${TABLE}.FISCALYEAR

  - dimension: forecast_category
    sql: ${TABLE}.FORECASTCATEGORY

  - dimension: forecast_category_name
    sql: ${TABLE}.FORECASTCATEGORYNAME

  - dimension: has_opportunity_line_item
    type: number
    sql: ${TABLE}.HASOPPORTUNITYLINEITEM

  - dimension: ibm_forecast_stage
    sql: ${TABLE}.IBM_FORECAST_STAGE__C

  - dimension: ibm_opp_id
    sql: ${TABLE}.IBM_OPP_ID__C

  - dimension: ibm_sales_stage
    sql: ${TABLE}.IBM_SALES_STAGE__C

  - dimension: imt
    sql: ${TABLE}.IMT__C

  - dimension: iot
    sql: ${TABLE}.IOT__C

  - dimension: id
    sql: ${TABLE}.ID
    primary_key: true

  - dimension: is_closed
    type: number
    sql: ${TABLE}.ISCLOSED

  - dimension: is_deleted
    type: number
    sql: ${TABLE}.ISDELETED

  - dimension: is_won
    type: number
    sql: ${TABLE}.ISWON

  - dimension: is_this_follow_on_to_poc
    sql: ${TABLE}.IS_THIS_FOLLOW_ON_TO_POC__C

  - dimension: last_modified_by_id
    sql: ${TABLE}.LASTMODIFIEDBYID

  - dimension: last_modified
    type: time
    timeframes: [date, month, week]
    sql: TO_DATE(substring(${TABLE}.LASTMODIFIEDDATE,1,10) || ' ' || substring(${TABLE}.LASTMODIFIEDDATE,12,8),'YYYY-MM-DD HH24:MI:SS')

  - dimension: lead_source
    sql: ${TABLE}.LEADSOURCE

  - dimension: lead_source_group
    sql: ${TABLE}.LEAD_SOURCE_GROUP__C

  - dimension: lifetime_expected_value
    type: number
    sql: ${TABLE}.LIFETIME_EXPECTED_VALUE__C

#   - dimension: mrr
#     sql: ${TABLE}."MRR__c"

  - dimension: name
    sql: ${TABLE}.NAME

  - dimension: new_appt
    sql: ${TABLE}.NEW_APPT_DATE__C
    type: time
    timeframes: [date, month, week, year]
    convert_tz: false

  - dimension: number_of_deals
    type: number
    sql: ${TABLE}.NUMBER_OF_DEALS__C

  - dimension: owner_id
    sql: ${TABLE}.OWNERID

  - dimension: probability
    type: number
    sql: ${TABLE}.PROBABILITY

  - dimension: probability_of_closure_cq
    sql: ${TABLE}.PROBABILITY_OF_CLOSURE_CQ__C

  - dimension: projected_turnover_date
    sql: ${TABLE}.PROJECTED_TURNOVER_DATE__C

  - dimension: revenue_type_2
    sql: ${TABLE}.REVENUE_TYPE2__C

  - dimension: signings2x
    type: number
    sql: ${TABLE}.SIGNINGS2X__C

  - dimension: stage_name
    sql: ${TABLE}.STAGENAME

  - dimension: steps_to_closure__c
    sql: ${TABLE}.STEPS_TO_CLOSURE__C

  - dimension: support_plan
    sql: ${TABLE}.SUPPORTPLAN__C

  - dimension: support_contact1
    sql: ${TABLE}.SUPPORT_CONTACT1__C

  - dimension: systemmodstamp
    sql: ${TABLE}.SYSTEMMODSTAMP

  - dimension: total_revenue_1
    type: number
    sql: ${TABLE}.TOTAL_REVENUE1__C

  - dimension: type
    sql: ${TABLE}.TYPE

  - dimension: type_finance
    sql: ${TABLE}.TYPE_FINANCE__C

  - dimension: uvp_unique_value_proposition
    sql: ${TABLE}.UVP_UNIQUE_VALUE_PROPOSITION__C

  - dimension: _id
    sql: ${TABLE}._ID

  - dimension: _rev
    sql: ${TABLE}._REV

#   - dimension: attributes_type
#     sql: ${TABLE}."Attributes_Type"

  - dimension: attributes_url
    sql: ${TABLE}.ATTRIBUTES_URL

  - dimension: pt_type
    sql: ${TABLE}.PT_TYPE
  
  - measure: count
    type: count
    drill_fields: detail*
  
  - measure: count_won
    type: count
    filter: 
      is_won: 1
    drill_fields: detail*
      
  - measure: cumulative_total
    type: running_total
    sql: ${count}
    drill_fields: detail*
  
  - measure: total_acv
    type: sum
    sql: ${acv}
    value_format: '$#,##0.00'
    drill_fields: detail*
  
#   - measure: total_mrr
#     type: sum
#     sql: ${mrr}
#     value_format: '$#,##0.00'
#     drill_fields: detail*

  sets:
    detail:
      - close_date
      - created_date
      - id
      - mrr
      - name
      - probability
      - stagename
      - type
