SELECT
    order_id,
    a.customer_id,
    {{to_upper('b.customer_name')}} as customer_name_macro,
    order_amount,
    {{ calculate_tax('order_amount') }} AS tax_amount
FROM {{ source('ANALYTICS', 'ORDERS') }} a
inner join {{source('ANALYTICS','CUSTOMER_STG')}} b
on a.customer_id=b.customer_id