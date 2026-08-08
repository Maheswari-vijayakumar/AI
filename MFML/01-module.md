# 📘 Module 1: Solution of Linear Systems - Complete Exam-Ready Notes
## AIML ZC416 - Mathematical Foundations for Machine Learning

**Reference:** T1 (Diesenroth): Sections 2.1, 2.2, 2.3

---

## � DAY-WISE STUDY PLAN (Module 1)

### Day 1: Foundations (2-2.5 hours)
| Time | Topic | What to Do |
|------|-------|------------|
| 30 min | Part 1: Vectors | Read + understand examples |
| 30 min | Part 2: Linear Equations | Understand 3 types of solutions |
| 45 min | Part 3-4: Matrices & Operations | Practice matrix multiplication |
| 30 min | Part 5: Special Matrices | Memorize Identity, Transpose |
| **Practice** | Problems 1-2 | Solve without looking at answers |

### Day 2: Inverse & Properties (2 hours)
| Time | Topic | What to Do |
|------|-------|------------|
| 45 min | Part 6: Matrix Inverse | Learn 2×2 formula, practice |
| 30 min | Memorize Properties | (AB)⁻¹ = B⁻¹A⁻¹, (AB)ᵀ = BᵀAᵀ |
| 30 min | Part 12: Inverse by Gaussian | Step-by-step [A\|I] → [I\|A⁻¹] |
| 15 min | Exam Trap | (A+B)⁻¹ ≠ A⁻¹+B⁻¹ example |
| **Practice** | EC2 Q2d style | Create your own example |

### Day 3: Gaussian Elimination (2.5 hours)
| Time | Topic | What to Do |
|------|-------|------------|
| 30 min | Part 7: Gaussian Elimination | Understand 3 row operations |
| 45 min | Part 8-9: REF & RREF | Practice converting matrices |
| 45 min | Part 19: RREF Algorithm | **Memorize pseudocode** ⭐ |
| 30 min | Part 10: Solution Types | Identify 0, 1, ∞ solutions |
| **Practice** | Convert 3 matrices to RREF | Do by hand |

### Day 4: Solutions & Theory (2 hours)
| Time | Topic | What to Do |
|------|-------|------------|
| 45 min | Part 13: Particular + General | Master the algorithm |
| 30 min | Part 14: Why 0,1,∞ only | Memorize proof |
| 30 min | Part 15: Geometric View | Visualize lines/planes |
| 15 min | Part 18: Common Mistakes | Review what NOT to do |
| **Practice** | EC3 Q5-10 | Solve completely |

### Day 5: Revision & Mock Test (2-3 hours)
| Time | Topic | What to Do |
|------|-------|------------|
| 30 min | Part 17: Cheat Sheet | Quick revision of formulas |
| 45 min | Part 16: All Problems | Solve all practice problems |
| 60 min | EC2 Q2 Complete | Solve like real exam |
| 30 min | Checklist | Verify all ✅ in checklist |

---

## �📋 Module 1 Topics Checklist

| Topic | Section | Exam Important |
|-------|---------|----------------|
| Systems of Linear Equations | Part 1-2 | ⭐⭐⭐ |
| Matrices & Operations | Part 3-4 | ⭐⭐⭐ |
| Inverse & Transpose | Part 5-6 | ⭐⭐⭐ |
| Gaussian Elimination | Part 7-8 | ⭐⭐⭐ |
| Row Echelon Form (REF/RREF) | Part 9-10 | ⭐⭐⭐ |
| Particular & General Solutions | Part 11 | ⭐⭐⭐ |
| Inverse using Gaussian Elimination | Part 12 | ⭐⭐ |

---

## 🎯 What is Linear Algebra?

**Definition:** Linear Algebra is the study of **vectors** and **linear mappings** between vector spaces.

### Why Important for ML?
- Data is represented as vectors/matrices
- Neural networks use matrix multiplication
- Solving equations (regression, optimization)

---

## 📍 Part 1: Understanding Vectors

### What is a Vector?
A vector is simply a **list of numbers** arranged in order.

```
Example:
v = [3]     ← This is a vector with 3 numbers
    [5]       (called a 3-dimensional vector)
    [2]
```

