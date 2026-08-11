{{ config(materialized='view') }}
 
select
customer_id,
    customer_name,
    city,
    created_date,
    age,
    age_group
from {{ ref('stg_customers') }}