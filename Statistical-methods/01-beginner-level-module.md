# 🧮 Statistical Methods Module 1 - Beginner's Guide
## AIML ZC418 | BITS Pilani MTech WLP
## 📚 VERY DETAILED Topic-by-Topic Explanation for Complete Beginners

---

# 🎯 What Will You Learn in Module 1?

From your **Course Handout (CS-1 & CS-2)**, we cover:

| Topic | Sub-Topics | Importance |
|-------|------------|------------|
| **1.1** | Measures of Central Tendency | ⭐⭐⭐⭐ |
| **1.2** | Measures of Variability | ⭐⭐⭐⭐⭐ VERY IMPORTANT! |
| **1.3** | Data Symmetry & Outliers | ⭐⭐⭐⭐⭐ |
| **1.4** | Five-Point Summary & IQR | ⭐⭐⭐⭐⭐ |
| **1.5** | Basic Probability Concepts | ⭐⭐⭐⭐ |
| **1.6** | Axioms of Probability | ⭐⭐⭐ |
| **1.7** | Mutually Exclusive & Independent Events | ⭐⭐⭐⭐⭐ |

---

# 📖 TOPIC 1.1: What is Statistics? 

## 🤔 Before We Start - Why Statistics?

Imagine you have 1 million customer records. Can you look at all of them?
**NO!** You need a way to SUMMARIZE them. That's what Statistics does!

## 📝 Definition:

> **Statistics** = Science of collecting, organizing, analyzing, and interpreting DATA to make decisions.

## 🔷 Two Types of Statistics:

```
STATISTICS
├── DESCRIPTIVE Statistics
│   "Describe data you HAVE"
│   Example: "Average age of students = 25 years"
│
└── INFERENTIAL Statistics  
    "Make predictions about data you DON'T have"
    Example: "Based on sample, population average ≈ 25 years"
```

### 📊 Simple Comparison:

| Type | What It Does | Example |
|------|--------------|---------|
| **Descriptive** | Summarizes existing data | "Company sold 1000 units last month" |
| **Inferential** | Predicts/generalizes | "We predict 1200 units next month" |

### 💡 Real-Life Analogy:

```
Descriptive: Looking at your bank statement (past transactions)
Inferential: Estimating next month's expenses based on patterns
```

---

# 📖 TOPIC 1.2: Types of Data 📊

## 🤔 Why Does Data Type Matter?

Different data types require DIFFERENT statistical methods!
You can't calculate "average color" - that makes no sense!

## 📝 Data Classification:

```
                        DATA
                         │
        ┌────────────────┴────────────────┐
        │                                  │
   QUALITATIVE                        QUANTITATIVE
   (Categories)                        (Numbers)
        │                                  │
   ┌────┴────┐                        ┌────┴────┐
   │         │                        │         │
NOMINAL  ORDINAL                  DISCRETE  CONTINUOUS
(No order) (Has order)           (Countable) (Measurable)
   │         │                        │         │
 Colors    Ratings                  Count      Height
 Gender    Grades                   Students   Weight
 Names     Ranks                    Items      Time
```

## 📊 Examples Table:

| Type | Definition | Examples | Can Calculate Mean? |
|------|------------|----------|---------------------|
| **Nominal** | Categories, no order | Gender (M/F), Colors, Cities | ❌ NO |
| **Ordinal** | Categories WITH order | Ratings (1-5), Grades (A>B>C) | ⚠️ Careful |
| **Discrete** | Countable numbers | Students: 1,2,3... | ✅ YES |
| **Continuous** | Any value in range | Height: 5.5ft, 5.67ft... | ✅ YES |

### 💡 Memory Trick:
> **N**ominal = **N**ames (just labels)
> **O**rdinal = **O**rder matters
> **D**iscrete = **D**ots on a number line (countable)
> **C**ontinuous = **C**omplete line (any value)

---

