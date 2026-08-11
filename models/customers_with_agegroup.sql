{{ config(materialized='table') }}

select
    customer_id,
    customer_name,
    age,
    age_group
from {{ ref('customer_age') }}