### Real-World Examples of Vectors:
| Situation | Vector Representation |
|-----------|----------------------|
| Location on map | [x-coordinate, y-coordinate] = [5, 3] |
| RGB Color | [Red, Green, Blue] = [255, 128, 0] |
| Student marks | [Math, Science, English] = [85, 90, 78] |

### Vector Operations:

**1. Addition (Add corresponding elements)**
```
[2]   [1]   [2+1]   [3]
[3] + [4] = [3+4] = [7]
[5]   [2]   [5+2]   [7]
```

**2. Scalar Multiplication (Multiply each element by a number)**
```
    [2]   [2×3]   [6]
3 × [4] = [4×3] = [12]
    [1]   [1×3]   [3]
```

---

## 📍 Part 2: Systems of Linear Equations

### What is a Linear Equation?
An equation where variables have **power of 1** (no x², x³, etc.)

```
✅ Linear:     2x + 3y = 10
❌ Not Linear: x² + y = 10
```

### System of Linear Equations:
Multiple linear equations that we solve together.

**Example - Furniture Factory Problem:**
```
A factory makes: Chairs (x₁), Tables (x₂), Cabinets (x₃)

Resources needed:
- Wood:     1×Chair + 2×Table + 1×Cabinet = 9 units available
- Labor:    2×Chair + 1×Table + 1×Cabinet = 8 hours available
- Machine:  1×Chair + 1×Table + 2×Cabinet = 7 hours available

Question: How many of each to make?
Answer: x₁=2 chairs, x₂=3 tables, x₃=1 cabinet
```

### Three Possible Outcomes:

| Outcome | Meaning | Visual (2D) |
|---------|---------|-------------|
| **One Solution** | Lines cross at ONE point | ✕ |
| **No Solution** | Lines are parallel (never meet) | ∥ |
| **Infinite Solutions** | Lines overlap completely | ═ |

---

## 📍 Part 3: Matrices - The Basics

### What is a Matrix?
A **rectangular box of numbers** arranged in rows and columns.

```
A = [1  2  3]  ← Row 1
    [4  5  6]  ← Row 2
     ↑  ↑  ↑
    C1 C2 C3 (Columns)

This is a 2×3 matrix (2 rows, 3 columns)
```

### Matrix Notation:
- Size written as: **(rows × columns)** or **(m × n)**
- Element at row i, column j written as: **aᵢⱼ**

```
A = [a₁₁  a₁₂]     Example: A = [5  3]
    [a₂₁  a₂₂]                  [2  7]

a₁₁ = 5 (row 1, col 1)
a₂₂ = 7 (row 2, col 2)
```

---

## 📍 Part 4: Matrix Operations

### 1. Matrix Addition
**Rule:** Add corresponding elements (matrices must be SAME size)

```
[1  2]   [5  1]   [1+5  2+1]   [6  3]
[3  4] + [2  3] = [3+2  4+3] = [5  7]
```

### 2. Scalar Multiplication
**Rule:** Multiply EVERY element by the scalar (number)

```
    [1  2]   [3×1  3×2]   [3   6]
3 × [4  5] = [3×4  3×5] = [12  15]
```

### 3. Matrix Multiplication ⭐ (Most Important!)

**Rule:** Row × Column, then sum up

**Size Rule:** A(m×k) × B(k×n) = C(m×n)
- First matrix columns MUST equal second matrix rows!

```
[1  2]   [5  6]   
[3  4] × [7  8] = ?

Step-by-step:
Position (1,1): (1×5) + (2×7) = 5 + 14 = 19
Position (1,2): (1×6) + (2×8) = 6 + 16 = 22
Position (2,1): (3×5) + (4×7) = 15 + 28 = 43
Position (2,2): (3×6) + (4×8) = 18 + 32 = 50

Result = [19  22]
         [43  50]
```

### ⚠️ Important: Matrix Multiplication is NOT Commutative!
```
A × B  ≠  B × A  (Usually!)
```

---

## 📍 Part 5: Special Matrices

### 1. Identity Matrix (I)
Like the number **1** in multiplication. Any matrix × I = Same matrix

```
I₂ = [1  0]      I₃ = [1  0  0]
     [0  1]           [0  1  0]
                      [0  0  1]

[3  5]   [1  0]   [3  5]
[2  7] × [0  1] = [2  7]  ← Same matrix!
```

