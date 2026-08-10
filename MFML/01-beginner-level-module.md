# 🔢 Mathematical Foundations for ML - Module 1 Beginner's Guide
## AIML ZC416 | BITS Pilani MTech WLP
## 📚 VERY VERY BASIC Level Explanation (Like Explaining to a 10-Year-Old!)
## 📖 Based on: Lecture 1.pdf (62 Slides)

---

# 🎯 What Will You Learn in Module 1?

**In Simple Words**: Module 1 teaches you about **LINEAR ALGEBRA** - the math behind Machine Learning!

From your **Lecture Slides (Lecture 1.pdf - 62 pages)**, we cover:

| Slide # | Topic | In Simple Words | Importance |
|---------|-------|-----------------|------------|
| **2-3** | What is Linear Algebra? | Math for manipulating "lists of numbers" | ⭐⭐⭐⭐ |
| **4-17** | Systems of Linear Equations | Finding unknown values from equations | ⭐⭐⭐⭐⭐ |
| **18-27** | Matrices | Tables of numbers & their operations | ⭐⭐⭐⭐⭐ |
| **28-37** | Solving Equations | Finding particular & general solutions | ⭐⭐⭐⭐ |
| **38-57** | Gaussian Elimination | Step-by-step method to solve equations | ⭐⭐⭐⭐⭐ |
| **58-62** | Computing Matrix Inverse | Finding the "undo" button for matrices | ⭐⭐⭐⭐ |

---

# 📖 SLIDE 2-3: What is Linear Algebra? ⭐⭐⭐⭐

## 🤔 What is Linear Algebra? (SUPER SIMPLE)

**Imagine**: You have a list of numbers like [3, 5, 2]. That's a **VECTOR**!
Linear Algebra is about adding, multiplying, and transforming these lists.

> **Linear Algebra** = The study of VECTORS and how to manipulate them

## 💡 Think of it Like This:

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   VECTOR = A list of numbers                                │
│                                                             │
│   Example: Your location on a map = [x, y]                  │
│            [3, 5] means "3 steps right, 5 steps up"         │
│                                                             │
│   LINEAR ALGEBRA = Rules for working with these lists       │
│   • Adding vectors                                          │
│   • Multiplying vectors                                     │
│   • Transforming vectors                                    │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

## 📝 What The Slide Says:

> "Linear algebra is the study of vectors and rules to manipulate vectors."
> "Vectors are objects which can be added together and multiplied by scalar values."

## 🎮 Why is this Important for Machine Learning?

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   In ML, EVERYTHING is a vector!                            │
│                                                             │
│   📷 An image = A vector of pixel values                    │
│   📝 A sentence = A vector of word embeddings               │
│   👤 A customer = A vector of features [age, income, ...]   │
│                                                             │
│   ML = Operations on these vectors!                         │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

---

# 📖 SLIDE 4-7: Systems of Linear Equations ⭐⭐⭐⭐⭐

## 🤔 What is a System of Linear Equations? (SUPER SIMPLE)

**Imagine**: A furniture factory makes Chairs, Tables, and Cabinets.
Each product uses Wood, Labor, Machine time, etc.
If you know the TOTAL resources used, can you figure out HOW MANY of each product was made?

> **System of Linear Equations** = Multiple equations with multiple unknowns

## 📝 Real Example from Slide 5-7 (Furniture Factory):

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   PROBLEM: Factory uses these resources:                    │
│                                                             │
│   Resource      | Chair | Table | Cabinet | Total Available │
│   ─────────────────────────────────────────────────────────│
│   Wood          |   1   |   2   |    1    |       9        │
│   Labor (hrs)   |   2   |   1   |    1    |       8        │
│   Machine (hrs) |   1   |   1   |    2    |       7        │
│   Shipping      |   3   |   1   |    2    |      11        │
│                                                             │
│   QUESTION: How many Chairs (x₁), Tables (x₂),             │
│             Cabinets (x₃) should we make?                   │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

