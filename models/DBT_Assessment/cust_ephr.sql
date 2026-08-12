{{config(materialized='ephemeral')}}

select 
customer_id,
customer_name,
city,
dob,
case when DATEDIFF('year', dob, CURRENT_DATE()) < 18 then 'Under 18'
     when DATEDIFF('year', dob, CURRENT_DATE()) BETWEEN 18 AND 25 then '18-25'
     when DATEDIFF('year', dob, CURRENT_DATE()) BETWEEN 26 AND 35 then '26-35'
     when DATEDIFF('year', dob, CURRENT_DATE()) BETWEEN 36 AND 50 then '36-50'
   else '50+'
end AS age_group 
from {{source('ANALYTICS','CUSTOMER_STG')}}