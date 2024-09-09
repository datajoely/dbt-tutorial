SELECT ENCOUNTER as Id, count(DISTINCT code) as conditions_cnt
FROM {{ source('raw', 'CONDITIONS') }}
GROUP BY ENCOUNTER, CODE