## 🔢 Writing as Equations:

```
Wood:      x₁ + 2x₂ + x₃ = 9
Labor:    2x₁ + x₂ + x₃ = 8
Machine:   x₁ + x₂ + 2x₃ = 7
Shipping: 3x₁ + x₂ + 2x₃ = 11
```

## ✅ Solution:

```
x₁ = 2 (make 2 Chairs)
x₂ = 3 (make 3 Tables)
x₃ = 1 (make 1 Cabinet)
```

---

# 📖 SLIDE 8-16: Types of Solutions ⭐⭐⭐⭐

## 🤔 How Many Solutions Can a System Have? (SUPER SIMPLE)

**Important**: A linear system can have:
- **ONE solution** (unique answer)
- **NO solution** (impossible - contradictory equations)
- **INFINITE solutions** (many possible answers)

## 💡 Visual Analogy (Think of Lines):

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   ONE SOLUTION:           NO SOLUTION:        INFINITE:     │
│                                                             │
│        \  /                    /  /              ────────   │
│         \/                    /  /               ════════   │
│         /\                   /  /               (same line) │
│        /  \                 /  /                            │
│                                                             │
│   Lines cross at           Parallel lines      Lines are    │
│   ONE point!               never meet!         the SAME!    │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

## 📝 Example: No Solution (Slide 9)

```
Equations:
x₁ + x₂ + x₃ = 3
x₁ - x₂ + 2x₃ = 2
2x₁ + 3x₃ = 1

Adding first two equations:
2x₁ + 3x₃ = 5

But third equation says:
2x₁ + 3x₃ = 1

CONTRADICTION! 5 ≠ 1
So there is NO SOLUTION! ❌
```

## 📝 Example: Unique Solution (Slide 10)

```
x₁ + x₂ + x₃ = 3
x₁ - x₂ + 2x₃ = 2
x₂ + x₃ = 2

From equations 1 and 3: x₁ = 1
Substitute into equation 2: -x₂ + 2x₃ = 1
Add to equation 3: 3x₃ = 3, so x₃ = 1
From equation 3: x₂ = 1

UNIQUE SOLUTION: x₁ = 1, x₂ = 1, x₃ = 1 ✅
```

## 📝 Example: Infinite Solutions (Slide 11-12)

```
x₁ + x₂ + x₃ = 3
x₁ - x₂ + 2x₃ = 2
2x₁ + 3x₃ = 5

Adding first two: 2x₁ + 3x₃ = 5 (same as equation 3!)
So we really only have 2 independent equations for 3 unknowns.

We call x₃ a "FREE VARIABLE" - it can be anything!
Then: x₁ = 5/2 - (3/2)x₃
      x₂ = 1/2 + x₃/2

INFINITE SOLUTIONS! (depends on what you pick for x₃) ♾️
```

---

# 📖 SLIDE 18-21: What is a Matrix? ⭐⭐⭐⭐⭐

## 🤔 What is a Matrix? (SUPER SIMPLE)

**Imagine**: A spreadsheet with numbers in rows and columns. That's a MATRIX!

> **Matrix** = A rectangular table of numbers arranged in rows and columns

## 💡 Think of it Like This:

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   A matrix is like a SPREADSHEET:                           │
│                                                             │
│        Column 1  Column 2  Column 3                         │
│   Row 1 [  2        3         5    ]                        │
│   Row 2 [  4       -2        -7    ]                        │
│   Row 3 [  9        5        -3    ]                        │
│                                                             │
│   This is a 3×3 matrix (3 rows, 3 columns)                  │
│   Written as: A ∈ ℝ³ˣ³                                      │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

## 📝 Special Cases:

```
ROW VECTOR: A matrix with 1 row
            [3  5  2]  ← This is 1×3

COLUMN VECTOR: A matrix with 1 column
            ┌ 3 ┐
            │ 5 │  ← This is 3×1
            └ 2 ┘
```