### 2. Zero Matrix
A matrix with all zeros (like the number 0)

```
[0  0  0]
[0  0  0]
```

### 3. Transpose (Aᵀ)
**Flip rows and columns** - Row 1 becomes Column 1, etc.

```
A = [1  2  3]      Aᵀ = [1  4]
    [4  5  6]           [2  5]
                        [3  6]
(2×3 matrix)        (3×2 matrix)
```

---

## 📍 Part 6: Matrix Inverse (A⁻¹) ⭐ EXAM IMPORTANT

### What is an Inverse?
The inverse of matrix A is another matrix that when multiplied gives Identity.

```
A × A⁻¹ = A⁻¹ × A = I  (Identity Matrix)
```

**Real-Life Analogy:**
- Inverse is like an "UNDO" button
- 5 × (1/5) = 1  →  Similarly, A × A⁻¹ = I

### When Does Inverse Exist?
Only for **square matrices** where **determinant ≠ 0**

**A matrix with inverse is called "Invertible" or "Non-singular"**

### Finding Inverse of 2×2 Matrix:

```
A = [a  b]
    [c  d]

Step 1: Calculate determinant = ad - bc

Step 2: If determinant ≠ 0:
A⁻¹ = (1/determinant) × [d   -b]
                         [-c   a]
```

**Example:**
```
A = [4  7]
    [2  6]

Determinant = (4×6) - (7×2) = 24 - 14 = 10

A⁻¹ = (1/10) × [6   -7]   =  [0.6   -0.7]
               [-2   4]      [-0.2   0.4]

Verify: A × A⁻¹ = [1  0] ✓
                  [0  1]
```

### ⚠️ Key Properties (MUST MEMORIZE):
```
(A⁻¹)⁻¹ = A
(AB)⁻¹ = B⁻¹ × A⁻¹     ← Order REVERSES!
(Aᵀ)ᵀ = A
(AB)ᵀ = Bᵀ × Aᵀ        ← Order REVERSES!
(A⁻¹)ᵀ = (Aᵀ)⁻¹
```

### ⚠️ EXAM TRAP - What is NOT True:
```
(A + B)⁻¹ ≠ A⁻¹ + B⁻¹   ← THIS IS FALSE!
```

**Exam Question Example (from EC2 Q2d):**
> Find matrices A, B such that A⁻¹, B⁻¹ and (A+B)⁻¹ exist but (A+B)⁻¹ ≠ A⁻¹ + B⁻¹

**Solution:**
```
Let A = [1  0]    B = [1  0]
        [0  1]        [0  1]

A⁻¹ = I, B⁻¹ = I (both exist)

A + B = [2  0]    (A+B)⁻¹ = [0.5   0]
        [0  2]               [0   0.5]

A⁻¹ + B⁻¹ = [2  0]
            [0  2]

Clearly (A+B)⁻¹ ≠ A⁻¹ + B⁻¹ ✓
```

---

## 📍 Part 7: Solving Equations - Gaussian Elimination

### The Big Idea:
Convert a complex system into a simple one using **row operations**.

### Three Allowed Row Operations:
1. **Swap** two rows
2. **Multiply** a row by a non-zero number
3. **Add** a multiple of one row to another

### Step-by-Step Process:

**Original System:**
```
x + y + z = 6
2x + y + 2z = 10
x + 2y + 3z = 14
```

**Step 1: Write as Augmented Matrix**
```
[1  1  1 | 6 ]
[2  1  2 | 10]
[1  2  3 | 14]
```

**Step 2: Eliminate below first pivot**
- R2 = R2 - 2×R1
- R3 = R3 - R1
```
[1  1  1 | 6 ]
[0 -1  0 | -2]  ← 2-2=0, 1-2=-1, 2-2=0, 10-12=-2
[0  1  2 | 8 ]  ← 1-1=0, 2-1=1, 3-1=2, 14-6=8
```

**Step 3: Eliminate below second pivot**
- R3 = R3 + R2
```
[1  1  1 | 6]
[0 -1  0 | -2]
[0  0  2 | 6]   ← Third pivot found!
```

