# 🎯 Machine Learning - Module 1 Complete Exam Notes
## AIML ZG565 | BITS Pilani MTech WLP Program
## 📚 Based on 2025-26 Question Papers & Course Handout
---

# ⚠️ EXAM PATTERN (Mid-Semester - EC2)

| Detail | Info |
|--------|------|
| **Weightage** | 30% |
| **Type** | Closed Book |
| **Duration** | 2 Hours |
| **Syllabus** | Contact Sessions 1-8 |

## 🎯 HIGH PRIORITY TOPICS (From Past Papers):
1. ⭐⭐⭐ **Linear Regression** (OLS, Normal Equation, Gradient Descent)
2. ⭐⭐⭐ **Decision Trees** (Entropy, Information Gain, Gini Index)
3. ⭐⭐⭐ **Logistic Regression** (Log Loss, Multi-class)
4. ⭐⭐⭐ **Confusion Matrix & Metrics** (Precision, Recall, F1)
5. ⭐⭐⭐ **Bias-Variance Tradeoff**
6. ⭐⭐ **Gradient Descent** (Step-by-step calculation)
7. ⭐⭐ **Data Types & Preprocessing**
8. ⭐⭐ **KNN** (Instance-based learning)
9. ⭐⭐ **Regularization** (L1, L2)

---

# 📌 PART 1: INTRODUCTION TO ML (CS-1)

## 1.1 What is Machine Learning?
> **ML = Teaching computers to learn from data without being explicitly programmed**

| Approach | How it works |
|----------|--------------|
| **Traditional Programming** | You write rules: "If email has 'lottery', mark spam" |
| **Machine Learning** | You give examples → Computer learns patterns itself |

## 1.2 Types of Machine Learning

| Type | Data | Example |
|------|------|---------|
| **Supervised** | Input + Output (labeled) | Spam detection, Price prediction |
| **Unsupervised** | Input only (no labels) | Customer clustering |
| **Reinforcement** | Rewards/Penalties | Game AI, Robot |

### Supervised Learning:
- **Classification** → Output is category (Spam/Not Spam)
- **Regression** → Output is number (House Price)

## 1.3 Key Terms

| Term | Meaning |
|------|---------|
| **Features (X)** | Input variables |
| **Target (Y)** | Output to predict |
| **Overfitting** | Good on train, bad on test |
| **Underfitting** | Bad on both |

---

# 📌 PART 2: DATA PREPROCESSING (CS-2, CS-3)

## 2.1 Data Types ⭐ EXAM

| Type | Description | Example |
|------|-------------|---------|
| **Nominal** | Categories, no order | Color, City |
| **Ordinal** | Categories with order | Low/Med/High |
| **Interval** | Numbers, no true zero | Temperature in Celsius |
| **Ratio** | Numbers with true zero | Salary, Age |

### 📝 Past Paper: Classify Temperature, Salary, Customer Satisfaction, Product Category
- Temperature → **Interval**, Salary → **Ratio**
- Customer Satisfaction → **Ordinal**, Product Category → **Nominal**

## 2.2 Missing Value Imputation ⭐ EXAM

| Method | When to Use |
|--------|-------------|
| **Mean** | Numerical, no outliers |
| **Median** | Numerical, with outliers |
| **Mode** | Categorical |

### 📝 Example: Data = 10, 12, 13, NaN, 15, 18, NaN, 20
- Mean = 88/6 = **14.67**
- Median = (13+15)/2 = **14**

---

# 📌 PART 3: LINEAR REGRESSION (CS-3, CS-4) ⭐⭐⭐

## 3.1 Equation
```
y_hat = w0 + w1*x
```

## 3.2 OLS - Normal Equation ⭐⭐⭐
```
w1 (slope) = SUM[(xi - x_mean)(yi - y_mean)] / SUM[(xi - x_mean)^2]
w0 (intercept) = y_mean - w1 * x_mean
```

## 3.3 Error Metrics ⭐⭐⭐
```
MAE  = (1/n) * SUM|yi - y_hat_i|
MSE  = (1/n) * SUM(yi - y_hat_i)^2
RMSE = sqrt(MSE)
```

---

# 📌 PART 4: GRADIENT DESCENT (CS-4) ⭐⭐⭐

## Update Rule:
```
theta_new = theta_old - alpha * (dJ/d_theta)
```
Where alpha = learning rate

### 📝 Past Paper Example:
> J(theta) = (theta-6)^2, theta_0=10, alpha=0.1. Find theta after 2 iterations.

