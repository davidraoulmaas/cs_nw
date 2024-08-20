with source as (

    select * from {{ source('salesforce', 'pricebook_entry') }}

),

renamed as (

    select
        {{ build_key_from_columns(source('salesforce', 'pricebook_entry'),['id','pricebook2id' ]) }} as grain_id,  
        id as pricebook_entry_id,
        pricebook2id,
        product2id,
        unitprice,
        isactive,
        usestandardprice,
        createddate,
        createdbyid,
        lastmodifieddate,
        lastmodifiedbyid,
        systemmodstamp,
        isdeleted,
        isarchived

    from source

),

mark_real_diffs as (

  select
      *,
      coalesce(
          lag(grain_id) over (partition by product2id order by lastmodifieddate),
          'first_record'
      ) as previous_grain_id,
      case
          when grain_id != previous_grain_id then true 
          else false
      end as is_real_diff

  from renamed

)

select * from mark_real_diffs where is_real_diff