# 📖 TOPIC 1.3: Measures of Central Tendency ⭐⭐⭐⭐

## 🤔 What is "Central Tendency"?

It answers: **"What is the TYPICAL or CENTER value of my data?"**

## 1️⃣ MEAN (Average) μ or x̄

### 📝 Formula:

```
         Sum of all values
Mean = ────────────────────
        Number of values

        Σxᵢ
μ = ────────
         n
```

### 🔢 Step-by-Step Example:

**Data**: Test scores = {70, 80, 85, 90, 75}

```
Step 1: Add all values
        70 + 80 + 85 + 90 + 75 = 400

Step 2: Count values
        n = 5

Step 3: Divide
        Mean = 400/5 = 80

Answer: Average score = 80
```

### ⚠️ Problem with Mean:

**Data**: Salaries = {30K, 35K, 40K, 45K, 500K}

```
Mean = (30+35+40+45+500)/5 = 650/5 = 130K

But wait! Most people earn 30-45K, not 130K!
The 500K OUTLIER pulled the mean up!
```

> **Key Insight**: Mean is SENSITIVE to outliers!

---

## 2️⃣ MEDIAN (Middle Value)

### 📝 Definition:

> **Median** = The MIDDLE value when data is arranged in ORDER

### 🔢 Step-by-Step Example (Odd Count):

**Data**: {3, 7, 2, 9, 5}

```
Step 1: Arrange in ascending order
        {2, 3, 5, 7, 9}

Step 2: Find middle position
        Position = (n+1)/2 = (5+1)/2 = 3rd position

Step 3: Pick the value at that position
        {2, 3, [5], 7, 9}

Answer: Median = 5
```

### 🔢 Step-by-Step Example (Even Count):

**Data**: {2, 3, 5, 7}

```
Step 1: Arrange in order (already done)
        {2, 3, 5, 7}

Step 2: Find two middle values
        n = 4, so middle positions are 2nd and 3rd
        {2, [3, 5], 7}

Step 3: Take average of the two
        Median = (3+5)/2 = 4

Answer: Median = 4
```

### ✅ Why Median is Better for Skewed Data:

**Salary Data**: {30K, 35K, 40K, 45K, 500K}

```
Mean = 130K (pulled by outlier)
Median = 40K (true middle - NOT affected by outlier!)
```

> **Use Median when**: Data has outliers (salary, house prices)

---

## 3️⃣ MODE (Most Frequent)

### 📝 Definition:

> **Mode** = The value that appears MOST OFTEN

### 🔢 Example:

**Data**: {1, 2, 2, 3, 2, 4, 5}

```
Count each value:
1 → appears 1 time
2 → appears 3 times ← MOST FREQUENT
3 → appears 1 time
4 → appears 1 time
5 → appears 1 time

Answer: Mode = 2
```

### Types of Mode:

| Type | Meaning | Example |
|------|---------|---------|
| **Unimodal** | One mode | {1,2,2,3} → Mode=2 |
| **Bimodal** | Two modes | {1,2,2,3,3} → Modes=2,3 |
| **Multimodal** | More than two | {1,1,2,2,3,3} → Modes=1,2,3 |
| **No Mode** | All equal frequency | {1,2,3,4,5} → No mode |

### When to Use Mode:
- **Categorical data**: Most popular color, common shoe size
- **Can't use mean/median**: "Average favorite color" makes no sense!

---

## 📊 Comparison: Mean vs Median vs Mode

| Measure | Affected by Outliers? | Best For | Formula |
|---------|----------------------|----------|---------|
| **Mean** | YES ❌ | Symmetric data | Σx/n |
| **Median** | NO ✅ | Skewed data, outliers | Middle value |
| **Mode** | NO ✅ | Categorical data | Most frequent |

### 🎯 Quick Decision Tree:

```
What type of data?
├── Categorical (colors, names) → Use MODE
│
└── Numerical (numbers)
    ├── Has outliers? → Use MEDIAN
    └── No outliers, symmetric → Use MEAN
```

