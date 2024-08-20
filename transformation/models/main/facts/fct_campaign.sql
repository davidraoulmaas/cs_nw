with stg_campaign as (
    select 
        *
    from {{ref('stg_salesforce__campaign')}}
)

select
    campaign_id
    ,expectedrevenue as campaign_expectedrevenue
    ,budgetedcost as campaign_budgetedcost
    ,actualcost as campaign_actualcost
    ,numbersent as campaign_numbersent
    ,lastmodifieddate 
from 
    stg_campaign 

/*ToDo: Implement incremental loading for daily view*/