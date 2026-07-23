import pandas as pd

# Load dataset
df = pd.read_csv("data/raw/superstore.csv")

print("=" * 60)
print("DATASET SHAPE")
print("=" * 60)
print(df.shape)

print("\n")

print("=" * 60)
print("MISSING VALUES")
print("=" * 60)
print(df.isnull().sum())

print("\n")

print("=" * 60)
print("DUPLICATE ROWS")
print("=" * 60)
print(df.duplicated().sum())

print("\n")

print("=" * 60)
print("DATASET INFORMATION")
print("=" * 60)
print(df.info())