# Real-Time Data Science Use Case

## Company: Netflix

### Business Problem

Netflix wants to answer a simple question:

> **"How engaged are our users?"**

To answer this, the data science team analyzes the daily watch time of users.

Suppose they collect the following data.

| User | Watch Time (Minutes) |
|------|----------------------:|
| A | 120 |
| B | 125 |
| C | 130 |
| D | 128 |
| E | 950 |

At first glance, User **E** looks like an extremely active user.

But is this real?

The data scientist starts investigating.

---

# Step 1: Calculate the Mean

The first thing they calculate is the **Mean**.

```text
Mean = (120 + 125 + 130 + 128 + 950) / 5

Mean = 290.6 minutes
```

### Observation

The average watch time is **291 minutes** (almost 5 hours).

The data scientist immediately asks:

> "Do users really watch Netflix for nearly 5 hours every day?"

The average seems unusually high.

---

# Step 2: Calculate the Median

Now they calculate the median.

Sorted data:

```text
120, 125, 128, 130, 950
```

Median:

```text
128 minutes
```

### Observation

The median is only **128 minutes**.

This is much lower than the mean.

The large difference between the **Mean** and **Median** suggests that one unusually large value is pulling the average upward.

This is the first sign of a possible outlier.

---

# Step 3: Calculate the Mode

Next, they check the mode.

```text
120, 125, 128, 130, 950
```

Every value appears only once.

```text
Mode = No Mode
```

### Observation

There is no most common watch time.

This tells the data scientist that users have different viewing habits.

---

# Step 4: Calculate the Range

Now they measure the spread.

```text
Range = Maximum − Minimum

Range = 950 − 120

Range = 830
```

### Observation

The watch time varies by **830 minutes**.

This is a very large spread.

Something unusual may be happening.

---

# Step 5: Calculate the IQR

The data scientist now checks the **middle 50%** of the data.

Sorted data:

```text
120, 125, 128, 130, 950
```

The middle values are all close together.

The IQR is relatively small.

### Observation

Most users have similar watch times.

Only one value is very different.

This confirms that the large spread seen in the range is caused by an extreme value.

---

# Step 6: Calculate the Standard Deviation

Finally, they calculate the standard deviation.

The result is very high.

### Observation

A high standard deviation tells the data scientist that the watch times are highly spread out.

Now they decide to investigate the unusual user.

---

# Step 7: Investigate the Outlier

The data scientist looks at User **E**.

Instead of only looking at the summary table, they check the detailed watch logs.

| User | Movie | Start Time | End Time |
|------|-------|------------|----------|
| E | Stranger Things | 8:00 PM | 11:30 AM |

The session lasted more than **15 hours**.

They check additional information.

| Event | Value |
|-------|-------|
| Last Click | 8:20 PM |
| Pause Count | 0 |
| AutoPlay | Yes |

### Observation

The user stopped interacting after **8:20 PM**, but Netflix continued playing episodes automatically.

The data scientist concludes:

> **The user most likely fell asleep, and autoplay continued overnight.**

---

# Step 8: Business Decision

Instead of deleting the data immediately, the data scientist discusses it with the product team.

The team decides to:

- Flag sessions longer than 8 hours.
- Exclude autoplay sessions when calculating engagement.
- Improve recommendation models using cleaned data.

---

# How Each Measure Helped

| Measure | Purpose | What It Told the Data Scientist |
|----------|---------|---------------------------------|
| **Mean** | Average watch time | The average looked unusually high. |
| **Median** | Middle watch time | Most users watched around 2 hours, not 5 hours. |
| **Mode** | Most common value | There was no common watch time. |
| **Range** | Overall spread | One user caused a very large spread. |
| **IQR** | Spread of the middle 50% | Most users had similar watch times. |
| **Standard Deviation** | Overall variability | The data had unusually high variation. |

---

# Final Conclusion

Descriptive statistics did not tell the data scientist **what happened**.

Instead, it answered a different question:

> **"Is something unusual happening in the data?"**

Once the statistics revealed an unusual pattern, the data scientist investigated the records, understood the reason, and helped the business make a better decision.

This is how descriptive statistics is used in real-world data science.
