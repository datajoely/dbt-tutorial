# dbt demo project

- Uses `synthea` data available [here](https://synthetichealth.github.io/synthea/).
- The Python dependencies needed are [dbt](https://github.com/dbt-labs/dbt-core) and [dbt-duckdb](https://github.com/duckdb/dbt-duckdb)
- Run `setup_data.py` to prepare the data yourself (`uv run setup_data.py`, `python -m setup_data`)

## Tutorial topics

1. Why `dbt`?
2. Key principles
   - Team collaboration
   - Docs
   - Writing in DAGs
   - Models vs Compiled
   - Testing  
   - Development vs Production
3. This project
   - [Medallion architecture](https://www.databricks.com/glossary/medallion-architecture)
   - [DuckDB](https://duckdb.org)
   - 
