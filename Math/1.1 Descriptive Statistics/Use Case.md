# Real-Time Data Science Example

## Company: Netflix

### Business Problem

Netflix wants to understand **how engaged its users are**.

The data science team collects the daily watch time (in minutes) for a group of users.

## Dataset

| User | Watch Time (Minutes) |
|------|----------------------:|
| A | 120 |
| B | 125 |
| C | 130 |
| D | 128 |
| E | 950 |

At first glance, User **E** appears to be a very active user.

But is this genuine engagement or an unusual case?

---

## Descriptive Statistics

| Measure | Calculation | Result | Observation |
|---------|-------------|-------:|-------------|
| **Mean** | (120 + 125 + 130 + 128 + 950) / 5 | **290.6** | The average is much higher than expected. |
| **Median** | Middle value after sorting | **128** | A typical user watches about 128 minutes. |
| **Mode** | Most frequent value | **No Mode** | Every user has a different watch time. |
| **Range** | 950 − 120 | **830** | There is a very large spread in watch time. |
| **IQR** | Q3 − Q1 | **5** | Most users have very similar watch times. |
| **Standard Deviation** | √Variance | **≈ 366.9** | Watch times vary significantly. |

---

## What Does This Tell the Data Scientist?

| Measure | Business Insight | Next Action |
|---------|------------------|-------------|
| **Mean** | The average watch time is unusually high. | Verify whether the average is inflated by an unusual user. |
| **Median** | Most users watch around **2 hours**, not **5 hours**. | Compare with the mean to identify possible outliers. |
| **Mode** | There is no common viewing pattern. | User behavior varies from person to person. |
| **Range** | One user is much different from the others. | Investigate the user with the highest watch time. |
| **IQR** | The middle 50% of users have similar watch times. | Confirm that the extreme value is not representative of normal users. |
| **Standard Deviation** | The dataset has high variability. | Investigate unusual sessions before reporting business metrics. |

---

# Real Python Implementation

```python
import pandas as pd

df = pd.DataFrame({
    "user": ["A", "B", "C", "D", "E"],
    "watch_time": [120, 125, 130, 128, 950]
})
```

## Educational Approach

```python
print("Mean:", df["watch_time"].mean())
print("Median:", df["watch_time"].median())
print("Mode:", df["watch_time"].mode().tolist())
print("Range:", df["watch_time"].max() - df["watch_time"].min())

Q1 = df["watch_time"].quantile(0.25)
Q3 = df["watch_time"].quantile(0.75)

print("IQR:", Q3 - Q1)

print("Standard Deviation:", df["watch_time"].std())
```

---

# Real Industry Approach ⭐

Experienced data scientists usually don't calculate each statistic one by one.

They start with:

```python
df["watch_time"].describe()
```

Output

```text
count      5
mean     290.6
std      366.9
min      120
25%      125
50%      128
75%      130
max      950
```

From a single command, they immediately know:

- Average watch time (**Mean**)
- Standard deviation (**Std**)
- Minimum value (**Min**)
- First Quartile (**25%**)
- Median (**50%**)
- Third Quartile (**75%**)
- Maximum value (**Max**)

The first thing they notice is:

```text
Maximum = 950
75% = 130
```

This huge gap tells them:

> "One user behaves very differently from everyone else."

The next step is to investigate that user.

```python
df.sort_values("watch_time", ascending=False)
```

Then they query detailed watch logs to understand whether the user genuinely watched for **950 minutes** or whether Netflix autoplay continued overnight.

Finally, they decide whether to:

- Keep the data
- Remove the data
- Flag it as an autoplay session
- Exclude it from engagement metrics
