{{ config(materialized='table') }}

SELECT
    order_id,
    customer_id,
    order_date,
    order_amount
FROM {{ source('ANALYTICS', 'ORDERS') }}