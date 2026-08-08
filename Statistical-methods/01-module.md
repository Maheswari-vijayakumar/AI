# Statistical Methods - MODULE 1: Basic Probability & Statistics
## BITS MTech AI/ML (AIML ZC418) - Basic Level Notes
### Based on Official Handout & Past Papers (2025-26)

---

## 📚 MODULE 1 TOPICS:
1. Measures of Central Tendency (Mean, Median, Mode)
2. Measures of Variability (Variance, SD, IQR)
3. Data Symmetry & Outlier Detection
4. Basic Probability Concepts
5. Axioms of Probability
6. Mutually Exclusive & Independent Events

**Exam Coverage:** Mid-Sem (Closed Book) + Comprehensive (Open Book)

---

## 1.1 What is Statistics? 🎯

**Statistics** = Science of collecting, organizing, analyzing, and interpreting DATA.

### Two Branches:
| Type | Purpose | Example |
|------|---------|---------|
| **Descriptive** | Summarize data you HAVE | "Average marks = 75" |
| **Inferential** | Make predictions about data you DON'T have | "Population avg ≈ 75" |

---

## 1.2 Types of Data 📊

```
DATA
├── Qualitative (Categories)
│   ├── Nominal: No order (Colors: Red, Blue)
│   └── Ordinal: Has order (Poor < Good < Excellent)
│
└── Quantitative (Numbers)
    ├── Discrete: Countable (Students: 1, 2, 3...)
    └── Continuous: Measurable (Height: 5.5 ft)
```

### Data Symmetry & Outliers:
- **Symmetric Data**: Mean ≈ Median (bell-shaped)
- **Skewed Data**: Mean ≠ Median
  - Right skewed: Mean > Median (tail on right)
  - Left skewed: Mean < Median (tail on left)
- **Outlier Detection**: Values beyond Q1 - 1.5×IQR or Q3 + 1.5×IQR

### Five-Point Summary:
```
Minimum | Q1 | Median (Q2) | Q3 | Maximum

IQR (Interquartile Range) = Q3 - Q1
```

---

## 3. Measures of Central Tendency 📍

These tell you: **"Where is the CENTER of your data?"**

### 3.1 Mean (Average) μ or x̄
```
Mean = Sum of all values / Number of values

Example: Data = {2, 4, 6, 8, 10}
Mean = (2+4+6+8+10)/5 = 30/5 = 6
```

**When to use**: Data is symmetric, no extreme outliers

### 3.2 Median (Middle Value)
```
Step 1: Arrange in order
Step 2: Find middle value

Example: Data = {3, 7, 2, 9, 5}
Ordered = {2, 3, 5, 7, 9}
Median = 5 (middle one)

If EVEN count: Average of two middle values
Data = {2, 3, 5, 7}
Median = (3+5)/2 = 4
```

**When to use**: Data has outliers (salary data, house prices)

### 3.3 Mode (Most Frequent)
```
Example: Data = {1, 2, 2, 3, 2, 4}
Mode = 2 (appears 3 times)
```

**When to use**: Categorical data (most popular color, common shoe size)

### Comparison Table:
| Measure | Affected by Outliers? | Best For |
|---------|----------------------|----------|
| Mean | YES ❌ | Symmetric data |
| Median | NO ✅ | Skewed data |
| Mode | NO ✅ | Categories |

---

## 4. Measures of Dispersion (Spread) 📏

These tell you: **"How SPREAD OUT is your data?"**

### 4.1 Range
```
Range = Maximum - Minimum

Data = {2, 5, 8, 12, 15}
Range = 15 - 2 = 13
```
⚠️ Problem: Only uses 2 values, ignores rest

### 4.2 Variance (σ² or s²)
**"Average of squared differences from mean"**

```
Population Variance (σ²) = Σ(xi - μ)² / N
Sample Variance (s²) = Σ(xi - x̄)² / (n-1)

Example: Data = {2, 4, 6}
Mean = 4
Differences = {-2, 0, 2}
Squared = {4, 0, 4}
Variance = (4+0+4)/3 = 8/3 = 2.67
```

### 4.3 Standard Deviation (σ or s)
```
Standard Deviation = √Variance

From above: SD = √2.67 = 1.63
```

> **Simple Understanding**: 
> - Small SD = Data points close to mean (consistent)
> - Large SD = Data points far from mean (varied)

### 4.4 Coefficient of Variation (CV)
```
CV = (Standard Deviation / Mean) × 100%

Use: Compare variability of different datasets
```

---

## 5. Probability Basics 🎲

### What is Probability?
```
Probability = Number of favorable outcomes / Total outcomes

P(Event) = n(E) / n(S)

Range: 0 ≤ P ≤ 1
- P = 0 → Impossible
- P = 1 → Certain
```

### Key Terms:
| Term | Meaning | Example |
|------|---------|---------|
| **Experiment** | Activity with uncertain outcome | Rolling a dice |
| **Sample Space (S)** | All possible outcomes | {1,2,3,4,5,6} |
| **Event (E)** | Subset of sample space | Getting even = {2,4,6} |

### Basic Rules:
```
1. Addition Rule (OR):
   P(A or B) = P(A) + P(B) - P(A and B)
   
   If A, B are mutually exclusive:
   P(A or B) = P(A) + P(B)

2. Multiplication Rule (AND):
   P(A and B) = P(A) × P(B|A)

   If A, B are independent:
   P(A and B) = P(A) × P(B)
```

