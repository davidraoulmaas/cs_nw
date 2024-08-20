{% snapshot dim_user_snapshot %}

{{
    config(
      target_database='dbt',
      target_schema='snapshots',
      unique_key='user_id',

      strategy='timestamp',
      updated_at='lastmodifieddate',
    )
}}

select * from {{ source('main', 'dim_user') }}

{% endsnapshot %}