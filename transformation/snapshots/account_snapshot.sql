{% snapshot dim_account_snapshot %}

{{
    config(
      target_database='dbt',
      target_schema='snapshots',
      unique_key='account_id',

      strategy='timestamp',
      updated_at='lastmodifieddate',
    )
}}

select * from {{ source('main', 'dim_account') }}

{% endsnapshot %}