**Step 4: Back-substitute (solve from bottom)**
```
From R3: 2z = 6  →  z = 3
From R2: -y = -2  →  y = 2
From R1: x + 2 + 3 = 6  →  x = 1

Solution: x=1, y=2, z=3 ✓
```

---

## 📍 Part 8: Row Echelon Form (REF)

### What Does It Look Like?
A "staircase" pattern going down-right:

```
[■  *  *  *]     ■ = Pivot (first non-zero in row)
[0  ■  *  *]     * = Any number
[0  0  ■  *]     0 = Must be zero
[0  0  0  0]     ← Zero rows at bottom
```

### Key Terms:
| Term | Meaning |
|------|---------|
| **Pivot** | First non-zero element in a row |
| **Pivot Column** | Column containing a pivot |
| **Basic Variable** | Variable in a pivot column |
| **Free Variable** | Variable NOT in a pivot column (can be any value) |

---

## 📍 Part 9: Reduced Row Echelon Form (RREF)

### Extra Rules Beyond REF:
1. Every pivot = 1
2. Pivot is the ONLY non-zero in its column

```
REF:                    RREF:
[2  4  6 | 8]          [1  0  0 | 1]
[0  3  9 | 6]    →     [0  1  0 | 2]
[0  0  5 | 5]          [0  0  1 | 1]
```

### Why RREF is Useful:
- Solution can be **read directly**!
- Each row gives: one variable = one number

---

## 📍 Part 10: Types of Solutions

### Case 1: Unique Solution
- Every variable is a pivot variable
- RREF looks like identity matrix
```
[1  0  0 | 5]     x = 5
[0  1  0 | 3]  →  y = 3
[0  0  1 | 2]     z = 2
```

### Case 2: Infinite Solutions
- Has free variables (non-pivot columns)
- Express solution using free variable as parameter

```
[1  2  0 | 5]     x + 2y = 5  →  x = 5 - 2t
[0  0  1 | 3]     z = 3

y = t (free variable, any value)
Solution: x = 5-2t, y = t, z = 3  (infinite solutions!)
```

### Case 3: No Solution
- Last row: [0  0  0 | non-zero]
- Means: 0 = non-zero (impossible!)

```
[1  2  3 | 5]
[0  1  2 | 3]
[0  0  0 | 7]  ← 0 = 7 is FALSE! No solution.
```

---

## 📍 Part 11: Connection to Machine Learning

### Why Learn This for AI/ML?

| ML Concept | Linear Algebra Used |
|------------|---------------------|
| **Linear Regression** | Solving Ax = b (approximate solution) |
| **Neural Networks** | Matrix multiplication (weights × inputs) |
| **PCA** | Eigenvalues and Eigenvectors |
| **Image Processing** | Images are matrices of pixels |
| **Recommender Systems** | Matrix factorization |

### Example - Linear Regression:
When data doesn't have exact solution (overdetermined system),
we find the **best approximate solution** using:
```
x = (AᵀA)⁻¹ × Aᵀ × b
```

---

## 🎯 Quick Reference Card

### Matrix Properties Cheat Sheet:
```
(AB)C = A(BC)           ← Associative
A(B+C) = AB + AC        ← Distributive
AI = IA = A             ← Identity
A × A⁻¹ = I             ← Inverse
(AB)⁻¹ = B⁻¹A⁻¹         ← Inverse of product
(AB)ᵀ = BᵀAᵀ            ← Transpose of product
(Aᵀ)ᵀ = A               ← Double transpose
```

### Determinant (2×2):
```
|a  b|
|c  d| = ad - bc

If determinant = 0 → No inverse exists!
```

---

## ✏️ Practice Problems

### Problem 1: Matrix Multiplication
```
Calculate: [2  1] × [1  3]
           [3  4]   [2  1]
```

### Problem 2: Find Inverse
```
Find inverse of: A = [3  1]
                     [5  2]
```

### Problem 3: Solve System
```
x + 2y = 5
3x + 4y = 11

Use Gaussian elimination.
```

### Problem 4: Identify Solution Type
```
[1  0  2 | 4]
[0  1  3 | 5]
[0  0  0 | 0]

How many solutions? What are they?
```

---

## 📝 Answers to Practice Problems

