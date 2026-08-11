{{ config(materialized='table') }}

select
    customer_id,
    order_amount,
    {{ calculate_tax('order_amount') }} as tax_amount
from {{ ref('orders') }}