# 📘 Linear Algebra — Module 1 Complete Study Notes
## AIML ZC416 - Mathematical Foundations for Machine Learning | BITS Pilani MTech WLP

---

## 📋 Module 1 — Topics Covered

| # | Topic |
|---|-------|
| 1 | Introduction to Linear Algebra |
| 2 | Systems of Linear Equations |
| 3 | Matrices |
| 4 | Inverse & Transpose |
| 5 | Compact Representation |
| 6 | Solving Systems |
| 7 | Elementary Row Operations |
| 8 | Gaussian Elimination |
| 9 | Calculating Inverse using Gaussian Elimination |

---

# 1. INTRODUCTION TO LINEAR ALGEBRA

## 1.1 What is Linear Algebra?

Linear Algebra is the study of **vectors**, **matrices**, and **linear equations**.

It helps us solve problems involving many variables simultaneously.

**Example:**
```
x + y = 5
2x - y = 1
```
We want to find values of x and y that satisfy both equations.
Linear algebra gives us systematic methods to solve this.

---

## 1.2 Where is Linear Algebra Used?

| Field | Application |
|-------|-------------|
| Machine Learning | Neural networks, regression |
| Artificial Intelligence | Feature extraction |
| Computer Graphics | 3D transformations |
| Data Science | Dimensionality reduction |
| Image Processing | Image as matrix of pixels |
| Robotics | Motion planning |
| Statistics | Covariance matrices |
| Physics | Quantum mechanics |

---

## 1.3 What is a Vector?

> A **vector** is simply an ordered collection of numbers.

**Example:**
```
    ┌   ┐
x = │ 2 │   ← 2-dimensional vector
    │ 3 │
    └   ┘
```

**More Examples:**
```
    ┌   ┐           ┌    ┐
    │ 1 │           │  5 │
    │ 2 │           │  7 │
    │ 3 │           │  9 │
    └   ┘           │ 10 │
                    └    ┘
```

> **Think of it as:** A list of numbers arranged in a particular order.

---

## 1.4 Idea of Closure ⭐

> **Closure** = When we perform an operation on elements of a set, the result must also belong to that set.

**Simple Example:**

Let S = {1, 2, 3}

| Operation | Result | In S? |
|-----------|--------|-------|
| 1 + 2 = 3 | 3 | ✅ Yes |
| 2 + 3 = 5 | 5 | ❌ No |

**Conclusion:** S is **NOT closed** under addition (because 5 is not in S).

---

**Vector Example:**

Let U = {(x, y) : y ≥ 0}  (all points with non-negative y)

Take: (2, 3) and (4, 5) — both in U

Add them: (2, 3) + (4, 5) = (6, 8)

Since 8 ≥ 0, the result is in U.

**Therefore:** U is **closed** under addition.

---

### 💡 Easy Way to Remember

```
┌─────────────────────────────────────────────────────────┐
│                                                         │
│   Closure = "The answer stays inside the group"         │
│                                                         │
└─────────────────────────────────────────────────────────┘
```

---

# 2. SYSTEMS OF LINEAR EQUATIONS

## 2.1 What is an Equation?

An equation says: **Two mathematical expressions are equal.**

**Example:**
```
x + 2 = 5

Solving: x = 3
```

---

## 2.2 What is a Linear Equation?

> A **linear equation** is an equation where variables have **power 1**.

**✅ Linear Examples:**
```
2x + 3y = 10
x - y + 2z = 5
4x₁ + 3x₂ - x₃ = 7
```

**❌ NOT Linear:**
```
x² + y = 5      ← x has power 2
xy = 5          ← variables multiplied together
```

---

## 2.3 System of Linear Equations

> A **system** = Multiple equations that must be satisfied at the same time.

**Example:**
```
x + y = 5
x - y = 1
```

**Solving:**
```
Adding:  2x = 6  →  x = 3
Then:    3 + y = 5  →  y = 2

Solution: (x, y) = (3, 2)
```

---

## 2.4 Three Types of Solutions ⭐⭐⭐

| Type | Description | Example |
|------|-------------|---------|
| **Unique Solution** | Exactly ONE solution | x + y = 5, x - y = 1 → (3, 2) |
| **No Solution** | Impossible to satisfy | x + y = 5, x + y = 8 |
| **Infinite Solutions** | Infinitely many solutions | x + y = 5, 2x + 2y = 10 |

---