**Problem 1:**
```
[2×1+1×2  2×3+1×1]   [4   7]
[3×1+4×2  3×3+4×1] = [11  13]
```

**Problem 2:**
```
det = 3×2 - 1×5 = 6 - 5 = 1
A⁻¹ = [2   -1]
      [-5   3]
```

**Problem 3:**
```
[1  2 | 5]      [1  2 | 5]
[3  4 | 11]  →  [0 -2 | -4]  (R2 - 3×R1)

-2y = -4 → y = 2
x + 4 = 5 → x = 1
Solution: x=1, y=2
```

**Problem 4:**
```
Infinite solutions!
x = 4 - 2t
y = 5 - 3t
z = t (free variable)
```

---

## 🌟 Key Takeaways

1. **Vectors** = Lists of numbers that can be added and scaled
2. **Matrices** = Tables of numbers with special multiplication rules
3. **Gaussian Elimination** = Systematic way to solve equations
4. **Inverse** = "Undo" matrix, exists only if determinant ≠ 0
5. **RREF** = Simplest form, solution readable directly
6. **Linear Algebra is the language of Machine Learning!**

---

## 📍 Part 19: RREF Algorithm & Pseudocode ⭐⭐⭐ EXAM QUESTION (EC2 Q5b)

### Exam Question (EC2 Q5b):
> Write a pseudocode to convert a square matrix A of size n×n in upper triangular form to RREF assuming that the determinant of A is non-zero.

### Understanding the Problem:
- Input: Upper triangular matrix (already has zeros below diagonal)
- Output: RREF (Identity matrix, since det ≠ 0)
- Need to: Make pivots = 1 and eliminate above pivots

### Pseudocode: Upper Triangular → RREF

```
ALGORITHM: UpperTriangularToRREF(A, n)

INPUT:  A = n×n upper triangular matrix with det(A) ≠ 0
OUTPUT: A in Reduced Row Echelon Form (RREF)

// Step 1: Make all diagonal elements (pivots) equal to 1
FOR i = 1 TO n:
    pivot = A[i][i]
    FOR j = i TO n:
        A[i][j] = A[i][j] / pivot    // Scale row i
    END FOR
END FOR

// Step 2: Eliminate all entries ABOVE each pivot
FOR i = n DOWN TO 2:           // Start from last row
    FOR k = i-1 DOWN TO 1:     // For each row above
        factor = A[k][i]       // Element to eliminate
        FOR j = i TO n:
            A[k][j] = A[k][j] - factor * A[i][j]
        END FOR
    END FOR
END FOR

RETURN A
```

### Step-by-Step Example:

**Input: Upper Triangular Matrix**
```
A = [2  4  6]
    [0  3  9]
    [0  0  5]
```

**Step 1: Make pivots = 1**
```
R1 = R1/2:  [1  2  3]
R2 = R2/3:  [0  1  3]
R3 = R3/5:  [0  0  1]

Result:
[1  2  3]
[0  1  3]
[0  0  1]
```

**Step 2: Eliminate above pivots (bottom to top)**

Start with column 3 (pivot at row 3):
```
R2 = R2 - 3*R3:  [0  1  0]
R1 = R1 - 3*R3:  [1  2  0]
```

Now column 2 (pivot at row 2):
```
R1 = R1 - 2*R2:  [1  0  0]
```

**Final RREF:**
```
[1  0  0]
[0  1  0]  = I₃ (Identity Matrix) ✓
[0  0  1]
```

---

### Full Gaussian Elimination Pseudocode (General Case)

```
ALGORITHM: GaussianElimination(A, b, m, n)

INPUT:  Augmented matrix [A|b] with m rows, n columns
OUTPUT: Matrix in Row Echelon Form (REF)

pivot_row = 1
pivot_col = 1

WHILE pivot_row <= m AND pivot_col <= n:

    // Find non-zero entry in current column
    max_row = pivot_row
    FOR i = pivot_row + 1 TO m:
        IF |A[i][pivot_col]| > |A[max_row][pivot_col]|:
            max_row = i
        END IF
    END FOR

    // If entire column is zero, move to next column
    IF A[max_row][pivot_col] == 0:
        pivot_col = pivot_col + 1
        CONTINUE
    END IF

    // Swap rows if needed
    IF max_row != pivot_row:
        SWAP(A[pivot_row], A[max_row])
    END IF

    // Eliminate entries below pivot
    FOR i = pivot_row + 1 TO m:
        factor = A[i][pivot_col] / A[pivot_row][pivot_col]
        FOR j = pivot_col TO n:
            A[i][j] = A[i][j] - factor * A[pivot_row][j]
        END FOR
    END FOR

    pivot_row = pivot_row + 1
    pivot_col = pivot_col + 1

END WHILE

RETURN A
```

