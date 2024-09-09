SELECT ENCOUNTER as Id, count(DISTINCT code) as procedures_cnt
FROM {{ source('raw', 'PROCEDURES') }}
GROUP BY ENCOUNTER, CODE 