---

## 📝 MODULE 1 FORMULA CHEAT SHEET

| Concept | Formula |
|---------|---------|
| Mean | μ = Σx/n |
| Variance | σ² = Σ(x-μ)²/n |
| Std Dev | σ = √variance |
| CV | CV = (σ/μ) × 100% |
| IQR | IQR = Q3 - Q1 |
| Outlier Bounds | Q1 - 1.5×IQR to Q3 + 1.5×IQR |
| P(A or B) | P(A) + P(B) - P(A∩B) |
| P(A and B) Independent | P(A) × P(B) |
| Mutually Exclusive | P(A∩B) = 0 |

---

## ✅ MODULE 1 CHECKLIST

- [ ] Define descriptive vs inferential statistics
- [ ] Identify data types (nominal, ordinal, discrete, continuous)
- [ ] Calculate mean, median, mode
- [ ] Calculate variance and standard deviation
- [ ] Calculate CV to compare variability
- [ ] Find Q1, Q3, IQR
- [ ] Detect outliers using IQR method
- [ ] Identify skewness (Mean vs Median)
- [ ] Solve basic probability problems
- [ ] Apply Addition Rule (OR)
- [ ] Apply Multiplication Rule (AND)
- [ ] Distinguish mutually exclusive vs independent events

---

# 🎯 MODULE 1 PAST PAPER QUESTIONS (2025-2026)

## Exam Pattern:
| Exam | Module 1 Marks | Type |
|------|----------------|------|
| Mid-Sem (EC-2) | 3M | Closed Book |
| Comprehensive (EC-3) | 8M | Open Book |
| **Total** | **11M** | |

---

## ✍️ SOLVED QUESTIONS:

### Q1 (Mid-Sem): Quartiles & Skewness (3M)

**Data**: 200, 220, 240, 260, 280, 300, 320, 350, 400, 600, 900, 1500

**Solution**:
```
n = 12, sorted data already

Q1 position = (n+1)/4 = 13/4 = 3.25
Q1 = 240 + 0.25(260-240) = 245

Q3 position = 3(n+1)/4 = 9.75
Q3 = 400 + 0.75(600-400) = 550

IQR = Q3 - Q1 = 550 - 245 = 305

Mean = (200+220+...+1500)/12 = 5570/12 = 464.17
Median = (300+320)/2 = 310

Since Mean (464.17) > Median (310) → RIGHT-SKEWED
```

---

### Q2 (Comp): Outlier Detection & CV Comparison (5M)

**Given**: Milk dataset with 969 samples

| Statistic | Cells | Fat | Protein |
|-----------|-------|-----|---------|
| Mean | 358.28 | 3.14 | 3.30 |
| Std Dev | 344.32 | 0.33 | 0.15 |
| Q1 | 156 | 3.45 | 3.22 |
| Median | 285 | 3.66 | 3.32 |
| Q3 | 479 | 3.89 | 3.39 |
| Max | 5230 | 5.43 | 3.85 |

**Part 1: Outlier Detection**
```
For CELLS:
IQR = 479 - 156 = 323
Upper Bound = 479 + 1.5(323) = 963.5
Max = 5230 > 963.5 → OUTLIERS EXIST ✓

Answer: CELLS has most extreme outlier
```

**Part 2: Least Variation (CV)**
```
CV = (Standard Deviation / Mean) × 100%

CELLS: CV = (344.32/358.28) × 100% = 96.1%
FAT: CV = (0.33/3.14) × 100% = 10.5%
PROTEIN: CV = (0.15/3.30) × 100% = 4.5% ← LOWEST

Answer: PROTEIN shows LEAST variation
```

**Part 3: Preprocessing Steps**
```
1. Outlier Treatment (remove/cap/log transform)
2. Normalization/Scaling (Min-Max or Z-score)
3. Handle Skewness (log/Box-Cox transform)
```

---

### Q3 (Comp): Probability Rules (3M)

**Given**: P(A) = 0.35, P(B) = p, P(A ∪ B) = 0.65

**(a) If Mutually Exclusive:**
```
P(A∩B) = 0
0.65 = 0.35 + p - 0
p = 0.30
```

**(b) If Independent:**
```
P(A∩B) = P(A) × P(B) = 0.35p
0.65 = 0.35 + p - 0.35p
0.30 = 0.65p
p = 6/13 ≈ 0.462
```

**(c) If P(A∩B) = 0.2:**
```
0.65 = 0.35 + p - 0.2
p = 0.50
```

**(d) If A ⊆ B (A is subset of B):**
```
P(A∩B) = P(A) = 0.35
P(A∪B) = P(B)
0.65 = 0.35 + p - 0.35
p = 0.65
```

---

## 📋 MODULE 1 SUMMARY:

| Question | Topic | Marks |
|----------|-------|-------|
| Q1 (Mid-Sem) | Quartiles, IQR, Skewness | 3M |
| Q2 (Comp) | Outlier detection, CV | 5M |
| Q3 (Comp) | Mutually Exclusive, Independent | 3M |
| **Total** | | **11M** |

---

# 📖 REFERENCE BOOKS

1. **T1**: Statistics for Data Scientists - Maurits Kaptein, Springer 2022
2. **T2**: Probability & Statistics for Engineering - Jay L Devore, Cengage

---

*Notes: BITS MTech WLP - AI/ML (AIML ZC418) - Module 1 Only*
*Includes: Theory + Solved Past Papers (2025-26)*
