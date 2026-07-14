SELECT
    customer_id,
    (SELECT name FROM customers WHERE customers.customer_id = o.customer_id) AS name,
    COUNT(*) AS order_count
FROM
    orders o
GROUP BY
    customer_id
ORDER BY
    order_count DESC,
    customer_id ASC
LIMIT 3;