SELECT ENCOUNTER as Id, count(DISTINCT code) as medications_cnt
FROM {{ source('raw', 'MEDICATIONS') }}
GROUP BY ENCOUNTER, CODE