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

# Step 1: Summary Statistics

```python
import pandas as pd

watch_summary = pd.DataFrame({
    "user_id": [101, 102, 103, 104, 105],
    "watch_time": [120, 125, 130, 128, 950]
})

watch_summary
```

Output

| user_id | watch_time |
|--------:|-----------:|
|101|120|
|102|125|
|103|130|
|104|128|
|105|950|

---

## Step 2: Explore the Data

```python
watch_summary.describe()
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

Immediately, the data scientist notices

```text
Mean = 290.6
Median = 128
Max = 950
```

Observation:

> One user behaves very differently from everyone else.

---

## Step 3: Find the Suspicious User

```python
suspect = watch_summary.sort_values(
    by="watch_time",
    ascending=False
)

suspect
```

Output

| user_id | watch_time |
|--------:|-----------:|
|105|950|
|103|130|
|104|128|
|102|125|
|101|120|

Now the investigation begins.

---

# Step 4: Query Watch Logs

The summary table only tells us **how long** someone watched.

Now we need to know **what actually happened**.

```python
watch_logs = pd.DataFrame({
    "user_id":[105,105,105],
    "episode":[1,2,3],
    "start_time":[
        "2026-01-10 20:00",
        "2026-01-10 20:45",
        "2026-01-10 21:30"
    ],
    "end_time":[
        "2026-01-10 20:45",
        "2026-01-10 21:30",
        "2026-01-11 11:30"
    ]
})

watch_logs
```

Output

|Episode|Start|End|
|-------|------|------|
|1|8:00 PM|8:45 PM|
|2|8:45 PM|9:30 PM|
|3|9:30 PM|11:30 AM|

Immediately something looks strange.

Episode 3 lasted

```text
14 Hours
```

---

# Step 5: Calculate Session Duration

```python
watch_logs["start_time"] = pd.to_datetime(
    watch_logs["start_time"]
)

watch_logs["end_time"] = pd.to_datetime(
    watch_logs["end_time"]
)

watch_logs["duration"] = (
    watch_logs["end_time"] -
    watch_logs["start_time"]
)

watch_logs
```

Output

|Episode|Duration|
|-------|---------|
|1|45 min|
|2|45 min|
|3|14 hours|

Observation

> Nobody normally watches one episode for 14 hours.

---

# Step 6: Check User Activity

Netflix stores every click.

```python
user_events = pd.DataFrame({
    "user_id":[105],
    "last_click":[
        "2026-01-10 21:35"
    ],
    "pause_count":[0],
    "autoplay":[True]
})

user_events
```

Output

|Last Click|Pause Count|Autoplay|
|----------|-----------|---------|
|9:35 PM|0|True|

Observation

- Last interaction happened at **9:35 PM**
- No pauses
- Autoplay continued

This suggests the user stopped interacting.

---

# Step 7: Check Device Information

```python
device_info = pd.DataFrame({
    "user_id":[105],
    "device":["Smart TV"],
    "screen_status":["ON"]
})

device_info
```

Output

|Device|Screen Status|
|------|-------------|
|Smart TV|ON|

Observation

The TV remained on overnight.

---

# Step 8: Combine All the Evidence

| Investigation | Observation |
|---------------|-------------|
| Summary Statistics | Mean much higher than Median |
| Watch Time | 950 minutes |
| Longest Session | 14 hours |
| Last Click | 9:35 PM |
| Pause Count | 0 |
| Autoplay | Enabled |
| Device | Smart TV remained ON |

---

# Step 9: Business Conclusion

The data scientist **does not** immediately remove the record.

Instead, they write their findings.

```text
Investigation Summary

• User watched 950 minutes.

• One session lasted approximately 14 hours.

• No interaction after 9:35 PM.

• Autoplay continued overnight.

• TV remained ON.

Conclusion:

The session is likely an autoplay session rather than active viewing.
```

---

# Step 10: Business Decision

The Product Manager and Data Scientist decide to:

```python
watch_summary["possible_autoplay"] = False

watch_summary.loc[
    watch_summary["watch_time"] > 500,
    "possible_autoplay"
] = True

watch_summary
```

Output

|user_id|watch_time|possible_autoplay|
|-------:|----------:|----------------|
|101|120|False|
|102|125|False|
|103|130|False|
|104|128|False|
|105|950|True|

Now the ML team can choose to:

- Exclude autoplay sessions when calculating engagement.
- Train recommendation models using only active viewing.
- Report more accurate watch-time metrics to the business.
