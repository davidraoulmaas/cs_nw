{% snapshot fct_opportunity_snapshot %}

{{
    config(
      target_database='dbt',
      target_schema='snapshots',
      unique_key='opportunity_id',

      strategy='timestamp',
      updated_at='lastmodifieddate',
    )
}}

select * from {{ source('main', 'fct_opportunity') }}

{% endsnapshot %}