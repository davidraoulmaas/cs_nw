with stg_campaign as (
    select 
        *
    from {{ref('stg_salesforce__campaign')}}
)

select
    campaign_id
    ,"name" as campaign_name
    ,parentid as campaign_parent_id
    ,"type" as campaign_type
    ,"status" as campaign_status
    ,"startdate" as campaign_startdate
    ,"enddate" as campaign_enddate
    ,ownerid as campaign_owner_id
    ,createddate
    ,lastmodifieddate
from 
    stg_campaign 
