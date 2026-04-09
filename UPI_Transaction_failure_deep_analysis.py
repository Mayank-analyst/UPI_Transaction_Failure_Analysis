import pandas as pd

df = pd.read_csv(r"C:\Users\Mayank Bisht\Desktop\UPI Transaction Failure Analysis\UPI_Transactions_Cleaned.csv")

print(df.head())

# Deep Dive analysis of the data

 #1. Do higher amounts fail more?(Failure vs Amount Analysis)

import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv(r"C:\Users\Mayank Bisht\Desktop\UPI Transaction Failure Analysis\UPI_Transactions_Cleaned.csv")

# Create bins
df['amount_bin'] = pd.cut(df['amount'], bins=[0,500,1000,2000,5000], 
                         labels=["0-500","500-1000","1000-2000","2000-5000"])

# Failure rate per bin
result = df.groupby('amount_bin')['status'].value_counts(normalize=True).unstack()

print(result)

result['Failed'].plot(kind='bar')
plt.title("Failure Rate by Transaction Amount")
plt.ylabel("Failure Rate")
plt.show()

#2. What factors influence failure?(Correlation Analysis)

# Convert status to numeric
df['status_num'] = df['status'].map({'Success':0, 'Failed':1})

# Correlation
print(df[['amount','Hour','status_num']].corr())

#3. Do failures increase with traffic?(Peak Load vs Failure Visualization)

hourly = df.groupby('Hour').agg(
    total_transactions=('status','count'),
    failures=('status', lambda x: (x=='Failed').sum())
)

hourly['failure_rate'] = hourly['failures'] / hourly['total_transactions']

# Plot
hourly[['total_transactions','failure_rate']].plot()
plt.title("Transactions vs Failure Rate by Hour")
plt.show()

# Outlier Detection

print(df['amount'].describe())

