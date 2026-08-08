# 📘 Linear Algebra - Module 1: Complete Beginner Notes

## 🎯 What is Linear Algebra?

**Simple Definition:** Linear Algebra is the math of **arrows (vectors)** and **boxes of numbers (matrices)**.

### Real-Life Analogy:
Think of a recipe:
- **Vectors** = List of ingredients (2 eggs, 3 cups flour, 1 cup sugar)
- **Matrix** = Multiple recipes organized in a table
- **Operations** = Combining or scaling recipes

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

## 📍 Part 6: Matrix Inverse (A⁻¹)

### What is an Inverse?
The inverse of matrix A is another matrix that when multiplied gives Identity.

```
A × A⁻¹ = I  (Identity Matrix)
```

**Real-Life Analogy:**
- Inverse is like an "UNDO" button
- 5 × (1/5) = 1  →  Similarly, A × A⁻¹ = I

### When Does Inverse Exist?
Only for **square matrices** where **determinant ≠ 0**

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

### ⚠️ Key Properties:
```
(A⁻¹)⁻¹ = A
(AB)⁻¹ = B⁻¹ × A⁻¹  ← Order reverses!
(Aᵀ)ᵀ = A
(AB)ᵀ = Bᵀ × Aᵀ     ← Order reverses!
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

*📅 Created for BITS MTech WLP - AI/ML Program*
*Good luck with your studies! 🎓*

