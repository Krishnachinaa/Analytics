{{config(materialized='table')}}

select *
from {{ref('cust_ephr')}}