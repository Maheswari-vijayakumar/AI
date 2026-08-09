# 📘 Module 1: Introduction to Machine Learning - Complete Exam-Ready Notes
## AIML ZG565 - Machine Learning | BITS Pilani MTech WLP

**Syllabus Reference:** Contact Session 1-2 (Mid-Sem Syllabus: Sessions 1-8)

---

## 📅 DAY-WISE STUDY PLAN (Module 1)

### Day 1: ML Basics (2 hours)
| Time | Topic | What to Do |
|------|-------|------------|
| 30 min | Part 1: What is ML? | Understand T-P-E framework |
| 30 min | Part 2: Why ML? | Learn when to use ML |
| 30 min | Part 3: Types of ML | Supervised, Unsupervised, RL |
| 30 min | Part 4: Classification vs Regression | Key differences |

### Day 2: Data Fundamentals ⭐ EXAM FOCUS (2.5 hours)
| Time | Topic | What to Do |
|------|-------|------------|
| 45 min | Part 5: Data Types (NOIR) | **EC2 Q2a** - Must master! |
| 45 min | Part 6: Missing Values | **EC2 Q2c** - Imputation methods |
| 30 min | Part 7: Data Preprocessing | Scaling, encoding |
| 30 min | Practice | Solve EC2 Q2 completely |

### Day 3: ML Workflow & Metrics (2 hours)
| Time | Topic | What to Do |
|------|-------|------------|
| 45 min | Part 8: ML Workflow | 7-step process |
| 45 min | Part 9: Performance Metrics | **EC2 Q3b** - Confusion matrix |
| 30 min | Part 10: Train-Test Split | Overfitting, Underfitting |

### Day 4: Revision & Practice (2 hours)
| Time | Topic | What to Do |
|------|-------|------------|
| 60 min | Part 11: Exam Problems | Solve all practice problems |
| 30 min | Part 12: Quick Reference | Review formulas |
| 30 min | Checklist | Verify all topics covered |

---

## 📋 Module 1 Topics Checklist

| Topic | Part | Exam Important |
|-------|------|----------------|
| What is ML? (T-P-E) | Part 1 | ⭐⭐ |
| Types of ML | Part 3 | ⭐⭐ |
| **Data Types (NOIR)** | Part 5 | ⭐⭐⭐ EC2 Q2a |
| **Missing Value Imputation** | Part 6 | ⭐⭐⭐ EC2 Q2c |
| ML Workflow | Part 8 | ⭐⭐ |
| **Confusion Matrix & Metrics** | Part 9 | ⭐⭐⭐ EC2 Q3b |
| Overfitting/Underfitting | Part 10 | ⭐⭐⭐ EC2 Q5 |

---

## 📍 Part 1: What is Machine Learning?

### Simple Definition:
> **Machine Learning = Teaching computers to learn from examples, not explicit rules!**

### The T-P-E Framework (Tom Mitchell's Definition):

> "A computer program learns from **Experience (E)** with respect to some **Task (T)** and **Performance measure (P)**, if its performance at T improves with E."

| Letter | Meaning | Example: Spam Filter |
|--------|---------|---------------------|
| **T** | Task | Classify emails as spam/not spam |
| **P** | Performance | % of emails correctly classified |
| **E** | Experience | Database of labeled emails |

### More Examples:

| Application | T (Task) | P (Performance) | E (Experience) |
|-------------|----------|-----------------|----------------|
| Handwriting Recognition | Recognize digits | % correctly identified | Labeled digit images |
| Self-Driving Car | Drive safely | Distance without error | Videos of human driving |
| Chess AI | Play chess | % games won | Past games played |

---

## 📍 Part 2: Why Do We Need Machine Learning?

### When to Use ML:

| Scenario | Why ML? |
|----------|---------|
| **Rules too complex** | Recognizing faces - can't write explicit rules |
| **Hidden patterns** | Customer segmentation - unknown patterns in data |
| **Too much data** | Medical diagnosis from millions of records |
| **Changing environment** | Spam detection - spammers change tactics |