## 🔢 Matrix Addition (Slide 19):

```
Just add corresponding elements!

┌ 1  2 ┐   ┌ 5  6 ┐   ┌ 1+5  2+6 ┐   ┌ 6   8 ┐
│ 3  4 │ + │ 7  8 │ = │ 3+7  4+8 │ = │ 10  12│
└      ┘   └      ┘   └          ┘   └       ┘

RULE: Both matrices must have SAME size!
```

## 🔢 Matrix Multiplication (Slide 20):

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   To multiply A × B:                                        │
│                                                             │
│   Result[i,j] = (Row i of A) • (Column j of B)             │
│                                                             │
│   Example:                                                  │
│   ┌ 1  2 ┐   ┌ 5  6 ┐   ┌ 1×5+2×7  1×6+2×8 ┐   ┌ 19  22 ┐  │
│   │ 3  4 │ × │ 7  8 │ = │ 3×5+4×7  3×6+4×8 │ = │ 43  50 │  │
│   └      ┘   └      ┘   └                  ┘   └        ┘  │
│                                                             │
│   RULE: # columns of A must = # rows of B                   │
│         (m×k) × (k×n) → (m×n)                               │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

---

# 📖 SLIDE 22-27: Matrix Inverse and Transpose ⭐⭐⭐⭐

## 🤔 What is a Matrix Inverse? (SUPER SIMPLE)

**Think**: If A × B = I (identity matrix), then B is the INVERSE of A!
It's like the "UNDO" button for matrix A.

> **Inverse of A** (written A⁻¹) is the matrix such that A × A⁻¹ = I

## 💡 Simple Analogy:

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   Number world:   5 × (1/5) = 1                             │
│                   ↑    ↑      ↑                             │
│                number inverse result=1                      │
│                                                             │
│   Matrix world:   A × A⁻¹ = I                               │
│                   ↑    ↑     ↑                              │
│                matrix inverse identity matrix               │
│                                                             │
│   Identity Matrix I = diagonal of 1s, rest 0s               │
│   ┌ 1  0  0 ┐                                               │
│   │ 0  1  0 │  ← Like multiplying by 1!                     │
│   └ 0  0  1 ┘                                               │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

## 📝 For 2×2 Matrix (Slide 23-24):

```
If A = ┌ a  b ┐
       └ c  d ┘

Then A⁻¹ = (1/det) × ┌  d  -b ┐
                      └ -c   a ┘

Where det = ad - bc (DETERMINANT)

⚠️ IMPORTANT: Inverse EXISTS only if det ≠ 0!
```

## 📝 What is Transpose? (Slide 25):

```
Transpose = Flip rows and columns!

A = ┌ 1  2  3 ┐        Aᵀ = ┌ 1  4 ┐
    └ 4  5  6 ┘             │ 2  5 │
                            └ 3  6 ┘

2×3 matrix becomes 3×2 matrix
```

## 📝 Key Properties (Slide 25):

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   (A⁻¹)⁻¹ = A                                               │
│   (AB)⁻¹ = B⁻¹A⁻¹      ← ORDER REVERSES!                    │
│   (A + B)⁻¹ ≠ A⁻¹ + B⁻¹  ← THIS IS WRONG!                  │
│                                                             │
│   (Aᵀ)ᵀ = A                                                 │
│   (A + B)ᵀ = Aᵀ + Bᵀ                                        │
│   (AB)ᵀ = BᵀAᵀ         ← ORDER REVERSES!                    │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

---

# 📖 SLIDE 28-37: Solving Ax = b ⭐⭐⭐⭐

## 🤔 What Does Ax = b Mean? (SUPER SIMPLE)

A system of equations can be written in matrix form!

```
2x₁ + 3x₂ + 5x₃ = 1        ┌ 2   3   5 ┐   ┌ x₁ ┐   ┌ 1 ┐
4x₁ - 2x₂ - 7x₃ = 8    →   │ 4  -2  -7 │ × │ x₂ │ = │ 8 │
9x₁ + 5x₂ - 3x₃ = 2        └ 9   5  -3 ┘   └ x₃ ┘   └ 2 ┘
                                 A      ×    x    =   b
```

