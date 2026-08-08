# 📘 Module 2: Vector Spaces - Complete Exam-Ready Notes
## AIML ZC416 - Mathematical Foundations for Machine Learning

**Reference:** T1 (Diesenroth): Sections 2.4, 2.5, 2.6, 2.8, 3.1-3.5

---

## 📅 DAY-WISE STUDY PLAN (Module 2)

### Day 1: Groups & Vector Spaces (2 hours)
| Time | Topic | What to Do |
|------|-------|------------|
| 30 min | Part 1: Groups | Understand 4 properties |
| 45 min | Part 2: Vector Spaces | Learn definition + examples |
| 30 min | Part 3: Vector Subspaces | Closure property check |
| 15 min | Practice | Prove/disprove subspace problems |

### Day 2: Linear Independence (2.5 hours)
| Time | Topic | What to Do |
|------|-------|------------|
| 30 min | Part 4: Linear Combination | Basic concept |
| 45 min | Part 5: Linear Independence | Definition + testing |
| 45 min | Part 6: Using Gaussian Elimination | Pivot column method |
| 30 min | Practice | Check independence of vectors |

### Day 3: Basis & Dimension (2 hours)
| Time | Topic | What to Do |
|------|-------|------------|
| 45 min | Part 7: Span & Generating Set | Understanding span |
| 45 min | Part 8: Basis | Finding basis using RREF |
| 30 min | Part 9: Dimension | dim(V), properties |
| **Practice** | EC2 Q2b, Q2c style problems | Solve completely |

### Day 4: Revision & Exam Practice (2 hours)
| Time | Topic | What to Do |
|------|-------|------------|
| 45 min | Part 10: Exam Questions | Solve all practice |
| 30 min | Part 11: Quick Reference | Memorize key points |
| 45 min | EC2 Q2b, Q2c | Solve like real exam |

---

## 📋 Module 2 Topics Checklist

| Topic | Section | Exam Important |
|-------|---------|----------------|
| Groups (Definition & Properties) | Part 1 | ⭐⭐ |
| Vector Spaces | Part 2 | ⭐⭐⭐ |
| Vector Subspaces | Part 3 | ⭐⭐⭐ |
| Linear Combination | Part 4 | ⭐⭐ |
| Linear Independence | Part 5-6 | ⭐⭐⭐ |
| Basis & Span | Part 7-8 | ⭐⭐⭐ |
| Dimension & Rank | Part 9 | ⭐⭐⭐ |

---

## 📍 Part 1: Groups - The Foundation

### What is a Group?
A **Group** is a set G with an operation ⊗ that satisfies 4 properties:

| Property | Meaning | Example with (ℤ, +) |
|----------|---------|---------------------|
| **Closure** | x ⊗ y ∈ G | 3 + 5 = 8 ∈ ℤ ✓ |
| **Associativity** | (x ⊗ y) ⊗ z = x ⊗ (y ⊗ z) | (2+3)+4 = 2+(3+4) ✓ |
| **Identity Element** | ∃e: x ⊗ e = x | 5 + 0 = 5 ✓ |
| **Inverse Element** | ∀x, ∃y: x ⊗ y = e | 5 + (-5) = 0 ✓ |

### Abelian Group:
A group where **x ⊗ y = y ⊗ x** (commutative)

### Examples:

