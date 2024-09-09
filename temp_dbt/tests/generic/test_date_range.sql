{% test test_date_range(model, column_name, start_date, end_date) %}
WITH invalid_records AS (
    SELECT *
    FROM {{ model }}
    WHERE {{ column_name }} < '{{ start_date }}'
       OR {{ column_name }} > '{{ end_date }}'
)
SELECT *
FROM invalid_records
{% endtest %}