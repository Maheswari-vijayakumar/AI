# 🔢 Mathematical Foundations for ML - Module 1 Beginner's Guide
## AIML ZC416 | BITS Pilani MTech WLP
## 📚 VERY VERY BASIC Level Explanation (Like Explaining to a 10-Year-Old!)
## 📖 Based on: Lecture 1.pdf (62 Slides) + Lecture 2.pdf (43 Slides)

---

# 🎯 What Will You Learn in Module 1?

**In Simple Words**: Module 1 teaches you about **LINEAR ALGEBRA** - the math behind Machine Learning!

## 📖 LECTURE 1: Systems of Equations & Matrices (62 slides)

| Slide # | Topic | In Simple Words | Importance |
|---------|-------|-----------------|------------|
| **2-3** | What is Linear Algebra? | Math for manipulating "lists of numbers" | ⭐⭐⭐⭐ |
| **4-17** | Systems of Linear Equations | Finding unknown values from equations | ⭐⭐⭐⭐⭐ |
| **18-27** | Matrices | Tables of numbers & their operations | ⭐⭐⭐⭐⭐ |
| **28-37** | Solving Equations | Finding particular & general solutions | ⭐⭐⭐⭐ |
| **38-57** | Gaussian Elimination | Step-by-step method to solve equations | ⭐⭐⭐⭐⭐ |
| **58-62** | Computing Matrix Inverse | Finding the "undo" button for matrices | ⭐⭐⭐⭐ |

## 📖 LECTURE 2: Vector Spaces & Basis (43 slides)

| Slide # | Topic | In Simple Words | Importance |
|---------|-------|-----------------|------------|
| **3-7** | Groups & Vector Spaces | Rules for a "legal" collection of vectors | ⭐⭐⭐⭐⭐ |
| **8-13** | Vector Subspaces | Smaller vector spaces inside bigger ones | ⭐⭐⭐⭐ |
| **14-22** | Linear Independence | Vectors that aren't "redundant" | ⭐⭐⭐⭐⭐ |
| **23-31** | Testing Independence | Using Gaussian elimination to check | ⭐⭐⭐⭐ |
| **32-42** | Basis & Dimension | The "building blocks" of a vector space | ⭐⭐⭐⭐⭐ |

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

# 📖 SLIDE 13-17: Geometrical Interpretation ⭐⭐⭐⭐

## 🤔 What Do These Equations Look Like? (SUPER SIMPLE)

**Think**: Each equation is a LINE (in 2D) or a PLANE (in 3D)!

## 📊 In 2D (Two Variables):

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   Each equation ax + by = c is a LINE on a graph           │
│                                                             │
│   CASE 1: Lines CROSS → ONE solution (the crossing point)  │
│                                                             │
│        y│     \  /                                          │
│         │      \/  ← This point is the solution!            │
│         │      /\                                           │
│         └────────────x                                      │
│                                                             │
│   CASE 2: Lines are PARALLEL → NO solution (never meet)    │
│                                                             │
│        y│     /  /                                          │
│         │    /  /   ← No intersection point exists!         │
│         │   /  /                                            │
│         └────────────x                                      │
│                                                             │
│   CASE 3: Lines are SAME → INFINITE solutions (every point)│
│                                                             │
│        y│     ══════                                        │
│         │     ══════   ← Every point on line works!         │
│         │                                                   │
│         └────────────x                                      │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

## 📊 In 3D (Three Variables) - Slide 17:

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   Each equation ax + by + cz = d is a PLANE in 3D space    │
│                                                             │
│   • Two planes intersect in a LINE                         │
│   • Three planes can intersect at a POINT (unique solution)│
│   • Three planes can intersect in a LINE (infinite)        │
│   • Planes can be parallel (no solution)                   │
│                                                             │
│   Think of it like 3 sheets of paper:                       │
│   - If they all pass through ONE point → that's the answer │
│   - If they form a "tent" shape → that's a line of answers │
│   - If one is parallel to others → no common point exists  │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

## 💡 Memory Trick:

