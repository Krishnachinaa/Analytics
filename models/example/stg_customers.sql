-- models/stg_customers.sql

select  customer_id,
    customer_name,
    city,
    created_date,age FROM {{source('ANALYTICS','CUSTOMERS')}}