with stg_case as (
    select 
        *
    from {{ref('stg_salesforce__case')}}
),

stg_solution as (
    select *
    from {{ref('stg_salesforce__solution')}}
)

select
    case_id
    ,casenumber
    ,accountid as case_account_id
    ,contactid as case_contact_id
    ,assetid as case_asset_id
    ,productid as case_product_id
    ,"type" as case_type
    ,stg_case."status" as case_status
    ,"reason" as case_reason
    ,origin as case_origin
    ,"subject" as case_subject
    ,"priority" as case_priority
    ,cast(isclosed as boolean) case_isclosed
    ,closeddate as case_closeddate
    ,stg_solution.solutionnumber as case_solutionnumber
    ,stg_solution.solutionname as case_solutionname
    ,stg_solution.status as case_solution_status
    ,stg_solution.solutionnote as case_solutionnote
    ,stg_case.ownerid as case_owner_id
    ,stg_solution.ownerid as case_solution_owner_id
    ,stg_solution.lastmodifieddate 
from 
    stg_case 
left join 
    stg_solution
on 
    stg_case.case_id = stg_solution.caseid 