**Solution:**
- dJ/d_theta = 2(theta-6)
- Iteration 1: theta_1 = 10 - 0.1*2(10-6) = 10 - 0.8 = **9.2**
- Iteration 2: theta_2 = 9.2 - 0.1*2(9.2-6) = 9.2 - 0.64 = **8.56**

---

# 📌 PART 5: BIAS-VARIANCE TRADEOFF ⭐⭐⭐

| Concept | Meaning | Problem |
|---------|---------|---------|
| **High Bias** | Model too simple | Underfitting |
| **High Variance** | Model too complex | Overfitting |

### 📝 Past Paper: y = x^3 + noise. Compare Linear, Cubic, 15th-degree
| Model | Bias | Variance |
|-------|------|----------|
| Linear | HIGH | LOW |
| Cubic | LOW | MEDIUM |
| 15th-degree | LOW | HIGH |

**Answer: Cubic has lowest test error (matches true function)**

---

# 📌 PART 6: REGULARIZATION ⭐⭐

| Type | Penalty | Effect |
|------|---------|--------|
| **L1 (Lasso)** | SUM of abs(wi) | Feature selection (sparse) |
| **L2 (Ridge)** | SUM of wi^2 | Shrinks weights |

**Key:** More regularization → Increases Bias, Decreases Variance

---

# 📌 PART 7: LOGISTIC REGRESSION (CS-5, CS-6) ⭐⭐⭐

## 7.1 What is Logistic Regression?
> **Classification algorithm that predicts probability (0 to 1)**

### Sigmoid Function:
```
sigma(z) = 1 / (1 + e^(-z))
where z = w0 + w1*x1 + w2*x2 + ...
```

## 7.2 Why NOT use MSE for Logistic Regression? ⭐ EXAM
| Problem | Explanation |
|---------|-------------|
| **Non-convex** | MSE with sigmoid creates many local minima |
| **Solution** | Use **Log Loss (Cross-Entropy)** instead |

### Log Loss Formula:
```
J = -(1/n) * SUM[yi*log(y_hat) + (1-yi)*log(1-y_hat)]
```

## 7.3 Multi-class Classification ⭐ EXAM

| Strategy | For K classes | How it works |
|----------|---------------|--------------|
| **One-vs-Rest (OvR)** | K classifiers | "Class i vs All Others" |
| **One-vs-One (OvO)** | K(K-1)/2 classifiers | "Class i vs Class j" |

### 📝 Example: 4 classes → OvO needs 4*3/2 = **6 classifiers**

---

# 📌 PART 8: CONFUSION MATRIX & METRICS (CS-3) ⭐⭐⭐

## 8.1 Confusion Matrix
```
                    Predicted
                 |  Positive | Negative |
Actual Positive  |    TP     |    FN    |
Actual Negative  |    FP     |    TN    |
```

## 8.2 Metrics Formulas ⭐⭐⭐
```
Accuracy  = (TP + TN) / (TP + TN + FP + FN)
Precision = TP / (TP + FP)    → "Of predicted +ve, how many correct?"
Recall    = TP / (TP + FN)    → "Of actual +ve, how many detected?"
F1-Score  = 2 * (P * R) / (P + R)
```

## 8.3 📝 Past Paper Example (3-class confusion matrix):
```
Actual\Pred |  A  |  B  |  C  |
     A      | 40  |  5  |  5  |
     B      |  8  | 30  | 12  |
     C      |  3  |  7  | 35  |
```
- **Overall Accuracy** = (40+30+35)/145 = 105/145 = **72.4%**
- **Precision_A** = 40/51 = **78.4%**
- **Recall_A** = 40/50 = **80%**

---

# 📌 PART 9: DECISION TREES (CS-7) ⭐⭐⭐

## 9.1 What is a Decision Tree?
> **Tree where internal nodes = feature tests, leaves = class labels**

## 9.2 Entropy ⭐⭐⭐
> **Measure of impurity in dataset**

### Formula:
```
Entropy(S) = -SUM[pi * log2(pi)]
```
- Pure node (all same class): Entropy = **0**
- 50-50 split (binary): Entropy = **1** (maximum)

### 📝 Example: 4 positive, 4 negative
- p+ = 4/8 = 0.5, p- = 4/8 = 0.5
- Entropy = -0.5*log2(0.5) - 0.5*log2(0.5) = 0.5 + 0.5 = **1**

## 9.3 Information Gain ⭐⭐⭐
```
IG(S, A) = Entropy(S) - SUM[(|Sv|/|S|) * Entropy(Sv)]
```
**Choose attribute with HIGHEST Information Gain!**

