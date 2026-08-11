select
    order_id,
    customer_id,
    order_date,
    order_amount
from {{ source('ANALYTICS', 'ORDERS') }}