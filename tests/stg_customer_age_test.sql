SELECT
    customer_id,
    customer_name,
    dob,
    DATEDIFF('year', dob, CURRENT_DATE()) AS age
FROM {{ ref('stg_customers') }}
WHERE DATEDIFF('year', dob, CURRENT_DATE()) < 0