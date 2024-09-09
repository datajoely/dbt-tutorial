SELECT ENCOUNTER as Idw, count(DISTINCT code) as medications_cnt
FROM {{ source('raw', 'MEDICATIONS') }}
GROUP BY ENCOUNTER, CODE