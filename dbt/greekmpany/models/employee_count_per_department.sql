{{ config(materialized='view') }}

SELECT
 d.department_name,
 COUNT(e.employee_id) AS total_employees
FROM greekmpany.employee AS e
INNER JOIN greekmpany.department AS d
 ON e.department_id = d.department_id
GROUP BY d.department_id
ORDER BY total_employees DESC
