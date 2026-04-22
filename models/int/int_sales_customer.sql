SELECT
    *
FROM {{ source('raw', 'sales') }} as s
JOIN {{ source('raw', 'customers')}} as c
    ON s.customers_id = c.id