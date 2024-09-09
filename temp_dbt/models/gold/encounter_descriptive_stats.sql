SELECT
    te.id,
    START,
    stop,
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