## 9.4 Gini Index ⭐⭐
```
Gini(S) = 1 - SUM[pi^2]
```
**Lower Gini = Better split!**

### 📝 Example: 2 positive, 3 negative
- Gini = 1 - (2/5)^2 - (3/5)^2 = 1 - 0.16 - 0.36 = **0.48**

---

# 📌 PART 10: KNN - K-Nearest Neighbors (CS-8) ⭐⭐

## 10.1 Algorithm:
1. Calculate distance to all training points
2. Find K nearest neighbors
3. Take majority vote (classification) or average (regression)

## 10.2 Distance Metrics

| Metric | Formula |
|--------|---------|
| **Euclidean** | sqrt(SUM(xi-yi)^2) |
| **Manhattan** | SUM(abs(xi-yi)) |

## 10.3 Effect of K Value ⭐ EXAM

| K Value | Bias | Variance | Noise Sensitivity |
|---------|------|----------|-------------------|
| **Low (K=1,2)** | Low | High | High (noisy) |
| **High (K=10,20)** | High | Low | Low (smooth) |

### 📝 Past Paper Example (EC-3):
> Classify P=(2,2) using K=3 with Manhattan distance

| Point | X | Y | Class | Manhattan dist from P |
|-------|---|---|-------|----------------------|
| A | 1 | 2 | Red | abs(2-1)+abs(2-2) = 1 |
| B | 2 | 3 | Red | abs(2-2)+abs(2-3) = 1 |
| C | 3 | 3 | Blue | abs(2-3)+abs(2-3) = 2 |
| D | 6 | 5 | Blue | abs(2-6)+abs(2-5) = 7 |

- K=3 nearest: A, B, C
- Majority: Red=2, Blue=1
- **Answer: P is RED**

---

# 📌 PART 11: SOLVED PAST PAPER - LINEAR REGRESSION (Q1 EC-2)

## Question: Calculate OLS regression equation

| Year | X (Registrations) | Y (Sales Tax) |
|------|-------------------|---------------|
| 1 | 10 | 1.0 |
| 2 | 12 | 1.4 |
| 3 | 15 | 1.9 |
| 4 | 16 | 2.0 |
| 5 | 14 | 1.8 |
| 6 | 17 | 2.1 |
| 7 | 20 | 2.3 |

## Solution:

**Step 1: Calculate means**
- x_mean = (10+12+15+16+14+17+20)/7 = 104/7 = **14.857**
- y_mean = (1+1.4+1.9+2+1.8+2.1+2.3)/7 = 12.5/7 = **1.786**

**Step 2: Calculate summations**

| xi | yi | xi-x_mean | yi-y_mean | (xi-x_mean)(yi-y_mean) | (xi-x_mean)^2 |
|----|-----|-----------|-----------|------------------------|---------------|
| 10 | 1.0 | -4.857 | -0.786 | 3.818 | 23.59 |
| 12 | 1.4 | -2.857 | -0.386 | 1.103 | 8.16 |
| 15 | 1.9 | 0.143 | 0.114 | 0.016 | 0.02 |
| 16 | 2.0 | 1.143 | 0.214 | 0.245 | 1.31 |
| 14 | 1.8 | -0.857 | 0.014 | -0.012 | 0.73 |
| 17 | 2.1 | 2.143 | 0.314 | 0.673 | 4.59 |
| 20 | 2.3 | 5.143 | 0.514 | 2.643 | 26.45 |
| **SUM** | | | | **8.486** | **64.86** |

**Step 3: Calculate w1 and w0**
- w1 = 8.486 / 64.86 = **0.131**
- w0 = 1.786 - (0.131 * 14.857) = **-0.167**

**Final Equation: y_hat = -0.167 + 0.131x**

**Step 4: Predict for X=22**
- y_hat = -0.167 + 0.131(22) = -0.167 + 2.882 = **2.715**

---

# 📌 PART 12: SOLVED PAST PAPER - ERROR METRICS (Q1c EC-2)

## Question: Model Y = 3 - 4X + 2X^2. Calculate RMSE and MAE.

| X | Y (actual) | y_hat = 3-4X+2X^2 | Error | abs(Error) | Error^2 |
|---|------------|-------------------|-------|------------|---------|
| 5 | 30 | 3-20+50=33 | -3 | 3 | 9 |
| 8 | 90 | 3-32+128=99 | -9 | 9 | 81 |
| 12 | 250 | 3-48+288=243 | 7 | 7 | 49 |
| 15 | 498 | 3-60+450=393 | 105 | 105 | 11025 |
| 20 | 900 | 3-80+800=723 | 177 | 177 | 31329 |

