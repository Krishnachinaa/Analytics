{{config(materialized='table')}}

select customer_id , customer_name,city 
from {{source('ANALYTICS','CUSTOMER_STG')}}