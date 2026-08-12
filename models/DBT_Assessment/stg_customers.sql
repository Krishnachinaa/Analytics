{{config(materialized='table')}}

select *
from {{source('ANALYTICS','CUSTOMER_STG')}}