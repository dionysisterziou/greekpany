{{ config(materialized='view') }}

SELECT
  d.department_name,
  COUNT(e.id) AS total_employees
FROM greekpany.employee AS e
INNER JOIN greekpany.department AS d
  ON e.id = d.id
GROUP BY d.id
ORDER BY total_employees DESC