### When NOT to Use ML:
```
❌ Simple calculations (Salary = Basic + DA + HRA)
❌ Deterministic rules exist (Tax calculation)
❌ Not enough data available
❌ Explainability is critical and simple rules suffice
```

---

## 📍 Part 3: Types of Machine Learning

```
Machine Learning
      │
      ├── 1. SUPERVISED LEARNING (With Labels)
      │        ├── Classification (Categories)
      │        └── Regression (Numbers)
      │
      ├── 2. UNSUPERVISED LEARNING (Without Labels)
      │        ├── Clustering
      │        └── Dimensionality Reduction
      │
      └── 3. REINFORCEMENT LEARNING (Trial & Error)
               └── Agent learns via Rewards/Penalties
```

### Quick Comparison:

| Aspect | Supervised | Unsupervised | Reinforcement |
|--------|------------|--------------|---------------|
| **Labels?** | ✅ Yes | ❌ No | ❌ No |
| **Feedback** | Immediate | None | Delayed (rewards) |
| **Goal** | Predict output | Find patterns | Maximize reward |
| **Example** | Spam detection | Customer groups | Game AI |

---

## 📍 Part 4: Classification vs Regression

| Aspect | Classification | Regression |
|--------|----------------|------------|
| **Output** | Category/Label | Continuous Number |
| **Question** | "Which class?" | "How much?" |
| **Examples** | Spam/Not Spam, Yes/No | Price, Temperature |
| **Algorithms** | Logistic Regression, Decision Tree, SVM | Linear Regression |

### Quick Test:
- "Will it rain tomorrow?" → **Classification** (Yes/No)
- "How much will the house cost?" → **Regression** (₹50L, ₹75L...)
- "Is this tumor cancerous?" → **Classification** (Malignant/Benign)
- "What will be tomorrow's temperature?" → **Regression** (32°C, 28°C...)

---

## 📍 Part 5: Data Types (NOIR) ⭐⭐⭐ EC2 Q2a - MUST KNOW!

### The NOIR Framework:

| Type | Definition | Examples | Operations Allowed |
|------|------------|----------|-------------------|
| **N**ominal | Categories with NO order | Colors (Red, Blue), Gender (M/F), Product Category | Mode, Frequency |
| **O**rdinal | Categories WITH order | Education (High School < Bachelor's < Master's < PhD), Ratings (Low < Medium < High) | Mode, Median, Comparisons |
| **I**nterval | Numeric, equal intervals, NO true zero | Temperature (°C), Dates, IQ scores | Mean, Std Dev, +/- |
| **R**atio | Numeric, equal intervals, HAS true zero | Height, Weight, Salary, Age, Distance | All operations including ×/÷ |

### Memory Trick: **NOIR** (French for "black")
```
N - Names only (no order)
O - Order matters (but gaps unknown)
I - Intervals equal (no true zero)
R - Ratio possible (true zero exists)
```

### EC2 Q2a - Exam Question:

> **Classify each attribute: Temperature (°C), Salary (₹), Customer Satisfaction (Low/Medium/High), Product Category (Electronics, Grocery)**

| Attribute | Type | Justification |
|-----------|------|---------------|
| Temperature (°C) | **Interval** | Equal intervals, but 0°C ≠ "no temperature" |
| Salary (₹) | **Ratio** | Has true zero (₹0 = no salary), can say "2x salary" |
| Customer Satisfaction | **Ordinal** | Has order (Low < Medium < High), but gaps unequal |
| Product Category | **Nominal** | Just names, no inherent order |

### EC2 Q2b - Education Level:

> **What operations are meaningful for Education Level (High School → Bachelor's → Master's → PhD)?**

**Answer:** Ordinal data

| Operation | Meaningful? | Why? |
|-----------|-------------|------|
| Mode | ✅ Yes | "Most common education level" |
| Median | ✅ Yes | "Middle education level" |
| Mean | ❌ No | Can't average "Bachelor's + PhD" |
| Comparisons | ✅ Yes | "PhD > Master's" makes sense |

---

## 📍 Part 6: Missing Value Handling ⭐⭐⭐ EC2 Q2c

