{% snapshot dim_campaign_snapshot %}

{{
    config(
      target_database='dbt',
      target_schema='snapshots',
      unique_key='campaign_id',

      strategy='timestamp',
      updated_at='lastmodifieddate',
    )
}}

select * from {{ source('main', 'dim_campaign') }}

{% endsnapshot %}


{% snapshot fct_campaign_snapshot %}

{{
    config(
      target_database='dbt',
      target_schema='snapshots',
      unique_key='campaign_id',

      strategy='timestamp',
      updated_at='lastmodifieddate',
    )
}}

select * from {{ source('main', 'fct_campaign') }}

{% endsnapshot %}