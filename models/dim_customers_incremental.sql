{{ config(
    materialized='incremental',
    unique_key='customer_id'
) }}

select
    *
from {{ ref('ANALYTICS','stg_customers') }}

{% if is_incremental() %}
where created_date > (
    select MAX(created_date)
    from {{ this }}
)
{% endif %}