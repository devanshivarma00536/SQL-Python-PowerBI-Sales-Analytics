import pandas as pd
from sqlalchemy import create_engine
from pathlib import Path

# ==========================================
# MySQL Connection Details
# ==========================================

username = "root"
password = "Devanshi$05"
host = "localhost"
port = "3306"
database = "global_sales_analytics"

# ==========================================
# Create MySQL Connection
# ==========================================

engine = create_engine(
    f"mysql+pymysql://{username}:{password}@{host}:{port}/{database}"
)

# ==========================================
# Read Cleaned CSV
# ==========================================

csv_path = Path(__file__).resolve().parent.parent / "data" / "cleaned" / "superstore_cleaned.csv"

df = pd.read_csv(csv_path)

print("=" * 60)
print("DATASET LOADED SUCCESSFULLY")
print("=" * 60)
print(df.shape)

# ==========================================
# Upload Data to MySQL
# ==========================================

df.to_sql(
    "sales_data",
    con=engine,
    if_exists="replace",
    index=False
)

print("=" * 60)
print("DATA UPLOADED TO MYSQL SUCCESSFULLY!")
print("=" * 60)
print(f"Rows Uploaded: {len(df)}")