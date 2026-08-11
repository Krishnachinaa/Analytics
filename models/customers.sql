{{ config(materialized='view') }}
 
select
customer_id,
    customer_name,
    city,
    created_date,
    age
from {{ ref('stg_customers') }}