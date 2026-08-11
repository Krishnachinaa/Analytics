select
    customer_id,
    customer_name,
    city,
    created_date,
    age
from {{ source('raw', 'customers') }}