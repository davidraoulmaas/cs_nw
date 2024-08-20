{% snapshot fct_case_snapshot %}

{{
    config(
      target_database='dbt',
      target_schema='snapshots',
      unique_key='case_id',

      strategy='timestamp',
      updated_at='lastmodifieddate',
    )
}}

select * from {{ source('main', 'fct_case') }}

{% endsnapshot %}