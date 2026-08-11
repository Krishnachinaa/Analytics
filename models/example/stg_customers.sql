-- models/stg_customers.sql

{{ config(materialized='view') }}

select
    customer_id,
    customer_name,
    city
from {{ ref('customers') }}