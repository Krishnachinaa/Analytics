{{ config(materialized='table') }}

select
    customer_id,
    customer_name,
    age
from {{ ref('customer_age') }}