from pathlib import Path
import requests
import zipfile
import duckdb

url = "https://synthetichealth.github.io/synthea-sample-data/downloads/synthea_sample_data_csv_apr2020.zip"
db_path = Path("data/synthea.duckdb")
db_connection = duckdb.connect(str(db_path))
zip_path = Path("data/synthea.zip")

if not zip_path.exists():
    with open(zip_path, "wb") as f:
        f.write(requests.get(url).content)
else:
    print(f"Skipping download since {str(zip_path)} already exists")

with zipfile.ZipFile(zip_path, 'r') as z:
    z.extractall(zip_path.parent)

for file in (zip_path.parent / "csv").glob("*.csv"):
    db_connection.execute(f"""
            CREATE TABLE IF NOT EXISTS {file.name.replace('.csv', '').upper()} AS 
            SELECT * FROM read_csv_auto('{file.as_posix()}')
        """)
    print(f"Loaded {file.name}")


