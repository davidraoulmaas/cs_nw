with stg_opp as (
    select 
        *
    from {{ref('stg_salesforce__opportunity')}}
)

select
    opportunity_id
    ,accountid as opportunity_account_id
    ,"name" as oppportunity_name
    ,"description" as opportunity_description
    ,"stagename" as opportunity_stagename
    ,amount as opportunity_amount
    ,probability as opportunity_probability
    ,expectedrevenue as opportunity_expected_revenue
    ,leadsource as opportunity_leadsource
    ,isclosed as opportunity_isclosed
    ,iswon as opportunity_iswon
    ,forecastcategory as opportunity_forecastcategory
    ,ownerid as opportunity_owner_id
    ,lastmodifieddate 
from 
    stg_opp 