### Why Handle Missing Values?
- Most ML algorithms can't handle NaN/NULL
- Missing data can bias results
- Need strategies to fill or remove

### Common Strategies:

| Strategy | When to Use | Formula |
|----------|-------------|---------|
| **Delete rows** | Few missing values, large dataset | Remove entire row |
| **Mean Imputation** | Numeric data, symmetric distribution | Replace with mean |
| **Median Imputation** | Numeric data, skewed/outliers | Replace with median |
| **Mode Imputation** | Categorical data | Replace with most frequent |
| **Forward/Backward Fill** | Time series data | Use previous/next value |

### EC2 Q2c - Exam Question:

> **Dataset: 10, 12, 13, NaN, 15, 18, NaN, 20**
> **Impute missing values using mean and median.**

**Step 1: Calculate Mean (ignoring NaN)**
```
Available values: 10, 12, 13, 15, 18, 20
Mean = (10 + 12 + 13 + 15 + 18 + 20) / 6 = 88 / 6 = 14.67
```

**Step 2: Calculate Median (ignoring NaN)**
```
Sorted values: 10, 12, 13, 15, 18, 20
Median = (13 + 15) / 2 = 14
```

**Step 3: Impute**

| Method | Imputed Dataset |
|--------|-----------------|
| Mean | 10, 12, 13, **14.67**, 15, 18, **14.67**, 20 |
| Median | 10, 12, 13, **14**, 15, 18, **14**, 20 |

### When to Use Which?

| Situation | Use |
|-----------|-----|
| Normal distribution | Mean |
| Skewed data / Outliers | Median |
| Categorical data | Mode |

---

## 📍 Part 7: Data Preprocessing

### Key Steps:

```
Raw Data → Clean → Transform → Encode → Scale → Ready for ML
```

### 1. Handling Categorical Variables:

| Encoding | When to Use | Example |
|----------|-------------|---------|
| **Label Encoding** | Ordinal data | Low=1, Medium=2, High=3 |
| **One-Hot Encoding** | Nominal data | Red=[1,0,0], Blue=[0,1,0] |

### 2. Feature Scaling:

| Method | Formula | Range |
|--------|---------|-------|
| **Min-Max Scaling** | (x - min) / (max - min) | [0, 1] |
| **Standardization (Z-score)** | (x - μ) / σ | Mean=0, Std=1 |

### When to Scale:
- ✅ Distance-based algorithms (KNN, SVM)
- ✅ Gradient descent algorithms
- ❌ Tree-based algorithms (Decision Trees, Random Forest)

---

## 📍 Part 8: Machine Learning Workflow

### The 7-Step Process:

```
┌─────────────────────────────────────────────────────┐
│  1. Define Problem     → What are we predicting?   │
│  2. Collect Data       → Gather relevant data      │
│  3. Prepare Data       → Clean, transform, split   │
│  4. Choose Model       → Select algorithm          │
│  5. Train Model        → Learn from training data  │
│  6. Evaluate Model     → Test on unseen data       │
│  7. Deploy & Monitor   → Use in production         │
└─────────────────────────────────────────────────────┘
```

### Train-Test Split:

```
Total Data (100%)
    │
    ├── Training Set (70-80%)  → Model learns from this
    │
    └── Test Set (20-30%)      → Evaluate model (NEVER seen during training)
```

**Why Split?**
- Avoid overfitting
- Estimate real-world performance
- Validate model generalization

---

## 📍 Part 9: Performance Metrics ⭐⭐⭐ EC2 Q3b - CRITICAL!

### Confusion Matrix (Binary Classification):

```
                    Predicted
                 Positive  Negative
Actual Positive    TP        FN
Actual Negative    FP        TN

TP = True Positive (Correctly predicted positive)
TN = True Negative (Correctly predicted negative)
FP = False Positive (Type I Error - False alarm)
FN = False Negative (Type II Error - Missed detection)
```

### Key Metrics:

| Metric | Formula | Meaning |
|--------|---------|---------|
| **Accuracy** | (TP + TN) / Total | Overall correctness |
| **Precision** | TP / (TP + FP) | Of predicted positives, how many correct? |
| **Recall (Sensitivity)** | TP / (TP + FN) | Of actual positives, how many found? |
| **F1-Score** | 2 × (Precision × Recall) / (Precision + Recall) | Harmonic mean of P & R |
| **Specificity** | TN / (TN + FP) | Of actual negatives, how many correct? |

### EC2 Q3b - Multi-Class Confusion Matrix:

> **Given:**
> ```
>              Predicted
>            A     B     C
> Actual A   40    5     5
> Actual B   8    30    12
> Actual C   3     7    35
> ```

**Solution:**

**1. Accuracy:**
```
Accuracy = (40 + 30 + 35) / (40+5+5+8+30+12+3+7+35)
         = 105 / 145
         = 0.724 or 72.4%
```

**2. Per-Class Metrics:**

For **Class A:**
```
TP_A = 40
FP_A = 8 + 3 = 11 (predicted A but actually B or C)
FN_A = 5 + 5 = 10 (actually A but predicted B or C)

Precision_A = 40 / (40 + 11) = 40/51 = 0.784
Recall_A = 40 / (40 + 10) = 40/50 = 0.800
F1_A = 2 × (0.784 × 0.800) / (0.784 + 0.800) = 0.792
```

For **Class B:**
```
TP_B = 30
FP_B = 5 + 7 = 12
FN_B = 8 + 12 = 20

Precision_B = 30 / (30 + 12) = 30/42 = 0.714
Recall_B = 30 / (30 + 20) = 30/50 = 0.600
F1_B = 2 × (0.714 × 0.600) / (0.714 + 0.600) = 0.652
```

For **Class C:**
```
TP_C = 35
FP_C = 5 + 12 = 17
FN_C = 3 + 7 = 10

Precision_C = 35 / (35 + 17) = 35/52 = 0.673
Recall_C = 35 / (35 + 10) = 35/45 = 0.778
F1_C = 2 × (0.673 × 0.778) / (0.673 + 0.778) = 0.722
```

---

## 📍 Part 10: Overfitting, Underfitting & Bias-Variance ⭐⭐⭐ EC2 Q5

### The Three Scenarios:

| Scenario | Training Error | Test Error | Problem |
|----------|----------------|------------|---------|
| **Underfitting** | High | High | Model too simple |
| **Good Fit** | Low | Low | Just right! |
| **Overfitting** | Very Low | High | Model memorized data |

### Visual Understanding:

```
Underfitting          Good Fit            Overfitting
(High Bias)          (Balanced)          (High Variance)

    ──────              ╭─╮                ╭╮╭╮╭╮
   /      \            /   \              │││││││
  ●  ●  ●  ●          ●     ●            ●│●│●│●
                     /       \
```

### Bias-Variance Tradeoff:

| Concept | Definition | Effect |
|---------|------------|--------|
| **Bias** | Error from wrong assumptions | High bias → Underfitting |
| **Variance** | Sensitivity to training data | High variance → Overfitting |

```
Total Error = Bias² + Variance + Irreducible Noise
```

### EC2 Q5b - Exam Question:

> **True function: y = x³ + ε. Rank models by bias and variance:**
> - Model 1: Linear regression
> - Model 2: Cubic regression
> - Model 3: 15th-degree polynomial

**Answer:**

| Ranking | Bias (High to Low) | Variance (High to Low) |
|---------|-------------------|------------------------|
| 1st | Model 1 (Linear) | Model 3 (15th degree) |
| 2nd | Model 3 (15th degree) | Model 1 (Linear) |
| 3rd | Model 2 (Cubic) | Model 2 (Cubic) |

**Explanation:**
- **Model 1 (Linear):** Too simple for cubic data → High Bias, Low Variance
- **Model 2 (Cubic):** Matches true function → Low Bias, Low Variance ✓
- **Model 3 (15th degree):** Too complex → Low Bias, High Variance

**Best Model:** Model 2 (Cubic) - lowest test error due to bias-variance balance

### Solutions to Overfitting:
```
1. More training data
2. Regularization (L1, L2)
3. Cross-validation
4. Reduce model complexity
5. Early stopping
6. Dropout (for neural networks)
```

---