```
2D (2 variables): Lines crossing = Solution
3D (3 variables): Planes crossing = Solution
nD (n variables): Hyperplanes crossing = Solution
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

# ═══════════════════════════════════════════════════════════════
# 📖 LECTURE 2: VECTOR SPACES & BASIS (43 Slides)
# ═══════════════════════════════════════════════════════════════

---

# 📖 LECTURE 2, SLIDE 3-7: Groups and Vector Spaces ⭐⭐⭐⭐⭐

## 🤔 What is a Group? (SUPER SIMPLE)

**Think**: A GROUP is a collection of things with a special operation (like addition) that follows certain rules.

> **Group (G, ⊗)** = A set G with an operation ⊗ that follows 4 rules

## 📝 The 4 Rules (Axioms) for a Group:

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   RULE 1: CLOSURE                                           │
│   If you take any two things from G and combine them,       │
│   the result is ALSO in G.                                  │
│   Example: 3 + 5 = 8 (all integers!)                        │
│                                                             │
│   RULE 2: ASSOCIATIVITY                                     │
│   (a ⊗ b) ⊗ c = a ⊗ (b ⊗ c)                                │
│   Example: (2+3)+4 = 2+(3+4) = 9                            │
│                                                             │
│   RULE 3: IDENTITY ELEMENT                                  │
│   There's a special element e such that a ⊗ e = a           │
│   Example: 5 + 0 = 5 (0 is identity for addition)          │
│                                                             │
│   RULE 4: INVERSE ELEMENT                                   │
│   For every element, there's another that "undoes" it       │
│   Example: 5 + (-5) = 0                                     │
│                                                             │
│   BONUS: If a ⊗ b = b ⊗ a (order doesn't matter),          │
│          it's called an ABELIAN GROUP                       │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

## 📊 Examples:

| Set & Operation | Group? | Why? |
|-----------------|--------|------|
| (ℤ, +) Integers with addition | ✅ Yes (Abelian) | All 4 rules hold |
| (ℕ₀, +) Natural numbers with + | ❌ No | No inverse (can't do 5 + ? = 0) |
| (ℤ, ×) Integers with multiply | ❌ No | No inverse for 2 (1/2 not integer) |

## 🤔 What is a Vector Space? (SUPER SIMPLE)

**A Vector Space is like a Group, but with TWO operations**:
1. **Inner operation (+)**: Adding vectors
2. **Outer operation (·)**: Multiplying vector by scalar

> **Vector Space V = (V, +, ·)** is an Abelian group under + with scalar multiplication

## 📝 Vector Space Rules (Slide 7):

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   DISTRIBUTIVITY:                                           │
│   λ · (x + y) = λ·x + λ·y                                  │
│   (λ + ψ) · x = λ·x + ψ·x                                  │
│                                                             │
│   ASSOCIATIVITY:                                            │
│   λ · (ψ · x) = (λψ) · x                                   │
│                                                             │
│   IDENTITY:                                                 │
│   1 · x = x                                                │
│                                                             │
│   ZERO VECTOR:                                              │
│   The zero vector 0 = [0, 0, ..., 0]ᵀ                      │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

## 📊 Examples of Vector Spaces (Slide 8-9):

```
Example 1: ℝⁿ (n-dimensional real vectors)
  - Addition: [1,2] + [3,4] = [4,6]
  - Scalar mult: 3 × [1,2] = [3,6]

Example 2: ℝᵐˣⁿ (m×n matrices)
  - Matrices can be added element-wise
  - Matrices can be scaled by a constant
  - So matrices form a vector space too!
