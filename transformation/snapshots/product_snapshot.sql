{% snapshot dim_product_snapshot %}

{{
    config(
      target_database='dbt',
      target_schema='snapshots',
      unique_key='product_id',

      strategy='timestamp',
      updated_at='lastmodifieddate',
    )
}}

select * from {{ source('main', 'dim_product') }}

{% endsnapshot %}