### Case 1: Unique Solution

```
x + y = 5
x - y = 1

Solution: x = 3, y = 2  ← Only ONE solution
```

---

### Case 2: No Solution

```
x + y = 5
x + y = 8

Left sides are same, right sides different → Impossible!
```

---

### Case 3: Infinite Solutions

```
x + y = 5
2x + 2y = 10    ← This is just 2 × (first equation)

Both equations represent the SAME line.

Solutions: (0,5), (1,4), (2,3), (3,2), ... infinitely many!
```

---

## 2.5 Geometrical Interpretation ⭐⭐

### In 2D

A linear equation like `x + y = 5` represents a **line**.

Two equations = Two lines.

| Case | Visual | Meaning |
|------|--------|---------|
| **Unique Solution** | Lines cross at one point | `\ /` → One intersection |
| **No Solution** | Parallel lines | `──────` and `──────` → Never meet |
| **Infinite Solutions** | Same line (overlap) | Lines are identical |

```
Case 1: Unique        Case 2: No Solution      Case 3: Infinite
    \  /                  ─────────               ═══════════
     \/                   ─────────               (same line)
     /\
```

---

### In 3D

In 3 dimensions, a linear equation represents a **plane**.

| Situation | Solutions |
|-----------|-----------|
| 3 planes meet at ONE point | Unique |
| 3 planes meet along a LINE | Infinite |
| No common intersection | None |

---

## 2.6 Pivot Variables vs Free Variables ⭐⭐⭐

This is one of the **most important concepts**.

Suppose after elimination we get:
```
x + 2y + 3z = 5
```

One equation, three variables → We can choose y and z freely!

| Variable | Type | Reason |
|----------|------|--------|
| x | **Pivot** | Determined by other variables |
| y | **Free** | Can choose any value |
| z | **Free** | Can choose any value |

**Express solution:**
```
x = 5 - 2y - 3z

Let y = s, z = t

Then: x = 5 - 2s - 3t, y = s, z = t
```

> **Free variables** create infinitely many solutions!

---

# 3. MATRICES

## 3.1 What is a Matrix?

> A **matrix** is a rectangular arrangement of numbers in rows and columns.

**Example:**
```
      ┌         ┐
A  =  │ 1  2  3 │   ← Row 1
      │ 4  5  6 │   ← Row 2
      └         ┘
        ↑  ↑  ↑
       C1 C2 C3

This is a 2×3 matrix (2 rows, 3 columns)
```

---

## 3.2 Matrix Dimensions (m × n)

| Term | Meaning |
|------|---------|
| m | Number of **rows** |
| n | Number of **columns** |
| Size | Written as **m × n** |

**Example:**
```
      ┌          ┐
      │ 1  2   3 │
A  =  │ 4  5   6 │   →  4 rows, 3 columns  →  4×3 matrix
      │ 7  8   9 │
      │ 10 11 12 │
      └          ┘
```

---

## 3.3 Row Matrix

A matrix with **only one row**.

```
A = [ 1  2  3  4 ]     Size: 1×4
```

---

## 3.4 Column Matrix

A matrix with **only one column**.

```
      ┌   ┐
A  =  │ 1 │
      │ 2 │     Size: 4×1
      │ 3 │
      │ 4 │
      └   ┘
```

---

## 3.5 Matrix Addition

**Rule:** Add corresponding elements (matrices must be **SAME size**).

```
┌     ┐   ┌     ┐   ┌         ┐   ┌      ┐
│ 1 2 │ + │ 5 6 │ = │ 1+5 2+6 │ = │ 6  8 │
│ 3 4 │   │ 7 8 │   │ 3+7 4+8 │   │ 10 12│
└     ┘   └     ┘   └         ┘   └      ┘
```

---

## 3.6 Matrix Multiplication ⭐⭐⭐

**This is VERY important!**

### Size Rule

```
A(m×n) × B(p×q) is possible ONLY when n = p

Result size: m × q
```

> **Memory trick:** Inside numbers must match → (m×n)(n×p) = m×p

---

### How to Multiply

**Row × Column, then sum up.**

**Example:**
```
┌     ┐   ┌     ┐
│ 1 2 │ × │ 5 6 │ = ?
│ 3 4 │   │ 7 8 │
└     ┘   └     ┘

Position (1,1): (1×5) + (2×7) = 5 + 14 = 19
Position (1,2): (1×6) + (2×8) = 6 + 16 = 22
Position (2,1): (3×5) + (4×7) = 15 + 28 = 43
Position (2,2): (3×6) + (4×8) = 18 + 32 = 50

Result:
┌       ┐
│ 19 22 │
│ 43 50 │
└       ┘
```

