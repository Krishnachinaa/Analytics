{{ config(materialized='table') }}

select
    customer_id,
    customer_name,
    city,
    created_date,
    age,
    age_group
from {{ ref('customer_age_groups') }}