## 📝 General Solution = Particular + Homogeneous (Slide 37):

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   GENERAL SOLUTION of Ax = b:                               │
│                                                             │
│   x = x_particular + x_homogeneous                          │
│                                                             │
│   Where:                                                    │
│   • x_particular = ANY one solution to Ax = b               │
│   • x_homogeneous = ALL solutions to Ax = 0                 │
│                                                             │
│   Think of it like:                                         │
│   "One specific answer" + "All the adjustments that work"   │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

## 📝 Example (Slide 30-37):

```
Given: ┌ 1  0  8  -4 ┐ × x = ┌ 42 ┐
       └ 0  1  2  12 ┘       └  8 ┘

Particular solution: x = [42, 8, 0, 0]ᵀ (by inspection!)

Homogeneous solutions (Ax = 0):
    λ₁[8, 2, -1, 0]ᵀ + λ₂[-4, 12, 0, -1]ᵀ

General solution:
    x = [42, 8, 0, 0]ᵀ + λ₁[8, 2, -1, 0]ᵀ + λ₂[-4, 12, 0, -1]ᵀ
```

---

# 📖 SLIDE 38-57: Gaussian Elimination ⭐⭐⭐⭐⭐

## 🤔 What is Gaussian Elimination? (SUPER SIMPLE)

**Problem**: How do we solve ANY system of equations systematically?
**Answer**: Transform the matrix into a simple form using row operations!

> **Gaussian Elimination** = Step-by-step method to simplify a matrix

## 💡 The Idea:

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   GOAL: Convert a messy matrix into a "staircase" form      │
│                                                             │
│   Messy:                      Row-Echelon Form:             │
│   ┌ 2   3   1   5 ┐           ┌ 1   *   *   * ┐             │
│   │ 4  -1   2   3 │    →      │ 0   1   *   * │             │
│   │ 6   2   1   8 │           │ 0   0   1   * │             │
│   └ 1   5   3   2 ┘           └ 0   0   0   1 ┘             │
│                                                             │
│   Now it's EASY to solve (work backwards!)                  │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

## 📝 Three Elementary Row Operations (Slide 40):

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   OPERATION 1: Swap two rows                                │
│                R₁ ↔ R₂                                      │
│                                                             │
│   OPERATION 2: Multiply a row by a non-zero constant        │
│                R₁ ← λ × R₁  (where λ ≠ 0)                   │
│                                                             │
│   OPERATION 3: Add a multiple of one row to another         │
│                R₂ ← R₂ + λ × R₁                             │
│                                                             │
│   KEY: These operations DON'T change the solution!          │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

## 🔢 Step-by-Step Example (Slides 41-49):

```
Original System:
-2x₁ + 4x₂ - 2x₃ - x₄ + 4x₅ = -3
 4x₁ - 8x₂ + 3x₃ - 3x₄ + x₅ = 2
  x₁ - 2x₂ + x₃ - x₄ + x₅ = 0
  x₁ - 2x₂ - 3x₄ + 4x₅ = a

Step 1: Write as Augmented Matrix
┌ -2   4  -2  -1   4 | -3 ┐
│  4  -8   3  -3   1 |  2 │
│  1  -2   1  -1   1 |  0 │
└  1  -2   0  -3   4 |  a ┘

Step 2: Swap R₁ and R₃ (to get 1 in top-left)
┌  1  -2   1  -1   1 |  0 ┐
│  4  -8   3  -3   1 |  2 │
│ -2   4  -2  -1   4 | -3 │
└  1  -2   0  -3   4 |  a ┘

Step 3: Eliminate below the pivot
R₂ ← R₂ - 4R₁
R₃ ← R₃ + 2R₁
R₄ ← R₄ - R₁

... (continue until Row-Echelon form)

Final Row-Echelon Form:
┌ 1  -2   1  -1   1 |  0   ┐
│ 0   0   1  -1   3 | -2   │
│ 0   0   0   1  -2 |  1   │
└ 0   0   0   0   0 | a+1  ┘
```

