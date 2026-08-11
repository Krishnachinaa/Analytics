{{ config(
    materialized='incremental',
    unique_key='customer_id'
) }}

select
    *
from {{ ref('customers') }}

{% if is_incremental() %}
where created_date > (
    select max(customers.created_date)
    from {{ this }}
)
{% endif %}