---

## 3.7 Matrix Multiplication is NOT Commutative ⭐

For numbers: `2 × 3 = 3 × 2`

For matrices: **AB ≠ BA** (generally!)

Sometimes AB exists but BA doesn't even exist!

> **This is an important exam point!**

---

## 3.8 Associativity

```
(AB)C = A(BC)
```

You can change the grouping.

---

## 3.9 Distributivity

```
A(B + C) = AB + AC

(A + B)C = AC + BC
```

---

## 3.10 Identity Matrix ⭐

The identity matrix is like the **number 1** for matrices.

```
       ┌     ┐              ┌       ┐
I₂  =  │ 1 0 │       I₃  =  │ 1 0 0 │
       │ 0 1 │              │ 0 1 0 │
       └     ┘              │ 0 0 1 │
                            └       ┘
```

**Key Property:**
```
A × I = A
I × A = A
```

Just like: 5 × 1 = 5

---

## 3.11 Scalar Multiplication

A **scalar** is simply a number.

**Rule:** Multiply every element by the scalar.

```
      ┌     ┐       ┌      ┐
3  ×  │ 1 2 │   =   │ 3  6 │
      │ 3 4 │       │ 9 12 │
      └     ┘       └      ┘
```

---

# 4. INVERSE AND TRANSPOSE

## 4.1 What is an Inverse?

For a number: `5 × (1/5) = 1`

For matrices, same idea:

```
A × A⁻¹ = I

A⁻¹ × A = I
```

> **A⁻¹** is called the **inverse** of A.

---

## 4.2 Formula: 2×2 Matrix Inverse ⭐⭐⭐

```
      ┌     ┐
A  =  │ a b │
      │ c d │
      └     ┘

         1      ┌      ┐
A⁻¹ = ────── ×  │  d -b│
      ad - bc   │ -c  a│
                └      ┘

Provided: ad - bc ≠ 0
```

---

## 4.3 Determinant (2×2)

```
      ┌     ┐
A  =  │ a b │     det(A) = ad - bc
      │ c d │
      └     ┘
```

**Example:**
```
      ┌     ┐
A  =  │ 4 7 │
      │ 2 6 │
      └     ┘

det(A) = (4)(6) - (7)(2) = 24 - 14 = 10
```

Since 10 ≠ 0, inverse exists.

---

## 4.4 When Does an Inverse Exist?

| Condition | Result |
|-----------|--------|
| det(A) ≠ 0 | Inverse EXISTS (Non-singular/Invertible) |
| det(A) = 0 | Inverse DOES NOT exist (Singular) |

---

## 4.5 Transpose ⭐⭐

> **Transpose** = Turn rows into columns and columns into rows.

```
      ┌         ┐              ┌     ┐
A  =  │ 1  2  3 │       Aᵀ =   │ 1 4 │
      │ 4  5  6 │              │ 2 5 │
      └         ┘              │ 3 6 │
                               └     ┘

Original: 2×3    →    Transpose: 3×2
```

**Rule:** (m×n)ᵀ = n×m

---

## 4.6 Important Properties ⭐⭐⭐ MUST MEMORIZE

### Transpose Properties:
```
(Aᵀ)ᵀ = A
(A + B)ᵀ = Aᵀ + Bᵀ
(AB)ᵀ = BᵀAᵀ           ← ORDER REVERSES!
(λA)ᵀ = λAᵀ
```

### Inverse Properties:
```
(A⁻¹)⁻¹ = A
(AB)⁻¹ = B⁻¹A⁻¹        ← ORDER REVERSES!
(Aᵀ)⁻¹ = (A⁻¹)ᵀ
```

---

### 💡 Easy Memory Trick

```
┌─────────────────────────────────────────────────────────┐
│                                                         │
│   For both TRANSPOSE and INVERSE:                       │
│                                                         │
│   When dealing with AB, the ORDER REVERSES!             │
│                                                         │
│   (AB)ᵀ  = Bᵀ Aᵀ                                        │
│   (AB)⁻¹ = B⁻¹ A⁻¹                                      │
│                                                         │
└─────────────────────────────────────────────────────────┘
```

