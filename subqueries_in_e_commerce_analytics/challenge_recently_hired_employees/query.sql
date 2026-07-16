SELECT *
FROM employees
WHERE hire_date >= (
  SELECT DATE '2021-01-02' - INTERVAL '6 months'
);