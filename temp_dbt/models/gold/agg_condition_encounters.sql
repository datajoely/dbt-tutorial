
SELECT
    DATE_TRUNC(
        'year',
        START
    ) AS date_year,
    description,
    COUNT(
        DISTINCT id
    ) AS num
FROM
    {{ ref('condition_encounters') }}
WHERE
    START > '2010-01-01'
GROUP BY
    DATE_TRUNC(
        'year',
        START
    ),
    description
HAVING
    num > 25
