SELECT customer_id, name, city
FROM customers
WHERE (city = 'New York' OR city = 'Los Angeles') AND customer_id IN (
    SELECT DISTINCT customer_id
    FROM orders
);