---

# 5. COMPACT REPRESENTATION

## 5.1 Ax = b Form

Instead of writing equations separately, use matrices:

**Equations:**
```
2x + y = 5
x - y = 1
```

**Matrix form: Ax = b**
```
┌      ┐ ┌   ┐   ┌   ┐
│ 2  1 │ │ x │ = │ 5 │
│ 1 -1 │ │ y │   │ 1 │
└      ┘ └   ┘   └   ┘
   A       x       b
```

---

## 5.2 Augmented Matrix

Combine A and b into one matrix:

```
[A | b]

┌          ┐
│ 2  1 │ 5 │
│ 1 -1 │ 1 │
└          ┘
```

The vertical line separates:
- **Left:** Coefficient matrix A
- **Right:** Right-hand side b

---

# 6. SOLVING SYSTEMS

## 6.1 Particular Solution

A **particular solution** is ONE specific solution to Ax = b.

**Example:**
```
x + y = 5

One solution: x = 2, y = 3

       ┌   ┐
xₚ  =  │ 2 │    ← Particular solution
       │ 3 │
       └   ┘
```

---

## 6.2 Homogeneous System

A **homogeneous system** has the form:

```
Ax = 0
```

**Example:** x + y = 0

This **always** has at least one solution:
```
x = 0, y = 0    ← Trivial solution
```

There may also be non-zero solutions.

---

## 6.3 General Solution

The **general solution** describes ALL possible solutions.

**Example:**
```
x + y = 0

Write: x = -y

Let y = t

Then: x = -t, y = t

┌   ┐   ┌    ┐
│ x │ = │ -t │    where t can be any number
│ y │   │  t │
└   ┘   └    ┘
```

---

## 6.4 Particular + General Solution ⭐⭐⭐

**This is EXTREMELY important!**

For Ax = b:

```
┌─────────────────────────────────────────────────────────┐
│                                                         │
│   General Solution = Particular Solution + Homogeneous  │
│                                                         │
│          x    =       xₚ       +       xₕ               │
│                                                         │
│   where:                                                │
│   • xₚ = particular solution of Ax = b                  │
│   • xₕ = general solution of Ax = 0                     │
│                                                         │
└─────────────────────────────────────────────────────────┘
```

---

# 7. ELEMENTARY ROW OPERATIONS

There are exactly **THREE** types of operations allowed.

## 7.1 Row Swap

**Swap two rows.**

```
┌     ┐           ┌     ┐
│ 1 2 │   R₁↔R₂   │ 3 4 │
│ 3 4 │  ──────→  │ 1 2 │
└     ┘           └     ┘
```

---

## 7.2 Multiply Row by Non-Zero Constant

```
R₁ = [1  2]

R₁ → 3R₁

Result: [3  6]
```

⚠️ **Important:** λ ≠ 0

We cannot multiply by zero (destroys information).

---

## 7.3 Add One Row to Another

```
R₁ → R₁ + 2R₂

If R₁ = [1  2] and R₂ = [3  4]

R₁ + 2R₂ = [1, 2] + 2[3, 4]
         = [1, 2] + [6, 8]
         = [7, 10]
```

---

# 8. GAUSSIAN ELIMINATION ⭐⭐⭐

**This is one of the MOST IMPORTANT topics!**

## Purpose

Convert a complicated system into an easier form to find the solution.

```
Original → Augmented → REF → Back Substitution → Solution
 system     matrix
```

---

## 8.1 Example

**Solve:**
```
x + y + z = 6
2x + 3y + z = 10
x + 2y + 3z = 13
```

**Augmented matrix:**
```
┌             ┐
│ 1  1  1 │ 6 │
│ 2  3  1 │10 │
│ 1  2  3 │13 │
└             ┘
```

---

## 8.2 Forward Elimination

**Goal:** Create zeros below the first pivot.

**Step 1:** R₂ → R₂ - 2R₁ and R₃ → R₃ - R₁
```
┌              ┐
│ 1  1  1 │  6 │
│ 0  1 -1 │ -2 │
│ 0  1  2 │  7 │
└              ┘
```

**Step 2:** R₃ → R₃ - R₂
```
┌              ┐
│ 1  1  1 │  6 │
│ 0  1 -1 │ -2 │
│ 0  0  3 │  9 │
└              ┘
```

**This is Row-Echelon Form (REF).**

---

