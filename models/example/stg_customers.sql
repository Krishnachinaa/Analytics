-- models/stg_customers.sql

select  customer_id,
    customer_name,
    city FROM {{source('ANALYTICS','CUSTOMERS')}}