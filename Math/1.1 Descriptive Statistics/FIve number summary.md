
# Five-Number Summary

## What is the Five-Number Summary?

The **Five-Number Summary** is a quick way to understand the distribution of a dataset.

It consists of five important values:

1. Minimum
2. First Quartile (Q1)
3. Median (Q2)
4. Third Quartile (Q3)
5. Maximum

These five values help us understand:

- The smallest and largest values
- The center of the data
- The spread of the data
- Whether there are possible outliers

---

## Example

Suppose we have the following dataset:

```text
10, 20, 30, 40, 50, 60, 70, 80, 90
```

### Step 1: Minimum

```text
Minimum = 10
```

---

### Step 2: Q1 (First Quartile)

Lower half

```text
10, 20, 30, 40
```

```text
Q1 = (20 + 30) / 2

Q1 = 25
```

---

### Step 3: Median (Q2)

```text
Median = 50
```

---

### Step 4: Q3 (Third Quartile)

Upper half

```text
60, 70, 80, 90
```

```text
Q3 = (70 + 80) / 2

Q3 = 75
```

---

### Step 5: Maximum

```text
Maximum = 90
```

---

## Five-Number Summary

| Statistic | Value |
|-----------|------:|
| Minimum | 10 |
| Q1 | 25 |
| Median | 50 |
| Q3 | 75 |
| Maximum | 90 |

---

# Detecting Outliers using IQR

The Five-Number Summary becomes even more useful when combined with the **Interquartile Range (IQR)**.

First, calculate the IQR.

```text
IQR = Q3 − Q1

IQR = 75 − 25

IQR = 50
```

Now calculate the fences.

---

## Lower Fence

The **Lower Fence** is the smallest acceptable value.

Any value below this may be considered an outlier.

```text
Lower Fence = Q1 − (1.5 × IQR)

Lower Fence = 25 − (1.5 × 50)

Lower Fence = 25 − 75

Lower Fence = -50
```

---

## Upper Fence

The **Upper Fence** is the largest acceptable value.

Any value above this may be considered an outlier.

```text
Upper Fence = Q3 + (1.5 × IQR)

Upper Fence = 75 + (1.5 × 50)

Upper Fence = 75 + 75

Upper Fence = 150
```

---

## Final Summary

| Statistic | Value |
|-----------|------:|
| Minimum | 10 |
| Q1 | 25 |
| Median | 50 |
| Q3 | 75 |
| Maximum | 90 |
| IQR | 50 |
| Lower Fence | -50 |
| Upper Fence | 150 |

---

## How to Identify Outliers

Any value

- Less than the **Lower Fence**
- Greater than the **Upper Fence**

is considered a **potential outlier**.

Example

Dataset

```text
10, 20, 30, 40, 50, 60, 70, 80, 90, 250
```

The Upper Fence is

```text
150
```

Since

```text
250 > 150
```

**250 is a potential outlier.**

---

## Important Note

The fences do **not** automatically mean a value is wrong.

They simply tell the data scientist:

> **"This value is unusual and should be investigated."**

The outlier could be:

- A data entry error
- A sensor error
- A genuine extreme value
- A rare but valid event

A data scientist always investigates before deciding to remove or keep it.

---

## Python Example

```python
import pandas as pd

data = [10,20,30,40,50,60,70,80,90,250]

df = pd.DataFrame({"value": data})

Q1 = df["value"].quantile(0.25)
Q3 = df["value"].quantile(0.75)

IQR = Q3 - Q1

lower_fence = Q1 - (1.5 * IQR)
upper_fence = Q3 + (1.5 * IQR)

print(f"Q1           : {Q1}")
print(f"Median       : {df['value'].median()}")
print(f"Q3           : {Q3}")
print(f"IQR          : {IQR}")
print(f"Lower Fence  : {lower_fence}")
print(f"Upper Fence  : {upper_fence}")

outliers = df[
    (df["value"] < lower_fence) |
    (df["value"] > upper_fence)
]

print("\nPotential Outliers")
print(outliers)
```

Output

```text
Q1           : 32.5
Median       : 55
Q3           : 77.5
IQR          : 45.0
Lower Fence  : -35.0
Upper Fence  : 145.0

Potential Outliers

   value
9    250
```

---

## How Data Scientists Use This

Instead of manually checking thousands of rows, data scientists calculate the **Lower Fence** and **Upper Fence** to quickly identify unusual observations.

These observations are then investigated to determine whether they are:

- Data entry errors
- Sensor failures
- Fraudulent transactions
- Rare but valid events
- Business-specific exceptions

This is one of the most common techniques used during **Exploratory Data Analysis (EDA)** before building a machine learning model.
````

### 💡 One suggestion for your handbook

I would rename this chapter to:

```text
Five-Number Summary & Outlier Detection
```

because in practice, data scientists almost always use these concepts together:

```text
Five-Number Summary
        │
        ▼
Calculate IQR
        │
        ▼
Calculate Lower & Upper Fences
        │
        ▼
Detect Potential Outliers
        │
        ▼
Investigate the Outliers
        │
        ▼
Business Decision
```