## 📝 Reading the Solution:

```
From the Row-Echelon form:
• Last row: 0 = a+1 → Solution exists only if a = -1!
• x₄ - 2x₅ = 1
• x₃ - x₄ + 3x₅ = -2
• x₁ - 2x₂ + x₃ - x₄ + x₅ = 0

PIVOT variables: x₁, x₃, x₄ (columns with leading 1s)
FREE variables: x₂, x₅ (can be anything!)
```

---

# 📖 SLIDE 50-56: Row-Echelon Form (REF) and RREF ⭐⭐⭐⭐

## 🤔 What is Row-Echelon Form? (SUPER SIMPLE)

> **Row-Echelon Form (REF)** = A "staircase" pattern where:
> 1. All-zero rows are at the bottom
> 2. First non-zero entry (PIVOT) in each row is to the RIGHT of the pivot above

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   Row-Echelon Form looks like STAIRS:                       │
│                                                             │
│   ┌ 1   *   *   *   * ┐   ← Pivot (first non-zero)          │
│   │ 0   1   *   *   * │   ← Pivot is to the RIGHT           │
│   │ 0   0   0   1   * │   ← Staircase continues             │
│   └ 0   0   0   0   0 ┘   ← Zero rows at bottom             │
│                                                             │
│   * = any number                                            │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

## 📝 Reduced Row-Echelon Form (RREF) - Slide 53:

```
RREF is even simpler:
• Every pivot = 1
• Pivot is the ONLY non-zero entry in its column

┌ 1   0   *   0   * ┐   ← Only 1s on pivots
│ 0   1   *   0   * │   ← Each pivot column has only ONE non-zero
└ 0   0   0   1   * ┘
```

## 📝 Pivot vs Free Variables (Slide 50):

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   PIVOT VARIABLES:                                          │
│   • Correspond to columns with pivots                       │
│   • Their values are DETERMINED by free variables           │
│                                                             │
│   FREE VARIABLES:                                           │
│   • Correspond to non-pivot columns                         │
│   • Can take ANY value → gives infinite solutions           │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

---

# 📖 SLIDE 58-62: Calculating Inverse using Gaussian Elimination ⭐⭐⭐⭐

## 🤔 How to Find A⁻¹? (SUPER SIMPLE)

**Cool trick**: Use Gaussian Elimination on [A | I] to get [I | A⁻¹]!

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   START:  [ A | I ]                                         │
│                                                             │
│   ┌ 2  1 | 1  0 ┐                                           │
│   └ 5  3 | 0  1 ┘                                           │
│                                                             │
│   Apply Gaussian Elimination...                             │
│                                                             │
│   END:    [ I | A⁻¹ ]                                       │
│                                                             │
│   ┌ 1  0 | 3  -1 ┐                                          │
│   └ 0  1 |-5   2 ┘                                          │
│                                                             │
│   So A⁻¹ = ┌  3  -1 ┐                                       │
│            └ -5   2 ┘                                       │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

## 📝 Why Does This Work? (Slide 61-62):

```
If Ax = eᵢ (where eᵢ is a column of I)
Then x = A⁻¹eᵢ = i-th column of A⁻¹

So solving all Ax = eᵢ for i = 1, 2, ..., n
gives us ALL columns of A⁻¹!

That's exactly what [A | I] → [I | A⁻¹] does!
```

---

# 📝 SUPER SIMPLE FORMULA CHEAT SHEET (Print This! 🖨️)

