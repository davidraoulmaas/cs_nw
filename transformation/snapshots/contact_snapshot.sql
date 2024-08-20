{% snapshot dim_contact_snapshot %}

{{
    config(
      target_database='dbt',
      target_schema='snapshots',
      unique_key='contact_id',

      strategy='timestamp',
      updated_at='lastmodifieddate',
    )
}}

select * from {{ source('main', 'dim_contact') }}

{% endsnapshot %}