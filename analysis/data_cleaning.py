import pandas as pd

# Load the dataset
df = pd.read_csv("data/raw/superstore.csv")

# Rename columns
df.columns = [
    "category",
    "city",
    "country",
    "customer_id",
    "customer_name",
    "discount",
    "market",
    "record_count",
    "order_date",
    "order_id",
    "order_priority",
    "product_id",
    "product_name",
    "profit",
    "quantity",
    "region",
    "row_id",
    "sales",
    "segment",
    "ship_date",
    "ship_mode",
    "shipping_cost",
    "state",
    "sub_category",
    "year",
    "market2",
    "weeknum"
]

# Display new column names
print("Updated Column Names:\n")
print(df.columns)

print("\n missing values:\n")
print(df.isnull().sum())

print("\n duplicate rows:\n")
print(df.duplicated().sum())

df = df.drop_duplicates()

print("\n duplicate rows after removal\n")
print(df.duplicated().sum())

print("\n data types\n")
print(df.dtypes)

df["order_date"] = pd.to_datetime(df["order_date"])
df["ship_date"] = pd.to_datetime(df["ship_date"])

print("\n updated data typess\n")
print(df.dtypes)

# Save the cleaned dataset
df.to_csv(
    "data/cleaned/superstore_cleaned.csv",
    index=False,
    encoding="utf-8-sig"
)
print("\n✅ Cleaned dataset saved successfully!")