---

# 📖 TOPIC 1.4: Measures of Dispersion (Spread) ⭐⭐⭐⭐⭐

## 🤔 What is "Dispersion"?

Central tendency tells you the CENTER.
Dispersion tells you: **"How SPREAD OUT is the data?"**

### Why It Matters:

```
Class A scores: {70, 70, 70, 70, 70}  Mean = 70
Class B scores: {50, 60, 70, 80, 90}  Mean = 70

Same mean, but Class B is MORE SPREAD OUT!
```

---

## 1️⃣ RANGE (Simplest Measure)

### 📝 Formula:

```
Range = Maximum - Minimum
```

### 🔢 Example:

**Data**: {12, 18, 25, 30, 45}

```
Range = 45 - 12 = 33
```

### ⚠️ Problem:
- Uses ONLY 2 values (ignores everything in between)
- Very sensitive to outliers

---

## 2️⃣ VARIANCE (σ² or s²) ⭐⭐⭐⭐⭐

### 📝 Definition:

> **Variance** = Average of SQUARED differences from the mean

### 📝 Formulas:

```
Population Variance (σ²):
         Σ(xᵢ - μ)²
σ² = ────────────────
            N

Sample Variance (s²):
         Σ(xᵢ - x̄)²
s² = ────────────────
          n - 1
```

> **Why n-1 for sample?** It's called "Bessel's correction" - makes the estimate unbiased.

### 🔢 Step-by-Step Example:

**Data**: {2, 4, 6, 8, 10}

```
Step 1: Find the mean
        Mean = (2+4+6+8+10)/5 = 30/5 = 6

Step 2: Find difference from mean for each value
        2 - 6 = -4
        4 - 6 = -2
        6 - 6 = 0
        8 - 6 = 2
        10 - 6 = 4

Step 3: Square each difference
        (-4)² = 16
        (-2)² = 4
        (0)² = 0
        (2)² = 4
        (4)² = 16

Step 4: Sum the squares
        16 + 4 + 0 + 4 + 16 = 40

Step 5: Divide by n (or n-1 for sample)
        Population: σ² = 40/5 = 8
        Sample: s² = 40/4 = 10
```

### 💡 Why Square?
- Removes negative signs (differences can be + or -)
- Gives more weight to larger deviations

---

## 3️⃣ STANDARD DEVIATION (σ or s) ⭐⭐⭐⭐⭐

### 📝 Formula:

```
Standard Deviation = √Variance

σ = √σ²
s = √s²
```

### 🔢 From Previous Example:

```
Population SD: σ = √8 = 2.83
Sample SD: s = √10 = 3.16
```

### 💡 Interpretation:

> "On average, data points are about 2.83 units away from the mean"

### Visual Understanding:

```
Low SD (data clustered):     High SD (data spread):
    ▁▂▃▇▇▇▃▂▁                    ▃▂▁▁▃▁▁▂▃
    ─────┼─────                  ─────┼─────
        mean                         mean
```

---

## 4️⃣ COEFFICIENT OF VARIATION (CV)

### 📝 Formula:

```
        Standard Deviation
CV = ──────────────────────── × 100%
             Mean
```

### 🤔 Why Do We Need CV?

**Problem**: How do you compare variability of:
- Heights (measured in cm, mean=170, SD=10)
- Weights (measured in kg, mean=70, SD=5)

Direct comparison doesn't work because they have different units!

### 🔢 Example:

```
Heights: CV = (10/170) × 100% = 5.9%
Weights: CV = (5/70) × 100% = 7.1%

Conclusion: Weights show MORE relative variation
```

### 💡 Key Insight:
> CV gives you **RELATIVE** variation - allows comparing different datasets!

---

# 📖 TOPIC 1.5: Quartiles, IQR & Five-Point Summary ⭐⭐⭐⭐⭐

