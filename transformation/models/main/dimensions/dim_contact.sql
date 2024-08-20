with stg_contact as (
    select 
        *
    from {{ref('stg_salesforce__contact')}}
)

select
    contact_id 
    ,salutation
    ,firstname
    ,lastname
    ,otherstreet
    ,othercity
    ,otherstate
    ,otherpostalcode
    ,othercountry
    ,mailingstreet
    ,mailingcity
    ,mailingstate
    ,mailingpostalcode
    ,mailingcountry
    ,phone
    ,email
    ,title
    ,leadsource 
    ,birthdate
    ,lastmodifieddate
from 
    stg_contact 
