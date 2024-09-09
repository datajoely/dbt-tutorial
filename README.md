# dbt demo project

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

- Uses `synthea` [data](https://synthetichealth.github.io/synthea/) to proxy real world EHR data.
- The Python dependencies needed are [dbt](https://github.com/dbt-labs/dbt-core) and [dbt-duckdb](https://github.com/duckdb/dbt-duckdb) (`uv sync`)
- Run `setup_data.py` to prepare the data yourself (`uv run setup_data.py`, `python -m setup_data`)

| #  | Topic                                                                                             | Description                                                                                                                              |
|----|---------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------|
| 1  | [Medallion architecture](https://www.databricks.com/glossary/medallion-architecture)            | A design pattern for organizing data pipelines.                                                                                         |
| 2  | [DuckDB](https://duckdb.org)                                                                     | A fast, local OLAP database for efficient performance.                                                                                        |
| 3  | [Sources](https://docs.getdbt.com/docs/build/sources)                                             | Defines 'Source' data outside of your control in `sources.yml`.                                                                        |
| 4  | [Models](https://docs.getdbt.com/docs/build/models)                                              | Models are the default unit of transformations, creating SQL views by default.                                                           |
| 5  | [Tests](https://docs.getdbt.com/docs/build/data-tests) and [Documentation](https://docs.getdbt.com/reference/commands/cmd-docs) | Critical for quality; manage tests and documentation effectively. Use `dbt docs generate` and `dbt docs serve`. See [source](temp_dbt/models/sources.yml) and [model](temp_dbt/models/schema.yml) custom tests. |
| 6  | [Complex macros](https://docs.getdbt.com/docs/build/jinja-macros)                                                                             | Advanced macros provide additional functionality and power. Handle with care. Includes complex [tests](temp_dbt/models/gold/pivot_condition_encounters.sql) and transformations like [pivots](temp_dbt/models/gold/pivot_condition_encounters.sql). |

This only scratches the surface of `dbt`, but should serve as a useful introduction.
