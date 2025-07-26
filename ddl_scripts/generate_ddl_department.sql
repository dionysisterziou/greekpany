SELECT 'CREATE TABLE department (' AS create_table_statement

UNION ALL

SELECT column_structure.text
FROM (
  SELECT 
    CONCAT(
      '  ', column_name, ' ', UPPER(column_type),
      CASE
        WHEN is_nullable = 'NO' THEN ' NOT NULL'
        ELSE ''
      END,
      CASE
        WHEN extra IS NOT NULL THEN CONCAT(' ', UPPER(extra))
        ELSE ''
      END,
      ','
    ) text
  FROM information_schema.columns
  WHERE table_schema = 'greekpany'
    AND table_name = 'department'
  ORDER BY ordinal_position
) AS column_structure

UNION ALL

SELECT CONCAT(
  '  CONSTRAINT pk_department PRIMARY KEY (',
  (
    SELECT column_structure.text
    FROM (
      SELECT CONCAT(
        CASE 
          WHEN ordinal_position > 1 THEN ','
          ELSE ''
        END,
        column_name,
        ')'
      ) AS text
      FROM information_schema.key_column_usage
      WHERE table_schema = 'greekpany'
        AND table_name = 'department'
        AND constraint_name = 'PRIMARY'
      ORDER BY ordinal_position
    ) AS column_structure
  )
)
FROM information_schema.table_constraints
WHERE table_schema = 'greekpany'
  AND table_name = 'department'
  AND constraint_type = 'PRIMARY KEY'


UNION ALL

SELECT ')'

UNION ALL

SELECT 'ENGINE = InnoDB'

UNION ALL

SELECT 'DEFAULT CHARSET = utf8mb4';