## 🤔 What are Quartiles?

Quartiles divide data into **4 EQUAL PARTS** (25% each).

```
    25%      25%      25%      25%
├────────┼────────┼────────┼────────┤
Min     Q1      Q2       Q3      Max
       (25%)  (Median)  (75%)
              (50%)
```

## 📝 How to Find Quartiles:

### Method (for n data points):

```
Q1 position = (n+1)/4
Q2 position = (n+1)/2 (this is median)
Q3 position = 3(n+1)/4
```

### 🔢 Step-by-Step Example:

**Data (n=12)**: 200, 220, 240, 260, 280, 300, 320, 350, 400, 600, 900, 1500

```
Step 1: Data is already sorted ✓

Step 2: Find Q1 position
        Q1 pos = (12+1)/4 = 3.25
        Q1 = 3rd value + 0.25 × (4th - 3rd)
        Q1 = 240 + 0.25 × (260-240) = 240 + 5 = 245

Step 3: Find Q2 (Median) position
        Q2 pos = (12+1)/2 = 6.5
        Q2 = (6th + 7th)/2 = (300 + 320)/2 = 310

Step 4: Find Q3 position
        Q3 pos = 3(12+1)/4 = 9.75
        Q3 = 9th value + 0.75 × (10th - 9th)
        Q3 = 400 + 0.75 × (600-400) = 400 + 150 = 550
```

## 📝 Interquartile Range (IQR):

```
IQR = Q3 - Q1 = 550 - 245 = 305
```

> **IQR** = Range of the middle 50% of data

## 📊 Five-Point Summary:

```
┌─────────────────────────────────────────────────┐
│     FIVE-POINT SUMMARY                          │
├─────────────────────────────────────────────────┤
│  Minimum  │  Q1   │  Median  │  Q3   │ Maximum │
│    200    │  245  │   310    │  550  │  1500   │
└─────────────────────────────────────────────────┘
```

---

# 📖 TOPIC 1.6: Outlier Detection ⭐⭐⭐⭐⭐

## 🤔 What is an Outlier?

> **Outlier** = A data point that is VERY DIFFERENT from other values

### 📝 IQR Method for Outlier Detection:

```
Lower Bound = Q1 - 1.5 × IQR
Upper Bound = Q3 + 1.5 × IQR

Any value OUTSIDE these bounds = OUTLIER
```

### 🔢 Example (from above):

```
Q1 = 245, Q3 = 550, IQR = 305

Lower Bound = 245 - 1.5(305) = 245 - 457.5 = -212.5
Upper Bound = 550 + 1.5(305) = 550 + 457.5 = 1007.5

Check data:
- 1500 > 1007.5 ← OUTLIER! ✓
- All other values are within bounds
```

### 📊 Visual (Box Plot):

```
        ┌────────────────┐
   ──┬──┤       |        ├──┬──────*
     │  └────────────────┘  │      outlier
    min    Q1  median Q3   max

    |←─────── IQR ────────→|
```

---

# 📖 TOPIC 1.7: Data Symmetry & Skewness ⭐⭐⭐⭐

## 🤔 What is Skewness?

Skewness tells you: **"Is the data symmetric or pulled to one side?"**

## 📊 Three Types:

### 1️⃣ Symmetric (No Skew):
```
       ▁▃▅▇▇▇▅▃▁
       ─────┼─────
        Mean = Median = Mode
```

### 2️⃣ Right-Skewed (Positive Skew):
```
    ▇▇▅▃▂▁▁▁
    ──┼───────→ tail on right

    Mode < Median < Mean
    (Mean pulled RIGHT by high values)
```

### 3️⃣ Left-Skewed (Negative Skew):
```
           ▁▁▁▂▃▅▇▇
    ←───────┼──
    tail on left

    Mean < Median < Mode
    (Mean pulled LEFT by low values)
```