---

### Pseudocode: REF → RREF (Back Substitution)

```
ALGORITHM: REFtoRREF(A, m, n)

INPUT:  Matrix A in Row Echelon Form
OUTPUT: Matrix in Reduced Row Echelon Form

// Find pivot positions
pivots = []  // List of (row, col) pairs

FOR i = 1 TO m:
    FOR j = 1 TO n:
        IF A[i][j] != 0:
            pivots.append((i, j))
            BREAK
        END IF
    END FOR
END FOR

// Process from bottom-right to top-left
FOR k = LENGTH(pivots) DOWN TO 1:
    (pivot_row, pivot_col) = pivots[k]

    // Scale pivot to 1
    scale = A[pivot_row][pivot_col]
    FOR j = pivot_col TO n:
        A[pivot_row][j] = A[pivot_row][j] / scale
    END FOR

    // Eliminate above pivot
    FOR i = pivot_row - 1 DOWN TO 1:
        factor = A[i][pivot_col]
        FOR j = pivot_col TO n:
            A[i][j] = A[i][j] - factor * A[pivot_row][j]
        END FOR
    END FOR
END FOR

RETURN A
```

---

### Summary of Three Row Operations:

| Operation | Symbol | What it Does |
|-----------|--------|--------------|
| Swap rows | Ri ↔ Rj | Exchange row i and row j |
| Scale row | Ri = k×Ri | Multiply row i by non-zero k |
| Add multiple | Ri = Ri + k×Rj | Add k times row j to row i |

**⚠️ Important:** These operations do NOT change the solution set!

---

## 📍 Part 12: Finding Inverse Using Gaussian Elimination ⭐ EXAM IMPORTANT

### The Method:
Create augmented matrix [A | I] and convert to [I | A⁻¹]

### Step-by-Step Example:

**Find inverse of:**
```
A = [1  2]
    [3  4]
```

**Step 1: Create augmented matrix [A | I]**
```
[1  2 | 1  0]
[3  4 | 0  1]
```

**Step 2: Make first column look like [1, 0]ᵀ**
R2 = R2 - 3×R1
```
[1  2 | 1   0]
[0 -2 | -3  1]
```

**Step 3: Make second pivot = 1**
R2 = R2 ÷ (-2)
```
[1  2 | 1    0]
[0  1 | 1.5 -0.5]
```

**Step 4: Eliminate above pivot**
R1 = R1 - 2×R2
```
[1  0 | -2   1]
[0  1 | 1.5 -0.5]
```

**Result:**
```
A⁻¹ = [-2    1  ]
      [1.5  -0.5]
```

**Verify:** A × A⁻¹ = I ✓

---

## 📍 Part 13: Particular and General Solutions ⭐⭐⭐ VERY IMPORTANT

### The Big Picture:
For system Ax = b:
```
General Solution = Particular Solution + Homogeneous Solution
       x         =        xₚ          +         xₕ
```

Where:
- **xₚ** = Any ONE solution to Ax = b
- **xₕ** = ALL solutions to Ax = 0

### Algorithm to Find Solutions:

**Step 1:** Convert [A | b] to RREF
**Step 2:** Identify pivot columns and free variables
**Step 3:** Find particular solution (set free variables = 0)
**Step 4:** Find homogeneous solutions (one for each free variable)
**Step 5:** Combine: x = xₚ + λ₁x₁ + λ₂x₂ + ...

### Worked Example (from EC3 Q5-10):

**Solve:**
```
[1  0  8  -4] [x₁]   [42]
[0  1  12  2] [x₂] = [8]
              [x₃]
              [x₄]
```

