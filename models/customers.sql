{{ config(materialized='view') }}
 
select
customer_id,
    customer_name,
    city,
    created_date
from {{ ref('stg_customers') }}