```

---

# 📖 LECTURE 2, SLIDE 10-13: Vector Subspaces ⭐⭐⭐⭐

## 🤔 What is a Subspace? (SUPER SIMPLE)

**Think**: A subspace is a SMALLER vector space that lives INSIDE a bigger one.

> **Subspace U ⊆ V** = A subset U of V that is itself a vector space

## 📝 How to Check if U is a Subspace (Slide 11):

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   To prove U is a subspace of V, check:                     │
│                                                             │
│   1️⃣ U is not empty (U ≠ ∅)                                │
│                                                             │
│   2️⃣ CLOSURE under addition:                               │
│      If x, y ∈ U, then x + y ∈ U                            │
│                                                             │
│   3️⃣ CLOSURE under scalar multiplication:                  │
│      If x ∈ U and λ ∈ ℝ, then λx ∈ U                        │
│                                                             │
│   (If both closures hold, U is a subspace!)                 │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

## 📊 Examples (Slides 12-13):

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   ✅ SUBSPACE: The y-axis in ℝ²                             │
│      - Any point on y-axis: [0, y]                          │
│      - Add two: [0,y₁] + [0,y₂] = [0, y₁+y₂] ← still on y-axis!
│      - Scale: λ[0,y] = [0, λy] ← still on y-axis!          │
│                                                             │
│   ❌ NOT SUBSPACE: The line x = 1 in ℝ²                     │
│      - Point on line: [1, y]                                │
│      - Scale by 2: 2[1,y] = [2, 2y] ← NOT on the line!     │
│      - The line doesn't pass through origin!                │
│                                                             │
│   ❌ NOT SUBSPACE: A square around origin                   │
│      - Scale [0.5, 0.5] by 3: [1.5, 1.5] ← outside square! │
│                                                             │
│   ✅ SUBSPACE: Null space of A (solutions to Ax = 0)        │
│      - If Ax = 0 and Ay = 0, then A(x+y) = 0 ✓             │
│      - If Ax = 0, then A(λx) = λ(Ax) = 0 ✓                 │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

## 💡 Key Insight:

```
A subspace MUST pass through the origin (zero vector)!

Why? Because λ = 0 gives: 0 · x = 0 (zero vector)
So zero vector must be in every subspace.
```

---

# 📖 LECTURE 2, SLIDE 14-22: Linear Independence ⭐⭐⭐⭐⭐

## 🤔 What is Linear Combination? (SUPER SIMPLE - Slide 15)

**Think**: Mixing vectors with different "amounts" (scalars)

> **Linear Combination** = λ₁x₁ + λ₂x₂ + ... + λₖxₖ

```
Example:
If x₁ = [1,0] and x₂ = [0,1]

Then 3x₁ + 2x₂ = 3[1,0] + 2[0,1] = [3,2]

We "combined" x₁ and x₂ to get [3,2]!
```

## 🤔 What is Linear Independence? (SUPER SIMPLE - Slide 16-17)

**Think**: Can you make one vector from the others? If NO → they're independent!

> **Linearly Independent** = The ONLY way to get zero is if ALL scalars are zero

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   LINEARLY INDEPENDENT:                                     │
│   λ₁x₁ + λ₂x₂ + ... + λₖxₖ = 0                              │
│   ONLY when λ₁ = λ₂ = ... = λₖ = 0                          │
│                                                             │
│   "You can't make any vector from the others!"             │
│   "Each vector brings something unique to the table!"       │
│                                                             │
│   ──────────────────────────────────────────────────────    │
│                                                             │
│   LINEARLY DEPENDENT:                                       │
│   You CAN find non-zero λs that give zero                   │
│                                                             │
│   "One vector is redundant - you can make it from others!"  │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

## � Visual Example:

```
LINEARLY INDEPENDENT:          LINEARLY DEPENDENT:

    ↑ x₂                            ↑ x₂    x₃
    │                               │      ↗
    │                               │    ↗
    └─────→ x₁                      └─────→ x₁

x₁ and x₂ point in                 x₃ = 2x₁ (just scaled x₁!)
different directions!              So x₃ is REDUNDANT
Can't make one from other.         x₁, x₂, x₃ are DEPENDENT
```

## 📝 Key Facts (Slide 18):

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   FACT 1: If ANY vector is the zero vector,                 │
│           the set is DEPENDENT                              │
│           (because 1·0 + 0·x₁ + 0·x₂ = 0)                  │
│                                                             │
│   FACT 2: If all vectors are non-zero, they're dependent   │
│           iff one can be written as combination of others   │
│                                                             │
│   FACT 3: Vectors are either independent OR dependent      │
│           (no third option!)                                │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

---

# 📖 LECTURE 2, SLIDE 19-22: Checking Independence with Gaussian Elimination ⭐⭐⭐⭐

## 🤔 How to Check Linear Independence? (SUPER SIMPLE)

**Method**: Put vectors as COLUMNS of a matrix, do Gaussian elimination!

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   Step 1: Put vectors as columns of matrix A               │
│                                                             │
│   Step 2: Do Gaussian elimination → Row-Echelon Form       │
│                                                             │
│   Step 3: Count pivot columns                              │
│           - PIVOT columns = linearly independent vectors    │
│           - NON-PIVOT columns = dependent (redundant)       │
│                                                             │
│   If ALL columns are pivot columns → ALL vectors are       │
│   linearly independent!                                     │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

## 🔢 Example (Slide 20):

```
Matrix: ┌ 1  2  3 ┐
        └ 2  4  4 ┘