| Set & Operation | Group? | Why? |
|-----------------|--------|------|
| (ℤ, +) | ✅ Abelian Group | All 4 properties + commutative |
| (ℕ₀, +) | ❌ Not a Group | No inverse (can't have -5 in ℕ) |
| (ℤ, ×) | ❌ Not a Group | No inverse for 2 (1/2 ∉ ℤ) |
| (ℝ\{0}, ×) | ✅ Abelian Group | All properties satisfied |

---

## 📍 Part 2: Vector Spaces ⭐⭐⭐ VERY IMPORTANT

### Definition:
A **Vector Space** V = (V, +, ·) is a set with two operations:
- **Inner operation (+):** V × V → V (vector addition)
- **Outer operation (·):** ℝ × V → V (scalar multiplication)

### Required Properties:

**For Inner Operation (+):**
```
(V, +) must be an Abelian Group:
1. Closure:      x + y ∈ V
2. Associativity: (x + y) + z = x + (y + z)
3. Identity:      x + 0 = x (zero vector)
4. Inverse:       x + (-x) = 0
5. Commutative:   x + y = y + x
```

**For Outer Operation (·):**
```
1. Distributivity:  λ·(x + y) = λ·x + λ·y
                    (λ + ψ)·x = λ·x + ψ·x

2. Associativity:   λ·(ψ·x) = (λψ)·x

3. Identity:        1·x = x
```

### Common Vector Spaces:

| Vector Space | Elements | Dimension |
|--------------|----------|-----------|
| ℝⁿ | Column vectors of n real numbers | n |
| ℝᵐˣⁿ | m×n matrices | m×n |
| Polynomials of degree ≤ n | a₀ + a₁x + ... + aₙxⁿ | n+1 |

---

## 📍 Part 3: Vector Subspaces ⭐⭐⭐ EXAM IMPORTANT

### Definition:
U ⊆ V is a **subspace** of V if U itself is a vector space under the same operations.

### How to Prove U is a Subspace:
Check only **3 things**:

```
1. U ≠ ∅ (non-empty, usually check if 0 ∈ U)
2. Closure under addition: ∀x,y ∈ U → x + y ∈ U
3. Closure under scalar multiplication: ∀λ ∈ ℝ, ∀x ∈ U → λx ∈ U
```

### ⚠️ Quick Check: Does 0 belong to U?
If **0 ∉ U**, then **U is NOT a subspace!**

### Examples:

| Subset U of ℝ² | Subspace? | Reason |
|----------------|-----------|--------|
| y-axis: {(0, y)} | ✅ Yes | 0 ∈ U, closed under +, · |
| Line x = 1: {(1, y)} | ❌ No | 0 = (0,0) ∉ U |
| Square [-1,1] × [-1,1] | ❌ No | 2·(1,1) = (2,2) ∉ U |
| Line through origin: y = 2x | ✅ Yes | 0 ∈ U, closed |

### ⭐ EXAM QUESTION (EC2 Q2b):
> Let V = ℝ² with operations x⊕y = [x₁+y₁+1, x₂+y₂+1]ᵀ and k·[x₁,x₂]ᵀ = [kx₁, kx₂]ᵀ. 
> Prove or disprove V is a vector space.

**Solution:**
Check if identity element exists for ⊕:
- Need e such that x ⊕ e = x
- [x₁+e₁+1, x₂+e₂+1] = [x₁, x₂]
- This means e₁+1 = 0, e₂+1 = 0
- So e = [-1, -1]ᵀ

Check identity for scalar multiplication:
- 1·x should equal x
- 1·[x₁, x₂]ᵀ = [x₁, x₂]ᵀ ✓

Check: 0·x should give identity element
- 0·[x₁, x₂]ᵀ = [0, 0]ᵀ ≠ [-1, -1]ᵀ

**Conclusion: NOT a vector space!** (0·x ≠ identity element)

---

## 📍 Part 4: Linear Combination

### Definition:
A vector **v** is a **linear combination** of vectors x₁, x₂, ..., xₖ if:

```
v = λ₁x₁ + λ₂x₂ + ... + λₖxₖ

where λ₁, λ₂, ..., λₖ ∈ ℝ (scalars/coefficients)
```

### Example:
```
v = [7]    x₁ = [1]    x₂ = [2]
    [8]         [2]         [1]

Is v a linear combination of x₁ and x₂?

v = λ₁x₁ + λ₂x₂
[7]   [λ₁]     [2λ₂]   [λ₁ + 2λ₂]
[8] = [2λ₁] + [λ₂]  = [2λ₁ + λ₂]

Solving: λ₁ + 2λ₂ = 7
         2λ₁ + λ₂ = 8

Solution: λ₁ = 3, λ₂ = 2

So v = 3x₁ + 2x₂ ✓
```

---

## 📍 Part 5: Linear Independence ⭐⭐⭐ MOST IMPORTANT

### Definition:
Vectors x₁, x₂, ..., xₖ are **linearly independent** if:

```
λ₁x₁ + λ₂x₂ + ... + λₖxₖ = 0

ONLY when λ₁ = λ₂ = ... = λₖ = 0
```

### Linearly Dependent:
If there exists a **non-trivial** combination (at least one λᵢ ≠ 0) that gives **0**.

### Intuition:

| Type | Meaning |
|------|---------|
| **Independent** | No vector can be written as combination of others |
| **Dependent** | At least one vector is "redundant" |

### Quick Checks:

| Condition | Result |
|-----------|--------|
| One vector is **0** | Dependent (0 = 1·0 + 0·others) |
| Two vectors are **parallel** | Dependent |
| More vectors than dimensions | Dependent (e.g., 4 vectors in ℝ³) |

---

## 📍 Part 6: Testing Linear Independence (Gaussian Elimination) ⭐⭐⭐

### Algorithm:
1. Put vectors as **columns** of a matrix
2. Convert to **Row Echelon Form (REF)**
3. Count **pivot columns**

### Rules:
```
- Pivot columns → Linearly Independent vectors
- Non-pivot columns → Dependent on pivot columns to their left
- All columns are pivot columns → ALL vectors are independent
```

### Example 1:
Check if vectors are linearly independent:
```
x₁ = [1]    x₂ = [2]    x₃ = [3]
     [2]         [4]         [4]
```

**Step 1: Form matrix (vectors as columns)**
```
A = [1  2  3]
    [2  4  4]
```

**Step 2: Gaussian Elimination**
```
R2 = R2 - 2R1:
[1  2   3]
[0  0  -2]
```

**Step 3: Identify pivots**
- Column 1: Pivot ✓
- Column 2: No pivot (non-pivot column)
- Column 3: Pivot ✓

**Conclusion:**
- x₁ and x₃ are linearly independent
- x₂ is dependent (x₂ = 2·x₁)

### Example 2 (from Lecture):
```
x₁ = [1]     x₂ = [1]     x₃ = [-1]
     [2]          [1]          [-2]
     [-3]         [0]          [1]
     [4]          [2]          [1]
```

**Matrix & REF:**
```
[1   1  -1]      [1  1  -1]
[2   1  -2]  →   [0  1   0]
[-3  0   1]      [0  0   1]
[4   2   1]      [0  0   0]
```

All 3 columns are pivot columns → **x₁, x₂, x₃ are linearly independent** ✓

---

## 📍 Part 7: Span and Generating Set

### Span Definition:
The **span** of vectors {x₁, x₂, ..., xₖ} is the set of ALL possible linear combinations:

```
span{x₁, x₂, ..., xₖ} = {v : v = λ₁x₁ + λ₂x₂ + ... + λₖxₖ, λᵢ ∈ ℝ}
```

### Generating Set:
If span{A} = V, then A is a **generating set** of V.

### Examples:
```
span{[1], [0]} = ℝ²  (generates entire 2D plane)
     {[0], [1]}

span{[1]} = {[λ] : λ ∈ ℝ}  (just y-axis)
     {[0]}    {[0]}
```

---

## 📍 Part 8: Basis ⭐⭐⭐ VERY IMPORTANT

### Definition:
A **basis** B of vector space V is a set that is:
1. **Linearly independent**
2. **Spans V** (generating set)

### Equivalent Characterizations:
```
B is a basis of V ⟺
- B is a MINIMAL generating set
- B is a MAXIMAL linearly independent set
- Every v ∈ V has a UNIQUE representation as linear combination of B
```

### Standard/Canonical Basis:
```
For ℝ²: e₁ = [1], e₂ = [0]
             [0]      [1]

For ℝ³: e₁ = [1], e₂ = [0], e₃ = [0]
             [0]      [1]      [0]
             [0]      [0]      [1]
```

### ⚠️ Basis is NOT Unique!
Different bases for ℝ³:
```
Canonical:    {[1,0,0]ᵀ, [0,1,0]ᵀ, [0,0,1]ᵀ}
Alternative:  {[1,0,0]ᵀ, [1,1,0]ᵀ, [1,1,1]ᵀ}
```

### Finding Basis of span{x₁, ..., xₘ}:

**Algorithm:**
1. Put vectors as columns of matrix A
2. Find REF of A
3. **Pivot columns of ORIGINAL matrix** form the basis

### Example:
Find basis of U = span{x₁, x₂, x₃, x₄} where:
```
x₁ = [1,2,-1,-1,-1]ᵀ
x₂ = [2,-1,1,2,-2]ᵀ
x₃ = [3,-4,3,5,-3]ᵀ
x₄ = [-1,8,-5,-6,1]ᵀ
```

After REF: Columns 1, 2, 3 are pivot columns
**Basis = {x₁, x₂, x₃}**

---

## 📍 Part 9: Dimension and Rank

### Dimension:
**dim(V)** = Number of vectors in any basis of V

```
dim(ℝⁿ) = n
dim(ℝᵐˣⁿ) = m × n
```

### Properties:
```
If U ⊆ V:  dim(U) ≤ dim(V)
If dim(U) = dim(V) and U ⊆ V:  U = V
```

### Rank of a Matrix:
**rank(A)** = Number of pivot columns in REF of A
            = Dimension of column space of A
            = Number of linearly independent columns

### Key Relationships:
```
For A ∈ ℝᵐˣⁿ:
- rank(A) ≤ min(m, n)
- rank(A) = rank(Aᵀ)
- If rank(A) = n (full column rank): columns are independent
- If rank(A) = m (full row rank): rows are independent
```

---

## 📍 Part 10: Gram-Schmidt Orthonormalization ⭐⭐⭐ MUST KNOW FOR EXAM

### Why Gram-Schmidt?
- Converts ANY basis into an **orthonormal basis**
- **Orthogonal** = vectors are perpendicular (dot product = 0)
- **Normal** = each vector has length 1

### Key Formulas You Need:

**1. Dot Product (Inner Product):**
```
a · b = a₁b₁ + a₂b₂ + ... + aₙbₙ
```

**2. Vector Length (Norm):**
```
||a|| = √(a · a) = √(a₁² + a₂² + ... + aₙ²)
```

**3. Projection of b onto a:**
```
proj_a(b) = (b · a / a · a) × a

Or if a is already unit vector:
proj_a(b) = (b · a) × a
```

**4. Normalize a vector:**
```
unit vector = a / ||a||
```

---

### The Gram-Schmidt Algorithm (Step-by-Step):

**Input:** Basis {b₁, b₂, ..., bₖ}
**Output:** Orthonormal Basis {c₁, c₂, ..., cₖ}

```
STEP 1: First vector (just normalize)
─────────────────────────────────────
u₁ = b₁
c₁ = u₁ / ||u₁||

STEP 2: Second vector (subtract projection, then normalize)
─────────────────────────────────────────────────────────────
u₂ = b₂ - (b₂ · c₁)c₁        ← Remove component along c₁
c₂ = u₂ / ||u₂||              ← Normalize

STEP 3: Third vector (subtract projections onto c₁ AND c₂)
───────────────────────────────────────────────────────────
u₃ = b₃ - (b₃ · c₁)c₁ - (b₃ · c₂)c₂
c₃ = u₃ / ||u₃||

GENERAL FORMULA for kth vector:
────────────────────────────────
uₖ = bₖ - Σᵢ₌₁ᵏ⁻¹ (bₖ · cᵢ)cᵢ
cₖ = uₖ / ||uₖ||
```

---

### Visual Intuition:

```
Original vectors:              After Gram-Schmidt:
      b₂                            c₂
      ↗                              ↑
     /                               |
    /                                |
   /_____ b₁                    ─────┼───── c₁
                                     |

b₁, b₂ at some angle         c₁, c₂ perpendicular (90°)
                              and both have length 1
```

**What's happening:**
1. Keep b₁ direction, just make it length 1 → c₁
2. Take b₂, remove the part that's "along c₁" → get perpendicular part → normalize → c₂

---

### Worked Example 1: ℝ² (Simple Case)

**Given:** b₁ = [3, 0]ᵀ, b₂ = [2, 2]ᵀ

**Find orthonormal basis:**

**Step 1: Normalize b₁**
```
||b₁|| = √(9 + 0) = 3
c₁ = [3/3, 0/3]ᵀ = [1, 0]ᵀ
```

**Step 2: Make b₂ orthogonal to c₁**
```
b₂ · c₁ = (2)(1) + (2)(0) = 2

u₂ = b₂ - (b₂ · c₁)c₁
   = [2, 2]ᵀ - 2[1, 0]ᵀ
   = [2, 2]ᵀ - [2, 0]ᵀ
   = [0, 2]ᵀ
```

**Step 3: Normalize u₂**
```
||u₂|| = √(0 + 4) = 2
c₂ = [0/2, 2/2]ᵀ = [0, 1]ᵀ
```

**Answer:** c₁ = [1, 0]ᵀ, c₂ = [0, 1]ᵀ

**Verify orthonormal:**
- c₁ · c₂ = (1)(0) + (0)(1) = 0 ✓ (orthogonal)
- ||c₁|| = 1 ✓, ||c₂|| = 1 ✓ (normal)

---

### Worked Example 2: EC2 Q2c (Actual Exam Question)

**Given:** b₁ = [1, 1, 1]ᵀ, b₂ = [-1, 2, 0]ᵀ

**Find orthonormal basis {c₁, c₂}:**

**Step 1: Normalize b₁**
```
||b₁|| = √(1² + 1² + 1²) = √3

c₁ = [1/√3, 1/√3, 1/√3]ᵀ
```

**Step 2: Find component of b₂ along c₁**
```
b₂ · c₁ = (-1)(1/√3) + (2)(1/√3) + (0)(1/√3)
        = -1/√3 + 2/√3 + 0
        = 1/√3
```

**Step 3: Subtract projection**
```
(b₂ · c₁)c₁ = (1/√3) × [1/√3, 1/√3, 1/√3]ᵀ
            = [1/3, 1/3, 1/3]ᵀ

u₂ = b₂ - (b₂ · c₁)c₁
   = [-1, 2, 0]ᵀ - [1/3, 1/3, 1/3]ᵀ
   = [-1 - 1/3, 2 - 1/3, 0 - 1/3]ᵀ
   = [-4/3, 5/3, -1/3]ᵀ
```

**Step 4: Normalize u₂**
```
||u₂||² = (-4/3)² + (5/3)² + (-1/3)²
        = 16/9 + 25/9 + 1/9
        = 42/9

||u₂|| = √(42/9) = √42/3

c₂ = u₂ / ||u₂||
   = (3/√42) × [-4/3, 5/3, -1/3]ᵀ
   = [-4/√42, 5/√42, -1/√42]ᵀ
```

**Final Answer:**
```
c₁ = [1/√3, 1/√3, 1/√3]ᵀ ≈ [0.577, 0.577, 0.577]ᵀ

c₂ = [-4/√42, 5/√42, -1/√42]ᵀ ≈ [-0.617, 0.772, -0.154]ᵀ
```

**Verify:**
```
c₁ · c₂ = (1/√3)(-4/√42) + (1/√3)(5/√42) + (1/√3)(-1/√42)
        = (1/√3)(1/√42)(-4 + 5 - 1)
        = (1/√3)(1/√42)(0)
        = 0 ✓ (orthogonal!)

||c₁|| = √(1/3 + 1/3 + 1/3) = 1 ✓
||c₂|| = √(16/42 + 25/42 + 1/42) = √(42/42) = 1 ✓
```

---

### Worked Example 3: ℝ³ with 3 vectors

**Given:** b₁ = [1, 1, 0]ᵀ, b₂ = [1, 0, 1]ᵀ, b₃ = [0, 1, 1]ᵀ

**Step 1: c₁**
```
||b₁|| = √(1 + 1 + 0) = √2
c₁ = [1/√2, 1/√2, 0]ᵀ
```

**Step 2: c₂**
```
b₂ · c₁ = (1)(1/√2) + (0)(1/√2) + (1)(0) = 1/√2

u₂ = b₂ - (b₂ · c₁)c₁
   = [1, 0, 1]ᵀ - (1/√2)[1/√2, 1/√2, 0]ᵀ
   = [1, 0, 1]ᵀ - [1/2, 1/2, 0]ᵀ
   = [1/2, -1/2, 1]ᵀ

||u₂|| = √(1/4 + 1/4 + 1) = √(3/2) = √6/2

c₂ = (2/√6)[1/2, -1/2, 1]ᵀ = [1/√6, -1/√6, 2/√6]ᵀ
```

**Step 3: c₃**
```
b₃ · c₁ = (0)(1/√2) + (1)(1/√2) + (1)(0) = 1/√2
b₃ · c₂ = (0)(1/√6) + (1)(-1/√6) + (1)(2/√6) = 1/√6

u₃ = b₃ - (b₃ · c₁)c₁ - (b₃ · c₂)c₂
   = [0, 1, 1]ᵀ - (1/√2)[1/√2, 1/√2, 0]ᵀ - (1/√6)[1/√6, -1/√6, 2/√6]ᵀ
   = [0, 1, 1]ᵀ - [1/2, 1/2, 0]ᵀ - [1/6, -1/6, 2/6]ᵀ
   = [-1/2 - 1/6, 1 - 1/2 + 1/6, 1 - 1/3]ᵀ
   = [-2/3, 2/3, 2/3]ᵀ

||u₃|| = √(4/9 + 4/9 + 4/9) = √(12/9) = 2√3/3

c₃ = (3/2√3)[-2/3, 2/3, 2/3]ᵀ = [-1/√3, 1/√3, 1/√3]ᵀ
```

**Final Answer:**
```
c₁ = [1/√2, 1/√2, 0]ᵀ
c₂ = [1/√6, -1/√6, 2/√6]ᵀ
c₃ = [-1/√3, 1/√3, 1/√3]ᵀ
```

---

### Common Mistakes to Avoid:

| Mistake | Correct Way |
|---------|-------------|
| Forgetting to normalize | Always divide by ||u|| at end |
| Using b₁ instead of c₁ in projection | Must use already orthonormalized vectors |
| Sign errors in subtraction | Double-check each component |
| Wrong dot product formula | a·b = Σaᵢbᵢ (multiply corresponding, then add) |
| Forgetting to verify | Always check c₁·c₂ = 0 and ||cᵢ|| = 1 |

---

### Quick Reference Card for Gram-Schmidt:

```
┌─────────────────────────────────────────────────────┐
│            GRAM-SCHMIDT FORMULA                      │
├─────────────────────────────────────────────────────┤
│                                                      │
│  c₁ = b₁ / ||b₁||                                   │
│                                                      │
│  u₂ = b₂ - (b₂·c₁)c₁                                │
│  c₂ = u₂ / ||u₂||                                   │
│                                                      │
│  u₃ = b₃ - (b₃·c₁)c₁ - (b₃·c₂)c₂                   │
│  c₃ = u₃ / ||u₃||                                   │
│                                                      │
│  VERIFY: cᵢ·cⱼ = 0 (i≠j) and ||cᵢ|| = 1            │
└─────────────────────────────────────────────────────┘
```

---

## 📍 Part 11: More Practice Problems

### Problem 1: Gram-Schmidt in ℝ² (Easy)
> Given: b₁ = [4, 0]ᵀ, b₂ = [3, 3]ᵀ
> Find orthonormal basis.

<details>
<summary>Click for Solution</summary>

**Step 1:**
```
||b₁|| = 4
c₁ = [1, 0]ᵀ
```

**Step 2:**
```
b₂ · c₁ = 3(1) + 3(0) = 3
u₂ = [3, 3]ᵀ - 3[1, 0]ᵀ = [0, 3]ᵀ
||u₂|| = 3
c₂ = [0, 1]ᵀ
```

**Answer:** c₁ = [1, 0]ᵀ, c₂ = [0, 1]ᵀ

</details>

---

### Problem 2: Gram-Schmidt in ℝ³ (Medium)
> Given: b₁ = [1, 0, 1]ᵀ, b₂ = [1, 1, 0]ᵀ
> Find orthonormal basis.

<details>
<summary>Click for Solution</summary>

**Step 1:**
```
||b₁|| = √(1 + 0 + 1) = √2
c₁ = [1/√2, 0, 1/√2]ᵀ
```

**Step 2:**
```
b₂ · c₁ = (1)(1/√2) + (1)(0) + (0)(1/√2) = 1/√2

u₂ = [1, 1, 0]ᵀ - (1/√2)[1/√2, 0, 1/√2]ᵀ
   = [1, 1, 0]ᵀ - [1/2, 0, 1/2]ᵀ
   = [1/2, 1, -1/2]ᵀ

||u₂|| = √(1/4 + 1 + 1/4) = √(3/2) = √6/2

c₂ = (2/√6)[1/2, 1, -1/2]ᵀ = [1/√6, 2/√6, -1/√6]ᵀ
```

**Answer:**
- c₁ = [1/√2, 0, 1/√2]ᵀ
- c₂ = [1/√6, 2/√6, -1/√6]ᵀ

</details>

---

### Problem 3: Check Linear Independence (Multiple Sets)

> Which of these sets are linearly independent?

**Set A:** {[1,2,3]ᵀ, [4,5,6]ᵀ, [7,8,9]ᵀ}

**Set B:** {[1,0,0]ᵀ, [1,1,0]ᵀ, [1,1,1]ᵀ}

**Set C:** {[1,2]ᵀ, [2,4]ᵀ}

<details>
<summary>Click for Solution</summary>

**Set A:**
```
[1  4  7]     [1  4   7]     [1  4   7]
[2  5  8] →   [0 -3  -6] →   [0 -3  -6]
[3  6  9]     [0 -6 -12]     [0  0   0]

Only 2 pivots → DEPENDENT
(3rd vector = 2×2nd - 1×1st)
```

**Set B:**
```
[1  1  1]     [1  1  1]     [1  1  1]
[0  1  1] →   [0  1  1] →   [0  1  1]
[0  0  1]     [0  0  1]     [0  0  1]

3 pivots → INDEPENDENT ✓
```

**Set C:**
```
[1  2]     [1  2]
[2  4] →   [0  0]

Only 1 pivot → DEPENDENT
([2,4]ᵀ = 2×[1,2]ᵀ, parallel vectors)
```

**Answers:** A: Dependent, B: Independent, C: Dependent

</details>

---

### Problem 4: Prove Subspace (Theory)
> Prove that W = {[x, y, z]ᵀ : x + y + z = 0} is a subspace of ℝ³.

<details>
<summary>Click for Solution</summary>

**Check 1: 0 ∈ W?**
```
[0, 0, 0]ᵀ: 0 + 0 + 0 = 0 ✓
So 0 ∈ W
```

**Check 2: Closure under addition?**
```
Let u = [x₁, y₁, z₁]ᵀ ∈ W (so x₁ + y₁ + z₁ = 0)
Let v = [x₂, y₂, z₂]ᵀ ∈ W (so x₂ + y₂ + z₂ = 0)

u + v = [x₁+x₂, y₁+y₂, z₁+z₂]ᵀ

Check: (x₁+x₂) + (y₁+y₂) + (z₁+z₂)
     = (x₁+y₁+z₁) + (x₂+y₂+z₂)
     = 0 + 0 = 0 ✓

So u + v ∈ W
```

**Check 3: Closure under scalar multiplication?**
```
Let u = [x, y, z]ᵀ ∈ W (so x + y + z = 0)
Let λ ∈ ℝ

λu = [λx, λy, λz]ᵀ

Check: λx + λy + λz = λ(x + y + z) = λ(0) = 0 ✓

So λu ∈ W
```

**Conclusion:** W is a subspace of ℝ³ ✓

</details>

---

### Problem 5: Disprove Subspace
> Is W = {[x, y]ᵀ : xy ≥ 0} a subspace of ℝ²?

<details>
<summary>Click for Solution</summary>

**Check 1: 0 ∈ W?**
```
[0, 0]ᵀ: (0)(0) = 0 ≥ 0 ✓
```

**Check 2: Closure under addition?**
```
Let u = [1, 1]ᵀ ∈ W (since 1×1 = 1 ≥ 0) ✓
Let v = [-2, 1]ᵀ ∈ W (since -2×1 = -2... wait!)

Actually [-2, 1]ᵀ: (-2)(1) = -2 < 0, so [-2, 1]ᵀ ∉ W

Let's try: u = [1, 1]ᵀ ∈ W, v = [-1, -1]ᵀ ∈ W (since (-1)(-1) = 1 ≥ 0)

u + v = [0, 0]ᵀ ∈ W ✓

Try: u = [2, 1]ᵀ ∈ W, v = [-1, 2]ᵀ... (-1)(2) = -2 < 0, so v ∉ W

Hmm, let's try scalar multiplication instead.
```

**Check 3: Closure under scalar multiplication?**
```
Let u = [1, -1]ᵀ... (1)(-1) = -1 < 0, so u ∉ W

Let u = [1, 1]ᵀ ∈ W
λ = -1

λu = [-1, -1]ᵀ
(-1)(-1) = 1 ≥ 0 ✓ Still in W

Try: u = [2, 3]ᵀ ∈ W (since 6 ≥ 0)
λ = -1
λu = [-2, -3]ᵀ
(-2)(-3) = 6 ≥ 0 ✓ Still in W

Try: u = [1, 2]ᵀ, v = [-3, 1]ᵀ... (-3)(1) = -3 < 0, so v ∉ W
```

**Better approach - Check addition:**
```
u = [1, 2]ᵀ ∈ W (since 2 ≥ 0)
v = [1, -3]ᵀ... (1)(-3) = -3 < 0, so v ∉ W!

Let's use: u = [2, 0]ᵀ ∈ W, v = [0, 2]ᵀ ∈ W
u + v = [2, 2]ᵀ ∈ W ✓

u = [1, 0]ᵀ ∈ W, v = [-1, 0]ᵀ ∈ W (since -1×0 = 0 ≥ 0)
u + v = [0, 0]ᵀ ∈ W ✓
```

**Actually, the issue is:**
```
u = [1, 1]ᵀ ∈ W (1×1 = 1 ≥ 0) ✓
v = [-2, 2]ᵀ ∈ W (-2×2 = -4 < 0) ✗ NOT in W!

So we need both in W:
u = [1, 2]ᵀ ∈ W (2 ≥ 0) ✓
v = [2, -1]ᵀ... (2)(-1) = -2 < 0, NOT in W

Let me try:
u = [1, 0]ᵀ ∈ W
v = [0, -1]ᵀ ∈ W (0×-1 = 0 ≥ 0) ✓
u + v = [1, -1]ᵀ
(1)(-1) = -1 < 0 ✗ NOT in W!
```

**Conclusion:** W is NOT a subspace!
- u = [1, 0]ᵀ ∈ W
- v = [0, -1]ᵀ ∈ W
- u + v = [1, -1]ᵀ ∉ W (fails closure under addition)

</details>

---

### Problem 6: Find Basis and Dimension
> Find a basis and dimension of W = {[a, b, c, d]ᵀ : a = b + c, d = 0}

<details>
<summary>Click for Solution</summary>

**Express general element:**
```
Any w ∈ W looks like:
w = [b+c, b, c, 0]ᵀ

Let b = s, c = t (free parameters)

w = [s+t, s, t, 0]ᵀ
  = s[1, 1, 0, 0]ᵀ + t[1, 0, 1, 0]ᵀ
```

**Basis:** {[1,1,0,0]ᵀ, [1,0,1,0]ᵀ}

**Check independence:**
```
[1  1]     [1  1]
[1  0] →   [0 -1] → 2 pivots ✓
[0  1]     [0  1]
[0  0]     [0  0]
```

**Dimension:** dim(W) = 2

</details>

---

### Problem 7: EC3 Q5(8) Style - Subspace Check
> Is W = {(x, 2) : x ∈ ℝ} a subspace of ℝ²?

<details>
<summary>Click for Solution</summary>

**Check if 0 ∈ W:**
```
0 = (0, 0)
But all elements in W have y-coordinate = 2
(0, 0) ∉ W since 0 ≠ 2
```

**Conclusion:** W is NOT a subspace (doesn't contain zero vector)

**Alternative check (scalar multiplication):**
```
Take (1, 2) ∈ W
λ = 0
λ(1, 2) = (0, 0) ∉ W

Fails closure under scalar multiplication
```

</details>

---

## 📍 Part 12: Exam-Style Practice Problems

### Problem 1: Prove/Disprove Subspace (EC3 Q5-8 Style)
> Is W = {(x, 2) : x ∈ ℝ} a subspace of V = ℝ²?

<details>
<summary>Click for Solution</summary>

**Check if 0 ∈ W:**
- 0 = (0, 0)
- But all elements of W have y-coordinate = 2
- (0, 0) ∉ W

**Conclusion: W is NOT a subspace** ✗

</details>

---

### Problem 2: Gram-Schmidt Orthonormalization (EC2 Q2c) ⭐⭐⭐
> Let B = {b₁, b₂} be basis of 2D subspace U ⊆ ℝ³ where
> b₁ = [1, 1, 1]ᵀ and b₂ = [-1, 2, 0]ᵀ
> Convert B into orthonormal basis C = {c₁, c₂}

<details>
<summary>Click for Solution</summary>

**Gram-Schmidt Process:**

**Step 1: c₁ = b₁ / ||b₁||**
```
||b₁|| = √(1² + 1² + 1²) = √3

c₁ = [1/√3, 1/√3, 1/√3]ᵀ
```

**Step 2: Make b₂ orthogonal to c₁**
```
u₂ = b₂ - (b₂·c₁)c₁

b₂·c₁ = (-1)(1/√3) + (2)(1/√3) + (0)(1/√3) = 1/√3

u₂ = [-1, 2, 0]ᵀ - (1/√3)[1/√3, 1/√3, 1/√3]ᵀ
   = [-1, 2, 0]ᵀ - [1/3, 1/3, 1/3]ᵀ
   = [-4/3, 5/3, -1/3]ᵀ
```

**Step 3: Normalize u₂**
```
||u₂|| = √(16/9 + 25/9 + 1/9) = √(42/9) = √42/3

c₂ = u₂/||u₂|| = (3/√42)[-4/3, 5/3, -1/3]ᵀ
   = [-4/√42, 5/√42, -1/√42]ᵀ
```

**Answer:**
```
c₁ = [1/√3, 1/√3, 1/√3]ᵀ
c₂ = [-4/√42, 5/√42, -1/√42]ᵀ
```

</details>

---

### Problem 3: Check Linear Independence
> Are these vectors linearly independent?
> x₁ = [1, 0, 2]ᵀ, x₂ = [0, 1, 1]ᵀ, x₃ = [2, 1, 5]ᵀ

<details>
<summary>Click for Solution</summary>

**Form matrix and find REF:**
```
[1  0  2]      [1  0  2]
[0  1  1]  →   [0  1  1]
[2  1  5]      [0  1  1]  (R3 - 2R1)

→ [1  0  2]
  [0  1  1]
  [0  0  0]  (R3 - R2)
```

**Pivot columns:** 1, 2 (only 2 pivots)
**Non-pivot column:** 3

**Conclusion:** x₃ = 2x₁ + x₂, so vectors are **linearly dependent**

</details>

---

## 📍 Part 11: Quick Reference & Formulas

### Subspace Test:
```
U is subspace of V if:
1. 0 ∈ U
2. x, y ∈ U → x + y ∈ U
3. x ∈ U, λ ∈ ℝ → λx ∈ U
```

### Linear Independence Test:
```
Put vectors as columns → REF → Count pivots
All columns pivot → Independent
Some non-pivot → Dependent
```

### Basis Properties:
```
- Linearly independent + Spans V
- Unique representation for every v ∈ V
- dim(V) = |Basis|
```

### Important Facts:
```
- k vectors in ℝⁿ where k > n → Always dependent
- n independent vectors in ℝⁿ → Forms a basis
- Nullspace of A (solutions to Ax=0) is always a subspace
```

---

## ✅ Module 2 Exam Preparation Checklist

- [ ] Can define Group and its 4 properties
- [ ] Can define Vector Space (inner + outer operations)
- [ ] Can prove/disprove if a set is a subspace
- [ ] Can check linear independence using Gaussian elimination
- [ ] Can find basis of span of vectors
- [ ] Can apply Gram-Schmidt orthonormalization
- [ ] Know relationship: rank, dimension, independence
- [ ] Can solve EC2 Q2b, Q2c type problems

---

*📅 Created for BITS MTech WLP - AI/ML Program*
*Course: AIML ZC416 - Mathematical Foundations for Machine Learning*
*Good luck with Module 2! 🎓*

