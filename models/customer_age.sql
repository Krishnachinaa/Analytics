{{ config(materialized='ephemeral') }}

select
    customer_id,
    customer_name,
    age,
    case
        when age < 18 then 'Under 18'
        when age between 18 and 24 then '18-24'
        when age between 25 and 34 then '25-34'
        when age between 35 and 44 then '35-44'
        when age between 45 and 54 then '45-54'
        else '55+'
    end as age_group
from {{ ref('stg_customers') }}