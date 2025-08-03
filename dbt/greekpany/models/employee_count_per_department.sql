{{ config(materialized='view') }}

WITH department AS (
  SELECT * FROM {{ ref('stg_department') }}
),

employee AS (
  SELECT * FROM {{ ref('stg_employee') }}
),

final AS (
  SELECT
    d.department_name AS department,
    COUNT(e.id) AS total_employees
  FROM employee e
  INNER JOIN department d
    ON e.department_id = d.id
  GROUP BY d.department_name
)

SELECT *
FROM final
ORDER BY total_employees DESC