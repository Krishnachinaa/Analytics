{% snapshot customers_snapshot %}

{{
    config(
        target_schema='snapshots',
        unique_key='customer_id',
        strategy='timestamp',
        updated_at='updated_date'
    )
}}

select *
from {{ source('ANALYTICS', 'CUSTOMERS') }}

{% endsnapshot %}