After Gaussian Elimination:
        ┌ 1  2  3 ┐
        └ 0  0 -2 ┘

Pivot columns: 1st and 3rd (have leading 1s)
Non-pivot column: 2nd

Result: Column 2 = 2 × Column 1 (it's dependent!)
        Columns 1 and 3 are independent.
```

## 🔢 Example 2 (Slide 21-22):

```
Vectors: x₁ = [1,2,-3,4]ᵀ, x₂ = [1,1,0,2]ᵀ, x₃ = [-1,-2,1,1]ᵀ

Matrix: ┌  1   1  -1 ┐
        │  2   1  -2 │
        │ -3   0   1 │
        └  4   2   1 ┘

After Gaussian Elimination:
        ┌ 1  1 -1 ┐
        │ 0  1  0 │
        │ 0  0  1 │
        └ 0  0  0 ┘

ALL 3 columns are pivot columns!
So x₁, x₂, x₃ are LINEARLY INDEPENDENT ✓
```

---

# 📖 LECTURE 2, SLIDE 23-31: More on Linear Independence ⭐⭐⭐⭐

## 🤔 Building Vectors from Other Vectors (Slide 23-26)

**Question**: If we have k independent vectors (b₁, b₂, ..., bₖ), and we create m new vectors (x₁, x₂, ..., xₘ) from them, when are these new vectors independent?

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   KEY INSIGHT:                                              │
│                                                             │
│   If each xⱼ = λ₁ⱼb₁ + λ₂ⱼb₂ + ... + λₖⱼbₖ                 │
│                                                             │
│   Then x₁, x₂, ..., xₘ are independent                     │
│   IF AND ONLY IF                                            │
│   the λ vectors are independent!                            │
│                                                             │
│   (We just need to check the coefficients!)                 │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

## 📝 Example (Slide 27-30):

```
Given independent vectors b₁, b₂, b₃, b₄

Define:
x₁ = b₁ - 2b₂ + b₃ - b₄       → λ₁ = [1, -2, 1, -1]ᵀ
x₂ = -4b₁ - 2b₂ + 4b₄         → λ₂ = [-4, -2, 0, 4]ᵀ
x₃ = 2b₁ + 3b₂ - b₃ - 3b₄     → λ₃ = [2, 3, -1, -3]ᵀ
x₄ = 17b₁ - 10b₂ + 11b₃ + b₄  → λ₄ = [17, -10, 11, 1]ᵀ

To check if x₁, x₂, x₃, x₄ are independent:
→ Check if λ₁, λ₂, λ₃, λ₄ are independent!
```

## 🔢 Checking with Gaussian Elimination:

```
Matrix of λs:      After RREF:
┌  1  -4   2   17 ┐     ┌ 1  0  0  -7 ┐
│ -2  -2   3  -10 │  →  │ 0  1  0 -15 │
│  1   0  -1   11 │     │ 0  0  1 -18 │
└ -1   4  -3    1 ┘     └ 0  0  0   0 ┘

Column 4 is NOT a pivot column!
So 4th column = -7×col1 - 15×col2 - 18×col3

RESULT: x₁, x₂, x₃, x₄ are LINEARLY DEPENDENT! ✗
```

## 💡 Important Rule (Slide 31-32):

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   If you have m vectors, each expressed using k vectors...  │
│                                                             │
│   And m > k (more vectors than basis vectors)               │
│                                                             │
│   Then the m vectors are GUARANTEED to be DEPENDENT!        │
│                                                             │
│   Why? Because matrix has more columns than rows,           │
│   so there must be non-pivot columns!                       │
│                                                             │
│   RULE: Can have at most k independent vectors from k basis │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

---

# 📖 LECTURE 2, SLIDE 32-42: Basis and Dimension ⭐⭐⭐⭐⭐

## 🤔 What is a Span? (SUPER SIMPLE - Slide 34)

**Think**: All the places you can reach by combining your vectors

> **Span(A)** = All possible linear combinations of vectors in A

```
Example: A = {[1,0], [0,1]}

Span(A) = λ₁[1,0] + λ₂[0,1] = [λ₁, λ₂]

This spans ALL of ℝ²! (any 2D point can be reached)
```

## 🤔 What is a Basis? (SUPER SIMPLE - Slide 34-35)

**Think**: The SMALLEST set of vectors that can make ANY vector in the space

> **Basis** = A set of linearly independent vectors that spans the entire space

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   BASIS = Minimum building blocks to create everything!     │
│                                                             │
│   Requirements:                                             │
│   1. Linearly INDEPENDENT (no redundant vectors)            │
│   2. SPANS the whole space (can make any vector)            │
│                                                             │
│   Think of it like:                                         │
│   - Primary colors (Red, Green, Blue) are a "basis"        │
│   - You can make ANY color by mixing them                   │
│   - But you can't make Red from Green and Blue!            │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

## 📊 Examples of Bases (Slide 37):

```
For ℝ³, here are 3 different valid bases:

CANONICAL BASIS:         ANOTHER BASIS:          YET ANOTHER:
┌ 1 ┐  ┌ 0 ┐  ┌ 0 ┐     ┌ 1 ┐  ┌ 1 ┐  ┌ 1 ┐     ┌ 0.5 ┐  ┌ 1.8 ┐  ┌-2.2┐
│ 0 │  │ 1 │  │ 0 │     │ 0 │  │ 1 │  │ 1 │     │ 0.8 │  │ 0.3 │  │-3.3│
└ 0 ┘  └ 0 ┘  └ 1 ┘     └ 0 ┘  └ 0 ┘  └ 1 ┘     └ 0.4 ┘  └ 0.3 │  └ 1.5┘

All are valid because each has 3 linearly independent vectors!
```

## ❌ NOT a Basis! (Slide 38):

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   Question: Is any linearly independent set a basis?        │
│                                                             │
│   ANSWER: NO! You might have TOO FEW vectors!               │
│                                                             │
│   Example in ℝ⁴:                                            │
│                                                             │
│   ┌ 1 ┐  ┌ 2 ┐  ┌ 1 ┐                                       │
│   │ 2 │  │-1 │  │ 1 │  ← These 3 vectors are independent    │
│   │ 3 │  │ 0 │  │ 0 │                                       │
│   └ 4 ┘  └ 2 ┘  └ 4 ┘                                       │
│                                                             │
│   BUT they are NOT a basis for ℝ⁴!                          │
│   Why? ℝ⁴ needs 4 vectors for a basis, not 3!               │
│                                                             │
│   You can't reach ALL points in ℝ⁴ with only 3 vectors!     │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

## 🤔 What is Dimension? (Slide 39-40)

> **Dimension** = Number of vectors in any basis of the space

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   dim(ℝ¹) = 1  (a line)                                    │
│   dim(ℝ²) = 2  (a plane)                                   │
│   dim(ℝ³) = 3  (3D space)                                  │
│   dim(ℝⁿ) = n  (n-dimensional space)                       │
│                                                             │
│   KEY: ALL bases of a space have SAME number of vectors!   │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

## ⚠️ Dimension ≠ Number of Components! (Slide 40)

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   Common Mistake: Thinking dimension = number of components │
│                                                             │
│   EXAMPLE: Consider span([0,1]ᵀ)                            │
│                                                             │
│   • The vector [0,1]ᵀ has 2 components                      │
│   • But span([0,1]ᵀ) is just a LINE (the y-axis)           │
│   • Basis of this subspace = just {[0,1]ᵀ}                 │
│   • So dimension = 1, not 2!                                │
│                                                             │
│   All vectors in this space: λ[0,1]ᵀ = [0, λ]ᵀ             │
│   (just points on the y-axis!)                              │
│                                                             │
│   RULE: Dimension = Size of basis, NOT component count!    │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

## 📝 Finding a Basis (Slide 41-42):

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   To find basis of span{x₁, x₂, ..., xₘ}:                  │
│                                                             │
│   Step 1: Put vectors as columns of matrix A               │
│                                                             │
│   Step 2: Find Row-Echelon Form                            │
│                                                             │
│   Step 3: The original vectors corresponding to            │
│           PIVOT columns form the basis!                     │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

## � Example: Finding a Basis (Slide 42):

```
Given vectors in ℝ⁵:

x₁ = [ 1,  2, -1, -1, -1]ᵀ
x₂ = [ 2, -1,  1,  2, -2]ᵀ
x₃ = [ 3, -4,  3,  5, -3]ᵀ
x₄ = [-1,  8, -5, -6,  1]ᵀ

Question: Do these 4 vectors form a basis for their span?

Step 1: Put as columns:
┌  1   2   3  -1 ┐
│  2  -1  -4   8 │
│ -1   1   3  -5 │
│ -1   2   5  -6 │
└ -1  -2  -3   1 ┘

Step 2: After Gaussian Elimination to REF:
→ Find which columns are pivot columns

Step 3: Only the PIVOT column vectors form the basis!

(The non-pivot columns are redundant - they can be made
from the pivot columns)
```

## �📝 Important Properties (Slide 39):

```
If U ⊆ V (U is subspace of V):
• dim(U) ≤ dim(V)
• dim(U) = dim(V) if and only if U = V
```

---

# 📝 UPDATED FORMULA CHEAT SHEET (Print This! 🖨️)

```
┌─────────────────────────────────────────────────────────────────┐
│                                                                 │
│   🔢 VECTOR SPACE PROPERTIES:                                   │
│                                                                 │
│   Group: Closure + Associativity + Identity + Inverse           │
│   Vector Space: Group + Scalar multiplication rules             │
│                                                                 │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│   📍 SUBSPACE CHECK (is U ⊆ V a subspace?):                     │
│                                                                 │
│   1. U ≠ ∅ (not empty)                                         │
│   2. x,y ∈ U → x+y ∈ U (closed under +)                        │
│   3. x ∈ U, λ ∈ ℝ → λx ∈ U (closed under scalar mult)          │
│                                                                 │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│   🔗 LINEAR INDEPENDENCE:                                       │
│                                                                 │
│   Independent: λ₁x₁ + ... + λₖxₖ = 0 ONLY if all λᵢ = 0        │
│   Dependent: Can find non-zero λs that give 0                   │
│                                                                 │
│   CHECK: Put vectors as columns → Gaussian Elimination          │
│          All pivot columns = Independent                        │
│          Non-pivot columns = Dependent                          │
│                                                                 │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│   📐 BASIS & DIMENSION:                                         │
│                                                                 │
│   Span(A) = All linear combinations of vectors in A             │
│   Basis = Linearly independent + Spans the space               │
│   Dimension = Number of vectors in any basis                    │
│                                                                 │
│   dim(ℝⁿ) = n                                                   │
│   dim(U) ≤ dim(V) if U ⊆ V                                     │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

---

# ✅ UPDATED EXAM DAY CHECKLIST

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
│   4️⃣ Vector Space/Subspace question?                       │
│      → Check closure under + and scalar mult                │
│      → Must contain zero vector!                            │
│                                                             │
│   5️⃣ Linear Independence question?                         │
│      → Put vectors as columns of matrix                     │
│      → Gaussian Elimination                                 │
│      → Pivot columns = independent vectors                  │
│                                                             │
│   6️⃣ Basis/Dimension question?                             │
│      → Find linearly independent vectors                    │
│      → Count them = dimension                               │
│                                                             │
│   7️⃣ Remember key properties:                              │
│      → (AB)⁻¹ = B⁻¹A⁻¹ (order reverses!)                    │
│      → (AB)ᵀ = BᵀAᵀ (order reverses!)                       │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

---

**�📅 Created for**: BITS Pilani MTech WLP, AIML ZC416, Module 1
**📖 Based on**: Lecture 1.pdf (62 Slides) + Lecture 2.pdf (43 Slides)
**⏱️ Estimated Study Time**: 6-8 hours for thorough understanding
**💡 Best way to study**: Practice Gaussian Elimination and Linear Independence checks by hand!