## 📍 Part 11: Exam Practice Problems

### Problem 1: Data Type Classification
> Classify: Age, City, Temperature (Kelvin), Movie Rating (1-5 stars)

<details>
<summary>Click for Solution</summary>

| Attribute | Type | Reason |
|-----------|------|--------|
| Age | **Ratio** | True zero (0 years), can say "twice as old" |
| City | **Nominal** | Names only, no order |
| Temperature (Kelvin) | **Ratio** | True zero (0K = absolute zero) |
| Movie Rating (1-5) | **Ordinal** | Ordered categories, unequal gaps |

</details>

---

### Problem 2: Missing Value Imputation
> Dataset: 5, 8, NaN, 12, 15, NaN, 25, 30
> Impute using mean and median.

<details>
<summary>Click for Solution</summary>

**Available values:** 5, 8, 12, 15, 25, 30

**Mean:** (5+8+12+15+25+30)/6 = 95/6 = **15.83**

**Median:** Sorted: 5, 8, 12, 15, 25, 30 → (12+15)/2 = **13.5**

| Method | Result |
|--------|--------|
| Mean | 5, 8, **15.83**, 12, 15, **15.83**, 25, 30 |
| Median | 5, 8, **13.5**, 12, 15, **13.5**, 25, 30 |

</details>

---

### Problem 3: Confusion Matrix Analysis
> Given: TP=50, TN=40, FP=10, FN=20
> Calculate: Accuracy, Precision, Recall, F1-Score

<details>
<summary>Click for Solution</summary>

```
Total = 50 + 40 + 10 + 20 = 120

Accuracy = (50 + 40) / 120 = 90/120 = 0.75 = 75%

Precision = 50 / (50 + 10) = 50/60 = 0.833 = 83.3%

Recall = 50 / (50 + 20) = 50/70 = 0.714 = 71.4%

F1-Score = 2 × (0.833 × 0.714) / (0.833 + 0.714)
         = 2 × 0.595 / 1.547
         = 0.769 = 76.9%
```

</details>

---

### Problem 4: Bias-Variance Analysis
> A model has: Training accuracy = 98%, Test accuracy = 65%
> What's the problem and solution?

<details>
<summary>Click for Solution</summary>

**Problem:** **Overfitting** (High Variance)
- Training accuracy very high (98%)
- Test accuracy much lower (65%)
- Model memorized training data, doesn't generalize

**Solutions:**
1. Get more training data
2. Use regularization (L1/L2)
3. Reduce model complexity
4. Use cross-validation
5. Apply dropout (if neural network)

</details>

---

## 📍 Part 12: Quick Reference Card

### Data Types (NOIR):
```
Nominal  → Categories, NO order (Colors, Names)
Ordinal  → Categories, WITH order (Low/Med/High)
Interval → Numbers, NO true zero (Temperature °C)
Ratio    → Numbers, HAS true zero (Height, Salary)
```

### Metrics Formulas:
```
Accuracy  = (TP + TN) / Total
Precision = TP / (TP + FP)
Recall    = TP / (TP + FN)
F1-Score  = 2 × P × R / (P + R)
```

### Bias-Variance:
```
High Bias     → Underfitting → Too simple
High Variance → Overfitting  → Too complex
```

### ML Types:
```
Supervised   → Has labels → Classification/Regression
Unsupervised → No labels  → Clustering
Reinforcement → Rewards   → Trial & Error
```

---

## ✅ Module 1 Exam Preparation Checklist

- [ ] Can explain T-P-E framework with examples
- [ ] Can classify data types (Nominal, Ordinal, Interval, Ratio)
- [ ] Can impute missing values using mean/median
- [ ] Can calculate Accuracy, Precision, Recall, F1 from confusion matrix
- [ ] Can identify overfitting vs underfitting
- [ ] Understand bias-variance tradeoff
- [ ] Know when to use Classification vs Regression
- [ ] Can explain ML workflow steps

---

*📅 Created for BITS MTech WLP - AIML ZG565*
*Course: Machine Learning*
*Module 1: Introduction to Machine Learning*
*Good luck with your exam! 🎓*

