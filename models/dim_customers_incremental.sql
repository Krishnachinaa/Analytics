{{ config(
    materialized='incremental',
    unique_key='customer_id'
) }}

select *
from {{ ref('stg_customers') }}

{% if is_incremental() %}
where created_date > (
    select max_created_date
    from (
        select max(created_date) as max_created_date
        from {{ this }}
    )
)
{% endif %}