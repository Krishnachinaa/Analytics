{{config(materialized='incremental')}}

select * from {{source('ANALYTICS','CUSTOMER_STG')}}

 {% if is_incremental() %}
where created_at >
(
select max(created_at)
from {{this}}
)
 {% endif %}