## 8.3 Row-Echelon Form (REF) ⭐⭐

A matrix is in REF when:

| Rule | Description |
|------|-------------|
| 1 | All non-zero rows are ABOVE zero rows |
| 2 | Each pivot is to the RIGHT of the pivot above |
| 3 | Creates a "staircase" pattern |

```
┌           ┐
│ ■  *  * │     ■ = Pivot (first non-zero)
│ 0  ■  * │     * = Any number
│ 0  0  ■ │     0 = Must be zero
└         ┘
```

---

## 8.4 Back Substitution

From the REF:
```
┌              ┐
│ 1  1  1 │  6 │
│ 0  1 -1 │ -2 │
│ 0  0  3 │  9 │
└              ┘
```

**Solve from bottom:**
```
Row 3:  3z = 9   →  z = 3
Row 2:  y - z = -2  →  y - 3 = -2  →  y = 1
Row 1:  x + y + z = 6  →  x + 1 + 3 = 6  →  x = 2
```

**Solution: x = 2, y = 1, z = 3** ✓

---

## 8.5 Reduced Row-Echelon Form (RREF) ⭐⭐

RREF goes **one step further** than REF:

| Property | REF | RREF |
|----------|-----|------|
| Pivot value | Any non-zero | Must be **1** |
| Above pivot | Can be non-zero | Must be **0** |
| Below pivot | Zero | Zero |
| Zero rows | At bottom | At bottom |

**Example:**
```
REF                         RREF
┌           ┐              ┌           ┐
│ 1  2  3 │               │ 1  0  2 │
│ 0  1  4 │      →        │ 0  1  3 │
│ 0  0  1 │               │ 0  0  0 │
└         ┘               └         ┘
```

---

## 8.6 REF vs RREF Comparison

| Feature | REF | RREF |
|---------|-----|------|
| Pivot must be 1 | No | Yes |
| Zeros required | Below pivots only | Above AND below pivots |
| Form | Staircase | Fully simplified |
| Back substitution | Usually needed | Solution often direct |

---

## 8.7 What is a Pivot? ⭐

> A **pivot** is the leading (first) non-zero entry in a row after elimination.

**Example:**
```
┌           ┐
│ 1  2  3 │     Pivots: 1, 4, 6
│ 0  4  5 │
│ 0  0  6 │     Pivot columns: 1, 2, 3
└         ┘
```

**Important:** A pivot is not necessarily 1 (except in RREF).

---

## 8.8 Pivot Variables vs Free Variables ⭐⭐⭐

**Example RREF:**
```
┌               ┐
│ 1  0  2 │ 5 │
│ 0  1  3 │ 7 │
└             ┘
```

This represents:
```
x + 2z = 5
y + 3z = 7
```

| Column | Variable | Type | Reason |
|--------|----------|------|--------|
| 1 | x | Pivot | Has pivot |
| 2 | y | Pivot | Has pivot |
| 3 | z | **Free** | No pivot |

**Solution:**
```
Let z = t (free variable)

x = 5 - 2t
y = 7 - 3t
z = t
```

---

# 9. CALCULATING INVERSE USING GAUSSIAN ELIMINATION ⭐⭐⭐

**This is a major exam topic!**

## The Method

```
┌─────────────────────────────────────────────────────────┐
│                                                         │
│   [A | I]  →  [I | A⁻¹]                                 │
│                                                         │
└─────────────────────────────────────────────────────────┘
```

---

## 9.1 Step-by-Step Example

**Find inverse of:**
```
      ┌     ┐
A  =  │ 1 2 │
      │ 3 4 │
      └     ┘
```

---

**Step 1: Create augmented matrix [A | I]**
```
┌           ┐
│ 1  2 │ 1 0│
│ 3  4 │ 0 1│
└           ┘
```

---

**Step 2: R₂ → R₂ - 3R₁ (make bottom-left = 0)**
```
┌              ┐
│ 1  2 │  1  0 │
│ 0 -2 │ -3  1 │
└              ┘
```

---

**Step 3: R₂ → -½R₂ (make second pivot = 1)**
```
┌               ┐
│ 1  2 │  1    0│
│ 0  1 │ 3/2 -½ │
└               ┘
```

---

**Step 4: R₁ → R₁ - 2R₂ (eliminate above pivot)**
```
┌                ┐
│ 1  0 │ -2    1 │
│ 0  1 │ 3/2  -½ │
└                ┘
```

