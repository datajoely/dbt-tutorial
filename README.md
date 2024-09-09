# dbt demo project

- Uses `synthea` data available [here](https://synthetichealth.github.io/synthea/).
- The Python dependencies needed are [dbt](https://github.com/dbt-labs/dbt-core) and [dbt-duckdb](https://github.com/duckdb/dbt-duckdb)
- Run `setup_data.py` to prepare the data yourself (`uv run setup_data.py`, `python -m setup_data`)

## Tutorial topics

Why `dbt`?

| **Category**               | **Description**                                                                 |
|----------------------------|---------------------------------------------------------------------------------|
| **Team collaboration**      | Familiar codebase across teams and projects. |
| **Docs**                    | Documentation front and centre to the workflow, some bits you get for free. |
| **Writing in DAGs**         | Build pipelines declaratively rather than in isolated scripts.  |
| **Models vs Compiled**      | Write concise code which is properly rendered at runtime.  |
| **Testing**                 | "Expectation testing" front and centre.          |
| **Development vs Production** | Simple separation between testing and production environments. |


## This project

- [Medallion architecture](https://www.databricks.com/glossary/medallion-architecture)
- [DuckDB](https://duckdb.org) for fast, local performance.
- [Sources](https://docs.getdbt.com/docs/build/sources) are defined in [sources.yml](temp_dbt/models/sources.yml)
- [`models`](https://docs.getdbt.com/docs/build/models) reference `sources`
- Tests and documentation are critical (and can be enforced by teams).
     > This is where `dbt docs generate` and `dbt docs serve` come in handy.
- [Complex macros](temp_dbt/models/gold/pivot_condition_encounters.sql) give you super powers! Use responsibly!
- This only scratches the surface, but should be a useful introduction.
