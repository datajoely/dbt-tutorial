WITH joined_data AS (
    SELECT
        te.id AS encounter_id,
        DATE_TRUNC(
            'year',
            START
        ) AS date_year,
        encounterclass,
        base_encounter_cost,
        procedures_cnt,
        medications_cnt,
        conditions_cnt
    FROM
        {{ source(
            'raw',
            'ENCOUNTERS'
        ) }}
        te
        INNER JOIN {{ ref('count_procedures') }}
        tp
        ON te.id = tp.id
        INNER JOIN {{ ref('count_conditions') }}
        tc
        ON te.id = tc.id
        INNER JOIN {{ ref('count_medications') }}
        tm
        ON te.id = tm.id
)
SELECT
    date_year,
    encounterclass,
    COUNT(
        DISTINCT encounter_id
    ) AS encounters,
    SUM(base_encounter_cost) AS encounter_cost,
    SUM(procedures_cnt) AS procedures_cnt,
    SUM(medications_cnt) AS medications_cnt,
    SUM(conditions_cnt) AS conditions_cnt
FROM
    joined_data
GROUP BY
    date_year,
    encounterclass
