SELECT 
  p.category,
  SUM(o.quantity) AS total_quantity
FROM orders o
JOIN products p
  ON o.product_id = p.product_id
GROUP BY p.category
HAVING
  SUM(o.quantity) = (
    SELECT MAX(sum_per_cat)
    FROM (
      SELECT SUM(o2.quantity) AS sum_per_cat
      FROM orders o2
      JOIN products p2
        ON o2.product_id = p2.product_id
      GROUP BY p2.category
    ) AS t
  );