
from itertools import count

import pandas as pd

df = pd.read_csv("onlinefoods.csv")

# Check data
print(df.head())

# Remove null values
df = df.dropna()

df.columns = df.columns.str.strip().str.lower().str.replace(" ", "_")
df = df.drop(columns=["Unnamed: 12"], errors="ignore")

df = df.fillna("")

# Save cleaned data
df.to_csv("clean_food_data.csv", index=False)

print(df.columns)

df = df.drop_duplicates()