## 🎯 Quick Rule:

```
If Mean > Median → RIGHT-SKEWED (positive)
If Mean < Median → LEFT-SKEWED (negative)
If Mean ≈ Median → SYMMETRIC
```

### 💡 Real-Life Examples:

| Distribution | Type | Why |
|--------------|------|-----|
| Income/Salary | Right-skewed | Few very rich people pull mean up |
| Age at retirement | Left-skewed | Few retire very early |
| Test scores (fair test) | Symmetric | Bell curve |

---

# 📖 TOPIC 1.8: Basic Probability ⭐⭐⭐⭐

## 🤔 What is Probability?

> **Probability** = Likelihood of an event happening (0 to 1)

### 📝 Formula:

```
                    Number of favorable outcomes
P(Event) = ─────────────────────────────────────────
                    Total number of outcomes

         n(E)
P(E) = ───────
         n(S)
```

### 🔢 Example:

**Rolling a dice, probability of getting 6:**

```
Favorable outcomes = {6} → n(E) = 1
Total outcomes = {1,2,3,4,5,6} → n(S) = 6

P(getting 6) = 1/6 ≈ 0.167
```

## 📝 Key Terms:

| Term | Meaning | Example (Dice) |
|------|---------|----------------|
| **Experiment** | Activity with uncertain outcome | Rolling a dice |
| **Sample Space (S)** | ALL possible outcomes | {1,2,3,4,5,6} |
| **Event (E)** | Subset of sample space | Getting even = {2,4,6} |

## 📝 Probability Axioms:

```
1. P(E) ≥ 0 (probability is never negative)
2. P(S) = 1 (total probability = 1)
3. P(A or B) = P(A) + P(B) - P(A and B)
```

---

# 📖 TOPIC 1.9: Mutually Exclusive vs Independent Events ⭐⭐⭐⭐⭐

## 1️⃣ MUTUALLY EXCLUSIVE Events

### 📝 Definition:

> Events are **mutually exclusive** if they CANNOT happen at the SAME TIME

### 🔢 Example:

```
Rolling a dice:
- Event A: Getting 1
- Event B: Getting 6

Can you get 1 AND 6 in the same roll? NO!
→ A and B are MUTUALLY EXCLUSIVE

P(A ∩ B) = 0
P(A ∪ B) = P(A) + P(B)
```

### Visual:
```
        A          B
     ┌─────┐    ┌─────┐
     │  ●  │    │  ●  │
     └─────┘    └─────┘

     No overlap!
```

---

## 2️⃣ INDEPENDENT Events

### 📝 Definition:

> Events are **independent** if one happening DOES NOT AFFECT the other

### 🔢 Example:

```
- Event A: First coin flip is Heads
- Event B: Second coin flip is Heads

Does the first flip affect the second? NO!
→ A and B are INDEPENDENT

P(A ∩ B) = P(A) × P(B)
         = 0.5 × 0.5 = 0.25
```

### Visual:
```
        A          B
     ┌─────────────────┐
     │  A  │  A∩B  │ B │
     └─────────────────┘

     Can overlap!
```

---

## 📊 Comparison Table:

| Property | Mutually Exclusive | Independent |
|----------|-------------------|-------------|
| **Can happen together?** | NO ❌ | YES ✅ |
| **P(A ∩ B)** | = 0 | = P(A) × P(B) |
| **P(A ∪ B)** | = P(A) + P(B) | = P(A) + P(B) - P(A)×P(B) |
| **Example** | Getting 1 and 6 on same roll | Two separate coin flips |

### ⚠️ Common Confusion:

```
Mutually Exclusive ≠ Independent!

If A and B are mutually exclusive (can't happen together):
- If A happens, B CANNOT happen
- So they ARE NOT independent!
```

---

## 📝 Addition Rule (OR):

```
General: P(A ∪ B) = P(A) + P(B) - P(A ∩ B)

If Mutually Exclusive: P(A ∪ B) = P(A) + P(B)
```

