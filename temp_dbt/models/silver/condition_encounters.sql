SELECT * 
FROM {{ source('raw', 'ENCOUNTERS') }} t1
INNER JOIN {{ source('raw', 'CONDITIONS') }} t2
ON t1.Id = t2.ENCOUNTER