---

**Result:**
```
        ┌          ┐
A⁻¹  =  │ -2    1  │
        │ 3/2  -½  │
        └          ┘
```

**Verify:** A × A⁻¹ = I ✓

---

# 📊 MODULE OVERVIEW: THE BIG PICTURE

```
LINEAR ALGEBRA
      │
      ├── Vectors
      │
      ├── Linear Equations
      │       │
      │       └── Systems of Equations
      │
      ├── Matrices
      │       │
      │       ├── Addition
      │       ├── Multiplication
      │       ├── Identity
      │       ├── Scalar multiplication
      │       ├── Transpose
      │       └── Inverse
      │
      └── Solving Systems
              │
              ├── Ax = b
              │
              ├── Augmented Matrix
              │
              ├── Elementary Row Operations
              │
              ├── Gaussian Elimination
              │       │
              │       ├── REF
              │       └── RREF
              │
              ├── Pivot Variables
              ├── Free Variables
              ├── Particular Solution
              └── General Solution
```

---

# ⭐ MOST IMPORTANT FORMULAS TO MEMORIZE

| Formula | Expression |
|---------|------------|
| Matrix Multiplication Size | (m × n)(n × p) = m × p |
| Identity Property | A × I = I × A = A |
| Inverse Property | A × A⁻¹ = A⁻¹ × A = I |
| 2×2 Inverse | A⁻¹ = (1/det) × [d -b; -c a] |
| Inverse Exists | det(A) ≠ 0 |
| Transpose of Product | (AB)ᵀ = BᵀAᵀ |
| Inverse of Product | (AB)⁻¹ = B⁻¹A⁻¹ |
| Matrix Form | Ax = b |
| Homogeneous System | Ax = 0 |
| General Solution | x = xₚ + xₕ |
| Inverse via Gaussian | [A \| I] → [I \| A⁻¹] |

---

# ⭐ EXAM-FOCUSED CHECKLIST

| Topic | What You Should Be Able To Do |
|-------|-------------------------------|
| Closure | Determine whether a set is closed |
| Linear equations | Identify whether an equation is linear |
| Systems | Find unique/no/infinite solutions |
| Geometry | Explain lines and planes interpretation |
| Pivot | Identify pivot positions/columns |
| Free variable | Identify and parameterize free variables |
| Matrix dimensions | Determine m×n |
| Addition | Add matrices |
| Multiplication | Multiply matrices and check dimensions |
| Identity | Understand AI = A |
| Scalar | Multiply a matrix by a number |
| Determinant | Calculate 2×2 determinant |
| Inverse | Calculate A⁻¹ |
| Transpose | Calculate Aᵀ |
| Ax = b | Convert equations into matrix form |
| Augmented matrix | Construct [A \| b] |
| Particular solution | Find one solution |
| Homogeneous solution | Solve Ax = 0 |
| Row operations | Perform all 3 operations |
| Gaussian elimination | Convert matrix to REF |
| RREF | Fully reduce a matrix |
| Back substitution | Find variables from REF |
| Matrix inverse | Use [A \| I] → [I \| A⁻¹] |

---

# 💡 THE ONE STORY TO REMEMBER

If you remember only **ONE flow** from this entire module:

```
┌─────────────────────────────────────────────────────────────────────────┐
│                                                                         │
│  Linear Equations → Ax=b → [A|b] → Row Operations → REF/RREF → Solution │
│                                                                         │
└─────────────────────────────────────────────────────────────────────────┘
```

And for finding an inverse:

```
┌─────────────────────────────────────────────────────────────────────────┐
│                                                                         │
│                    [A | I]  →  [I | A⁻¹]                                │
│                                                                         │
└─────────────────────────────────────────────────────────────────────────┘
```

**That is the backbone of Module 1!**

---

## ✅ Module 1 Exam Preparation Checklist

- [ ] Can solve Ax = b using Gaussian elimination
- [ ] Can identify REF and RREF
- [ ] Can find pivot and free variables
- [ ] Can write particular + general solution
- [ ] Can find inverse using [A|I] → [I|A⁻¹]
- [ ] Know all inverse/transpose properties
- [ ] Can prove (AB)⁻¹ = B⁻¹A⁻¹
- [ ] Can explain why only 0, 1, or ∞ solutions exist
- [ ] Know 2×2 inverse formula
- [ ] Understand geometric interpretation

---
