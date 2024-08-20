with stg_account as (
    select 
        *
    from {{ref('stg_salesforce__account')}}
)

select
    account_id 
    ,"name" as account_name
    ,"type" as account_type
    ,billingstreet
    ,billingcity
    ,billingstate
    ,billingpostalcode
    ,billingcountry
    ,shippingstreet
    ,shippingcity
    ,shippingstate
    ,shippingpostalcode
    ,shippingcountry
    ,accountnumber 
    ,phone 
    ,numberofemployees
    ,ownerid as account_owner_id
    ,lastmodifieddate
from 
    stg_account 