- **MAE** = (3+9+7+105+177)/5 = 301/5 = **60.2**
- **MSE** = (9+81+49+11025+31329)/5 = 42493/5 = 8498.6
- **RMSE** = sqrt(8498.6) = **92.2**

---

# 📌 PART 13: FORMULA CHEAT SHEET 📋

## Regression:
```
y_hat = w0 + w1*x
w1 = SUM(x-x_mean)(y-y_mean) / SUM(x-x_mean)^2
w0 = y_mean - w1*x_mean
MAE = (1/n) * SUM|y - y_hat|
MSE = (1/n) * SUM(y - y_hat)^2
RMSE = sqrt(MSE)
```

## Classification:
```
Accuracy = (TP + TN) / Total
Precision = TP / (TP + FP)
Recall = TP / (TP + FN)
F1-Score = 2*P*R / (P + R)
```

## Decision Tree:
```
Entropy = -SUM[pi * log2(pi)]
Information Gain = Entropy(S) - SUM[(|Sv|/|S|) * Entropy(Sv)]
Gini = 1 - SUM[pi^2]
```

## Gradient Descent:
```
theta_new = theta_old - alpha * (dJ/d_theta)
```

## Distances:
```
Euclidean = sqrt(SUM(xi-yi)^2)
Manhattan = SUM|xi-yi|
```

---

# 📌 PART 14: EXAM TIPS & KEY POINTS 📝

## Must Remember:
1. ✅ Three types of ML: Supervised, Unsupervised, Reinforcement
2. ✅ Classification = Categories, Regression = Numbers
3. ✅ OLS: w1 = SUM(x-x_mean)(y-y_mean) / SUM(x-x_mean)^2
4. ✅ Gradient Descent: theta = theta - alpha * gradient
5. ✅ High Bias = Underfitting, High Variance = Overfitting
6. ✅ Regularization increases → Bias increases, Variance decreases
7. ✅ Entropy = 1 for 50-50 split, 0 for pure node
8. ✅ Higher Information Gain = Better split
9. ✅ Low K in KNN = High Variance, High K = High Bias
10. ✅ Logistic Regression uses Log Loss (not MSE)
11. ✅ OvO for 4 classes needs 6 classifiers
12. ✅ Precision = avoid FP, Recall = avoid FN

## Common Mistakes to Avoid:
- ❌ Don't confuse Precision and Recall
- ❌ Don't forget to normalize in gradient descent if asked
- ❌ Always show step-by-step work for calculations
- ❌ Check units in regression predictions

---

# 📌 PART 15: PRACTICE QUESTIONS

## Q1: Data Types
> Classify: Age, Education Level (High School/Bachelor/Master/PhD), ZIP Code

**Answer:**
- Age → **Ratio**
- Education Level → **Ordinal**
- ZIP Code → **Nominal**

## Q2: Gradient Descent
> J(theta) = theta^2 - 4*theta + 4, theta_0 = 5, alpha = 0.2. Find theta after 1 iteration.

**Solution:**
- dJ/d_theta = 2*theta - 4
- Gradient at theta=5: 2(5)-4 = 6
- theta_1 = 5 - 0.2(6) = 5 - 1.2 = **3.8**

## Q3: Entropy
> Dataset: 6 positive, 2 negative

**Solution:**
- p+ = 6/8 = 0.75, p- = 2/8 = 0.25
- Entropy = -0.75*log2(0.75) - 0.25*log2(0.25)
- Entropy = -0.75*(-0.415) - 0.25*(-2)
- Entropy = 0.311 + 0.5 = **0.811**

## Q4: Confusion Matrix
> TP=80, TN=50, FP=10, FN=20. Calculate all metrics.

**Solution:**
- Accuracy = (80+50)/(80+50+10+20) = 130/160 = **81.25%**
- Precision = 80/(80+10) = 80/90 = **88.89%**
- Recall = 80/(80+20) = 80/100 = **80%**
- F1 = 2*(0.889*0.80)/(0.889+0.80) = **84.2%**

---

**📅 Created for BITS MTech WLP - AIML ZG565 (Module 1)**
**📚 Based on 2025-26 EC-2 Mid-Semester Paper**
**💡 Tip: Practice calculations by hand - they WILL ask in exam!**
**🔄 Last Updated: Based on your course handout and past papers**