## 📝 Multiplication Rule (AND):

```
General: P(A ∩ B) = P(A) × P(B|A)

If Independent: P(A ∩ B) = P(A) × P(B)
```

---

# 📝 MODULE 1 FORMULA CHEAT SHEET

```
┌──────────────────────────────────────────────────────────────┐
│                 CENTRAL TENDENCY                              │
├──────────────────────────────────────────────────────────────┤
│  Mean: μ = Σxᵢ/n                                             │
│  Median: Middle value (arrange in order first!)             │
│  Mode: Most frequent value                                   │
├──────────────────────────────────────────────────────────────┤
│                    DISPERSION                                 │
├──────────────────────────────────────────────────────────────┤
│  Range: Max - Min                                            │
│  Variance: σ² = Σ(xᵢ-μ)²/n (population)                     │
│           s² = Σ(xᵢ-x̄)²/(n-1) (sample)                      │
│  Std Dev: σ = √variance                                      │
│  CV: (σ/μ) × 100%                                           │
├──────────────────────────────────────────────────────────────┤
│                    QUARTILES & IQR                            │
├──────────────────────────────────────────────────────────────┤
│  Q1 position: (n+1)/4                                        │
│  Q2 position: (n+1)/2 (median)                              │
│  Q3 position: 3(n+1)/4                                       │
│  IQR = Q3 - Q1                                               │
│  Outlier bounds: Q1-1.5×IQR to Q3+1.5×IQR                   │
├──────────────────────────────────────────────────────────────┤
│                    PROBABILITY                                │
├──────────────────────────────────────────────────────────────┤
│  P(E) = n(E)/n(S)                                           │
│  P(A ∪ B) = P(A) + P(B) - P(A ∩ B)                         │
│  Mutually Exclusive: P(A ∩ B) = 0                           │
│  Independent: P(A ∩ B) = P(A) × P(B)                        │
├──────────────────────────────────────────────────────────────┤
│                    SKEWNESS                                   │
├──────────────────────────────────────────────────────────────┤
│  Mean > Median → Right-skewed (positive)                    │
│  Mean < Median → Left-skewed (negative)                     │
│  Mean ≈ Median → Symmetric                                   │
└──────────────────────────────────────────────────────────────┘
```

---

# ✅ MODULE 1 EXAM PREPARATION CHECKLIST

## Central Tendency:
- [ ] Calculate mean from raw data
- [ ] Find median for odd and even counts
- [ ] Identify mode (unimodal, bimodal)
- [ ] Choose correct measure based on data type

## Dispersion:
- [ ] Calculate variance (population & sample)
- [ ] Calculate standard deviation
- [ ] Calculate CV to compare datasets
- [ ] Interpret what SD tells you

## Quartiles & Outliers:
- [ ] Find Q1, Q2 (median), Q3
- [ ] Calculate IQR
- [ ] Find outlier bounds
- [ ] Identify outliers

## Skewness:
- [ ] Compare mean vs median
- [ ] Identify right/left skew
- [ ] Draw rough distribution shape

## Probability:
- [ ] Calculate basic probability
- [ ] Apply addition rule (OR)
- [ ] Apply multiplication rule (AND)
- [ ] Distinguish mutually exclusive vs independent

---

# 📚 What's Next?

**Module 2: Conditional Probability & Bayes Theorem**
- Conditional Probability P(A|B)
- Total Probability Theorem
- Bayes' Theorem
- Naïve Bayes Classifier

---

**📖 References:**
- T1: Statistics for Data Scientists - Maurits Kaptein, Springer 2022
- T2: Probability & Statistics for Engineering - Jay L Devore, Cengage

**📅 Created for**: BITS Pilani MTech WLP, AIML ZC418, Module 1

**⏱️ Estimated Study Time**: 3-4 hours for thorough understanding

