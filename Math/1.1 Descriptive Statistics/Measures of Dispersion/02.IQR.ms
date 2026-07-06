# Interquartile Range (IQR)

## Why Do We Need IQR?

In the previous section, we learned about **Range**.

Range is easy to calculate, but it has one major limitation.

It only uses the **smallest** and **largest** values in the dataset.

If there is an outlier, the range changes significantly, even though most of the data remains the same.

To overcome this problem, we use the **Interquartile Range (IQR)**.

Instead of looking at the entire dataset, IQR only measures the spread of the **middle 50%** of the data.

Because it ignores the smallest and largest values, IQR is **less affected by outliers**.

---

## What is IQR?

The **Interquartile Range (IQR)** measures the spread of the **middle 50%** of the dataset.

It is calculated by finding the difference between:

- **Q1 (First Quartile)** → 25% of the data
- **Q3 (Third Quartile)** → 75% of the data

The values between Q1 and Q3 represent the middle half of the dataset.

---

## Formula

```text
IQR = Q3 − Q1
```

Where:

- **Q1** = First Quartile (25th percentile)
- **Q3** = Third Quartile (75th percentile)

---

## How to Calculate IQR?

### Step 1

Arrange the data in ascending order.

Example:

```text
10, 20, 30, 40, 50, 60, 70, 80
```

---

### Step 2

Find the median.

```text
Median = (40 + 50) / 2 = 45
```

Now divide the dataset into two equal halves.

Lower Half

```text
10, 20, 30, 40
```

Upper Half

```text
50, 60, 70, 80
```

---

### Step 3

Find **Q1**.

Q1 is the median of the lower half.

```text
Q1 = (20 + 30) / 2

Q1 = 25
```

---

### Step 4

Find **Q3**.

Q3 is the median of the upper half.

```text
Q3 = (60 + 70) / 2

Q3 = 65
```

---

### Step 5

Apply the formula.

```text
IQR = Q3 − Q1

IQR = 65 − 25

IQR = 40
```

**Answer**

```text
IQR = 40
```

---

## Outliers and IQR

Let's compare two datasets.

Dataset A

```text
10, 20, 30, 40, 50, 60, 70, 80
```

IQR

```text
40
```

Now replace the largest value with **500**.

Dataset B

```text
10, 20, 30, 40, 50, 60, 70, 500
```

Let's calculate again.

Lower Half

```text
10, 20, 30, 40
```

Upper Half

```text
50, 60, 70, 500
```

Q1

```text
25
```

Q3

```text
65
```

IQR

```text
65 − 25 = 40
```

Notice something interesting.

Even though the largest value changed from **80** to **500**, the IQR **did not change**.

This is because IQR focuses only on the **middle 50%** of the data and ignores the extreme values.

For this reason, we say:

> **IQR is much less affected by outliers than Range.**

---

## Advantages

- Not heavily affected by outliers.
- Gives a better measure of spread for skewed data.
- Uses the middle 50% of the dataset.
- Widely used for detecting outliers.

---

## Limitations

- Ignores 50% of the data.
- Slightly more difficult to calculate than Range.

---

## Key Points

- IQR measures the spread of the middle 50% of the dataset.
- IQR = Q3 − Q1.
- It is less affected by outliers.
- It is often preferred over Range when the dataset contains extreme values.
