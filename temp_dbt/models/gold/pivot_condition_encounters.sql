WITH base AS (
    SELECT
        date_year,
        description,
        num
    FROM {{ ref('agg_condition_encounters') }} -- Reference your source table here
)

SELECT
    date_year,
    {% set description_values = dbt_utils.get_column_values(ref("agg_condition_encounters"), 'description') %}

    {% for description in description_values %}
        SUM(CASE 
            WHEN description = '{{ description }}' THEN num 
            ELSE 0 
        END) AS "{{ description }}"{% if not loop.last %},{% endif %}
    {% endfor %}

FROM base
GROUP BY date_year
ORDER BY date_year