```
┌─────────────────────────────────────────────────────────────────┐
│                                                                 │
│   📐 MATRIX BASICS:                                             │
│                                                                 │
│   Matrix = m×n (m rows, n columns)                              │
│   Identity I = diagonal 1s, rest 0s                             │
│   A × I = I × A = A                                             │
│                                                                 │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│   ✖️ MATRIX MULTIPLICATION:                                     │
│                                                                 │
│   (m×k) × (k×n) = (m×n)                                         │
│   AB ≠ BA in general!                                           │
│   (AB)C = A(BC)  ← Associative                                  │
│                                                                 │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│   🔄 INVERSE & TRANSPOSE:                                       │
│                                                                 │
│   A × A⁻¹ = A⁻¹ × A = I                                         │
│   (AB)⁻¹ = B⁻¹A⁻¹  ← ORDER REVERSES!                            │
│   (AB)ᵀ = BᵀAᵀ     ← ORDER REVERSES!                            │
│                                                                 │
│   2×2 Inverse:                                                  │
│   A = [a b; c d] → A⁻¹ = (1/(ad-bc)) × [d -b; -c a]            │
│                                                                 │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│   📊 SOLVING Ax = b:                                            │
│                                                                 │
│   General Solution = Particular + Homogeneous                   │
│   x = x_p + λ₁v₁ + λ₂v₂ + ...                                   │
│                                                                 │
│   Where:                                                        │
│   • x_p solves Ax = b                                           │
│   • v₁, v₂... solve Ax = 0                                      │
│                                                                 │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│   🔢 GAUSSIAN ELIMINATION:                                      │
│                                                                 │
│   Three operations (don't change solution):                     │
│   1. Swap rows: R₁ ↔ R₂                                         │
│   2. Scale row: R₁ ← λR₁ (λ ≠ 0)                                │
│   3. Add rows: R₂ ← R₂ + λR₁                                    │
│                                                                 │
│   Goal: Transform to Row-Echelon Form (staircase)               │
│                                                                 │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│   🎯 SOLUTION TYPES:                                            │
│                                                                 │
│   NO solution: Contradiction (like 0 = 5)                       │
│   ONE solution: Every variable is a pivot                       │
│   INFINITE solutions: Free variables exist                      │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

---

# 📝 EC-2 MID-SEM EXAM QUESTIONS PREVIEW

Based on the past EC-2 paper, Module 1 questions include:

| Question | Topic | Marks |
|----------|-------|-------|
| Q1 | Linear model, Gradient, Hessian, Critical points | 5M |
| Q2(a) | Solve system of linear equations | 2M |
| Q2(b) | Prove/disprove vector space properties | 2M |
| Q2(c) | Gram-Schmidt orthonormalization | 2M |
| Q2(d) | Find matrices where (A+B)⁻¹ ≠ A⁻¹ + B⁻¹ | 1M |
| Q5(b) | Pseudocode for RREF conversion | 2M |

---

# ✅ EXAM DAY CHECKLIST

## Before Solving Any Problem:

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   1️⃣ Is it a system of equations?                          │
│      → Write in matrix form Ax = b                          │
│      → Use Gaussian Elimination                             │
│                                                             │
│   2️⃣ Asked for matrix inverse?                             │
│      → For 2×2: Use formula with determinant                │
│      → For larger: Use [A|I] → [I|A⁻¹]                      │
│                                                             │
│   3️⃣ Asked about solutions?                                │
│      → Check if contradictions exist (NO solution)          │
│      → Count pivot vs free variables                        │
│      → Free variables = INFINITE solutions                  │
│                                                             │
│   4️⃣ Remember key properties:                              │
│      → (AB)⁻¹ = B⁻¹A⁻¹ (order reverses!)                    │
│      → (AB)ᵀ = BᵀAᵀ (order reverses!)                       │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

---

**📅 Created for**: BITS Pilani MTech WLP, AIML ZC416, Module 1
**📖 Based on**: Lecture 1.pdf (62 Slides)
**⏱️ Estimated Study Time**: 4-5 hours for thorough understanding
**💡 Best way to study**: Practice Gaussian Elimination by hand on paper!
