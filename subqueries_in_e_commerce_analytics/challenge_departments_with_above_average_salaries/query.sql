SELECT
    d.name AS department_name,
    avg_salaries.avg_salary
FROM
    departments d
    JOIN (
        SELECT
            department_id,
            AVG(salary) AS avg_salary
        FROM
            employees
        GROUP BY
            department_id
    ) AS avg_salaries
    ON d.department_id = avg_salaries.department_id
WHERE
    avg_salaries.avg_salary > (
        SELECT AVG(salary) FROM employees
    )
ORDER BY
    department_name;