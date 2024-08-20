with stg_pricebook as (
    select 
        *
    from {{ref('stg_salesforce__pricebook_entry')}}
),

stg_product as (
    select *
    from {{ref('stg_salesforce__product_2')}}
)

select 
    stg_pricebook.product2id as product_id
    ,stg_pricebook.pricebook_entry_id as pricebookentry_id
    ,stg_product."name" as product_name
    ,stg_pricebook.unitprice
    ,stg_product.productcode as product_code
    ,stg_product."description" as product_description
    ,stg_product.family as product_family
    ,stg_product.productclass as product_class
    ,stg_product.lastmodifieddate as lastmodifieddate

from 
    stg_pricebook 
left join 
    stg_product
on 
    stg_pricebook.product2id = stg_product.product_id 