**Step 1: Identify pivots and free variables**
- Pivot columns: 1, 2 (columns with leading 1s)
- Free variables: x₃, x₄ (non-pivot columns)

**Step 2: Find Particular Solution (set x₃ = 0, x₄ = 0)**
```
From row 1: x₁ + 0 + 0 - 0 = 42  →  x₁ = 42
From row 2: x₂ + 0 + 0 = 8      →  x₂ = 8

xₚ = [42, 8, 0, 0]ᵀ
```

**Step 3: Find Homogeneous Solutions (Ax = 0)**

For x₃ = 1, x₄ = 0:
```
From row 1: x₁ + 8(1) - 4(0) = 0  →  x₁ = -8
From row 2: x₂ + 12(1) + 2(0) = 0 →  x₂ = -12

x₁ = [-8, -12, 1, 0]ᵀ
```

For x₃ = 0, x₄ = 1:
```
From row 1: x₁ + 8(0) - 4(1) = 0  →  x₁ = 4
From row 2: x₂ + 12(0) + 2(1) = 0 →  x₂ = -2

x₂ = [4, -2, 0, 1]ᵀ
```

**Step 4: General Solution**
```
x = [42]     [-8]      [4]
    [8]  + λ₁[-12] + λ₂[-2]    where λ₁, λ₂ ∈ ℝ
    [0]      [1]       [0]
    [0]      [0]       [1]
```

---

## 📍 Part 14: Why Only 0, 1, or ∞ Solutions? ⭐ THEORY QUESTION

### Exam Question (EC3 Q5-7):
> Why can a linear system Ax = b NOT have exactly 3 solutions?

### Answer:

**Proof by contradiction:**

Assume system has at least 2 different solutions: x₁ and x₂

Then:
- Ax₁ = b
- Ax₂ = b

Consider: x₃ = x₁ + t(x₂ - x₁) for any t ∈ ℝ

```
Ax₃ = A[x₁ + t(x₂ - x₁)]
    = Ax₁ + t(Ax₂ - Ax₁)
    = b + t(b - b)
    = b + t(0)
    = b
```

So x₃ is ALSO a solution for ANY value of t!

**Conclusion:** If there are 2 solutions, there are infinitely many.
Therefore, only 0, 1, or ∞ solutions are possible.

---

## 📍 Part 15: Geometric Interpretation

### In 2D (Two Variables):
Each equation = A LINE

| Situation | Lines | Solutions |
|-----------|-------|-----------|
| Intersect at one point | × | 1 (unique) |
| Same line (overlap) | ═ | ∞ (infinite) |
| Parallel lines | ∥ | 0 (none) |

### In 3D (Three Variables):
Each equation = A PLANE

| Situation | Solutions |
|-----------|-----------|
| 3 planes meet at ONE point | 1 (unique) |
| 3 planes meet along a LINE | ∞ (infinite) |
| 3 planes form a TRIANGLE (no common point) | 0 (none) |
| 2 planes parallel | 0 (none) |

---

## 📍 Part 16: Exam-Style Practice Problems

### Problem 1: Solve System (EC2 Style)
**Find all solutions:**
```
x₁ + 7x₃ + 14x₄ = 40
3x₁ + 4x₂ + 2x₃ + 5x₄ = 6
```

<details>
<summary>Click for Solution</summary>

**Step 1: Augmented Matrix**
```
[1  0  7   14 | 40]
[3  4  2   5  | 6]
```

**Step 2: R2 = R2 - 3R1**
```
[1  0  7   14  | 40]
[0  4  -19 -37 | -114]
```

**Step 3: R2 = R2 ÷ 4**
```
[1  0  7      14     | 40]
[0  1  -19/4  -37/4  | -114/4]
```

**Pivots:** Columns 1, 2
**Free variables:** x₃, x₄

**Particular solution (x₃=0, x₄=0):**
x₁ = 40, x₂ = -28.5, x₃ = 0, x₄ = 0

**General solution:**
```
x = [40]      [-7]       [-14]
    [-28.5] + λ₁[19/4] + λ₂[37/4]
    [0]        [1]        [0]
    [0]        [0]        [1]
```
</details>

---

### Problem 2: Find Inverse (If Exists)
```
A = [1  2  3]
    [0  1  4]
    [5  6  0]
```

