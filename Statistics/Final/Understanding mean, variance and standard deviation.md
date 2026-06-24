
# Understanding Mean, Variance, and Standard Deviation

---

## 1. Core Concepts: What Do They Mean?

Imagine you are looking at a group of heights, test scores, or daily temperatures. Statistics uses three main metrics to summarize that data:

* **Mean:** The average value. It tells you where the "center" of your data lies.
* **Variance:** A measure of how spread out the numbers are. A high variance means the data points are far from the mean; a low variance means they are clustered tightly around it.
* **Standard Deviation:** The average distance of each data point from the mean. It is simply the square root of the variance, brought back to the original unit of measurement (e.g., if data is in inches, variance is in inches squared, but standard deviation is back in inches).

---

## 2. Population vs. Sample

As shown in the Venn diagram in **image_be19c9.jpg**, statistics is split into two contexts:

1. **Population:** The entire group you want to study (e.g., *every single person in a country*).
2. **Sample:** A smaller, representative subset chosen from the population (e.g., *100 people picked for a survey*).

Because a sample is just a guess at the whole population, the formulas used to calculate variance differ slightly.

### Formula Reference Table

| Metric | Population (Entire Group) | Sample (Subset) |
| --- | --- | --- |
| **Number of Subjects** | $N$ (Capital $N$) | $n$ (Lowercase $n$) |
| **Mean** | $\mu$ (Mu) $= \frac{\sum x_i}{N}$ <br>

<br>*Sum of all items divided by N* | $\bar{x}$ (X-bar) $= \frac{\sum x_i}{n}$ <br>

<br>*Sum of all items divided by n* |
| **Variance** | $\sigma^2$ (Sigma Squared) $= \frac{\sum (x_i - \mu)^2}{N}$ <br>

<br>*Average squared distance from mean* | $s^2$ $= \frac{\sum (x_i - \bar{x})^2}{n - 1}$ <br>

<br>*Note the "n - 1" correction factor* |
| **Standard Deviation** | $\sigma = \sqrt{\sigma^2}$ | $s = \sqrt{s^2}$ |

---

## 3. Step-by-Step Breakdown of the Example in image_be19c9.jpg

The lower half of the chalkboard calculates the **Population Mean ($\mu$)**, **Population Variance ($\sigma^2$)**, and **Population Standard Deviation ($\sigma$)** for a specific dataset.

Let's reconstruct the exact math step-by-step.

### The Raw Dataset

There are $N = 18$ values listed on the board:


$$66, 67, 67, 68, 68, 68, 68, 69, 69, 69, 69, 70, 70, 71, 71, 72, 73, 75$$

---

### Step 1: Calculate the Population Mean ($\mu$)

To find the mean, add all 18 numbers together and divide by 18.

* **Sum ($\sum x_i$):** $66 + 67 + 67 + ... + 75 = 1,250$
* **Formula:** $\mu = \frac{1,250}{18}$
* **Result:** $\mu \approx \mathbf{69.4}$

---

### Step 2: Calculate the Deviations (Distance from Mean)

Before finding variance, we have to see how far each number is from our mean ($69.4$).
The board shows two examples of this subtraction:

* For the lowest value ($66$): $66 - 69.4 = -3.4$
* For the highest value ($75$): $75 - 69.4 = 5.6$ (Note: The square drawn with sides $5.6 \times 5.6$ visualizes squaring this deviation!)

---

### Step 3: Square the Deviations and Sum Them Up

To get rid of negative numbers, we square every single distance, multiply it by how many times that data point occurs, and add them together:

* For $66$ (occurs 1 time): $(-3.4)^2 = \mathbf{11.56}$
* For $67$ (occurs 2 times): $2 \times (67 - 69.4)^2 = 2 \times (-2.4)^2 = \mathbf{5.76 + 5.76}$
* For $68$ (occurs 4 times): $4 \times (68 - 69.4)^2 = 4 \times (-1.4)^2 = 4 \times \mathbf{1.96}$
* For $69$ (occurs 4 times): $4 \times (69 - 69.4)^2 = 4 \times (-0.4)^2 = 4 \times \mathbf{0.16}$
* ... and so on for the rest of the numbers ($70, 71, 72, 73, 75$), ending with:
* For $72$ (occurs 1 time): $(72 - 69.4)^2 = (2.6)^2 = 2 \times \mathbf{0.36}$ (shared mathematically with 69 terms) ... up to $(75 - 69.4)^2 = (5.6)^2 = \mathbf{31.36}$

When you add **all** these squared values together (the numerator on the board), you get:


$$\text{Sum of Squared Deviations} = \mathbf{88.48}$$

---

### Step 4: Calculate the Population Variance ($\sigma^2$)

Divide the sum of squared deviations by the total population size ($N = 18$):

* **Formula:** $\sigma^2 = \frac{88.48}{18}$
* **Result:** $\sigma^2 \approx \mathbf{4.92}$

---

### Step 5: Calculate the Population Standard Deviation ($\sigma$)

Take the square root of the variance to return to the original data unit:

* **Formula:** $\sigma = \sqrt{4.92}$
* **Result:** $\sigma \approx \mathbf{2.22}$

---

## Summary Checklist

* **Average Value (Mean):** 69.4
* **Spread of Data (Variance):** 4.92
* **Standard Deviation (Avg. distance from mean):** 2.22 (Meaning most numbers in this set sit roughly between $69.4 - 2.22$ and $69.4 + 2.22$).
