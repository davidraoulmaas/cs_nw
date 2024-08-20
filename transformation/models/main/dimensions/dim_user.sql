with stg_user as (
    select 
        *
    from {{ref('stg_salesforce__user')}}
),

stg_role as (
    select 
        *
    from {{ref('stg_salesforce__user_role')}}
)

select
    "user_id"
    ,username
    ,firstname
    ,lastname 
    ,stg_role.name as role_name
    ,stg_user.lastmodifieddate
from 
    stg_user 
left join
    stg_role
on 
    stg_user.userroleid = stg_role.user_role_id 