<details>
<summary>Click for Solution</summary>

**Step 1: [A | I]**
```
[1  2  3 | 1  0  0]
[0  1  4 | 0  1  0]
[5  6  0 | 0  0  1]
```

**Step 2: R3 = R3 - 5R1**
```
[1  2  3  | 1   0  0]
[0  1  4  | 0   1  0]
[0  -4 -15| -5  0  1]
```

**Step 3: R3 = R3 + 4R2**
```
[1  2  3 | 1   0  0]
[0  1  4 | 0   1  0]
[0  0  1 | -5  4  1]
```

**Step 4: Back-substitute (eliminate above pivots)**
```
R2 = R2 - 4R3:  [0  1  0 | 20  -15  -4]
R1 = R1 - 3R3:  [1  2  0 | 16  -12  -3]
R1 = R1 - 2R2:  [1  0  0 | -24  18   5]
```

**Result:**
```
A⁻¹ = [-24   18   5]
      [20   -15  -4]
      [-5    4   1]
```
</details>

---

### Problem 3: Theory Question
**True or False with justification:**
> "If AB = I, then B is the inverse of A"

<details>
<summary>Click for Solution</summary>

**Answer: Only TRUE if A is SQUARE!**

If A is m×n and B is n×m:
- AB = Iₘ (m×m identity)
- But BA might not equal Iₙ

For NON-SQUARE matrices:
- AB = I does NOT imply BA = I
- So B is NOT the inverse of A

For SQUARE matrices (n×n):
- If AB = I, then B = A⁻¹ ✓
</details>

---

## 📍 Part 17: Quick Formulas & Cheat Sheet

### Matrix Operations:
```
(AB)C = A(BC)           ← Associative
A(B+C) = AB + AC        ← Distributive
AI = IA = A             ← Identity property
```

### Inverse Properties:
```
(A⁻¹)⁻¹ = A
(AB)⁻¹ = B⁻¹A⁻¹         ← Order reverses!
(Aᵀ)⁻¹ = (A⁻¹)ᵀ
det(A⁻¹) = 1/det(A)
```

### Transpose Properties:
```
(Aᵀ)ᵀ = A
(A + B)ᵀ = Aᵀ + Bᵀ
(AB)ᵀ = BᵀAᵀ            ← Order reverses!
(λA)ᵀ = λAᵀ
```

### 2×2 Inverse Formula:
```
A = [a  b]     A⁻¹ = 1/(ad-bc) × [d  -b]
    [c  d]                       [-c  a]

Exists only if det = ad - bc ≠ 0
```

### Row Echelon Form (REF):
1. Zero rows at bottom
2. Leading entry (pivot) to right of pivot above
3. Staircase pattern

### Reduced Row Echelon Form (RREF):
1. All REF conditions +
2. All pivots = 1
3. Pivot is ONLY non-zero in its column

---

## 📍 Part 18: Common Exam Mistakes to Avoid

| Mistake | Correct Approach |
|---------|------------------|
| (AB)⁻¹ = A⁻¹B⁻¹ | (AB)⁻¹ = B⁻¹A⁻¹ (order reverses!) |
| (A+B)⁻¹ = A⁻¹+B⁻¹ | NO such formula exists! |
| AB = BA | Matrix multiplication NOT commutative! |
| A×B possible always | Only if cols(A) = rows(B) |
| Forgetting free variables | Always check for non-pivot columns |

---

## ✅ Module 1 Exam Preparation Checklist

- [ ] Can solve Ax = b using Gaussian elimination
- [ ] Can identify REF and RREF
- [ ] Can find pivot and free variables
- [ ] Can write particular + general solution
- [ ] Can find inverse using [A|I] → [I|A⁻¹]
- [ ] Know all inverse/transpose properties
- [ ] Can prove (AB)⁻¹ = B⁻¹A⁻¹
- [ ] Can explain why only 0, 1, or ∞ solutions
- [ ] Know 2×2 inverse formula
- [ ] Understand geometric interpretation

---

*📅 Created for BITS MTech WLP - AI/ML Program*
*Course: AIML ZC416 - Mathematical Foundations for Machine Learning*
*Good luck with your Module 1 exam! 🎓*

