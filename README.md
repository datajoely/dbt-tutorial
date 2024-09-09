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

| Topic                                                                                             | Description                                           |
|---------------------------------------------------------------------------------------------------|-------------------------------------------------------|
| [Medallion architecture](https://www.databricks.com/glossary/medallion-architecture)            | A design pattern for organizing data pipelines.      |
| [DuckDB](https://duckdb.org)                                                                     | A fast, local database for efficient performance.     |
| [Sources](https://docs.getdbt.com/docs/build/sources)                                             | 'Source' data outside of your control is defined `sources.yml`.                           |
| [Models](https://docs.getdbt.com/docs/build/models)                                              | Models are the default unit of transformations. These create SQL views by default.   |
| Tests and documentation (use `dbt docs generate` and `dbt docs serve`)                            | Critical for quality; manage tests and documentation effectively. |
| [Complex macros](temp_dbt/models/gold/pivot_condition_encounters.sql)                             | Advanced macros give you superpowers, but with great power comes responsibility.         |

This only scratches the surface of `dbt`, but should serve as a useful introduction.
