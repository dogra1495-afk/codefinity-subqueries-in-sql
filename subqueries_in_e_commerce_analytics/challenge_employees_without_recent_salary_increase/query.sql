SELECT employee_id, name
FROM employees AS e
WHERE NOT EXISTS (
  SELECT 1
  FROM salaries AS s
  WHERE s.employee_id = e.employee_id
    AND s.salary_date >= '2023-04-27'
);