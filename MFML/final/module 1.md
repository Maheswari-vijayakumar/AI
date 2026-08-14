
# Linear Algebra — Module 1 Complete Study Notes

## Module 1 — Topics Covered

1. Introduction
2. Systems of Linear Equations
3. Matrices
4. Inverse & Transpose
5. Compact Representation
6. Solving Systems
7. Elementary Row Operations
8. Gaussian Elimination
9. Calculating Inverse using Gaussian Elimination

---

# 1. INTRODUCTION TO LINEAR ALGEBRA

## 1.1 What is Linear Algebra?

**Linear Algebra is the study of vectors, matrices, and linear equations.**

It helps us solve problems involving many variables simultaneously.

For example:

[
x+y=5
]

and

[
2x-y=1
]

We want to find values of (x) and (y) that satisfy both equations.

Linear algebra gives us systematic methods to solve this.

### Where is Linear Algebra used?

Linear algebra is extremely important in:

* Machine Learning
* Artificial Intelligence
* Computer Graphics
* Data Science
* Image Processing
* Robotics
* Engineering
* Statistics
* Physics

For example, an image can be represented as a large collection of numbers, and matrices are used to manipulate those numbers.

---

# 1.2 What is a Vector?

A vector is simply an ordered collection of numbers.

For example:

[
\begin{bmatrix}
2\
3
\end{bmatrix}
]

is a 2-dimensional vector.

We can also write it as:

[
\vec{x}=
\begin{bmatrix}
2\
3
\end{bmatrix}
]

Think of it as:

> A vector is a list of numbers arranged in a particular order.

Examples:

[
\begin{bmatrix}
1\
2\
3
\end{bmatrix}
]

[
\begin{bmatrix}
5\
7\
9\
10
\end{bmatrix}
]

---

# 1.3 Idea of Closure

Closure means:

> When we perform an operation on things belonging to a set, the result must also belong to that set.

Let's understand with a simple example.

Suppose:

[
S={1,2,3}
]

Take two numbers from (S):

[
1+2=3
]

3 is also inside (S).

So addition is **closed** for this particular example.

But:

[
2+3=5
]

5 is NOT inside (S).

Therefore, (S) is **not closed under addition**.

### Easy way to remember

**Closure = "The answer stays inside the group."**

---

## Vector example

Suppose:

[
U={(x,y):y\geq0}
]

Take:

[
(2,3),(4,5)
]

Add them:

[
(2,3)+(4,5)=(6,8)
]

Since:

[
8\geq0
]

the result remains in (U).

Therefore, (U) is closed under addition.

---

# 2. SYSTEMS OF LINEAR EQUATIONS

## 2.1 What is an Equation?

An equation says:

> Two mathematical expressions are equal.

Example:

[
x+2=5
]

We solve:

[
x=3
]

---

# 2.2 What is a Linear Equation?

A linear equation is an equation where variables have power **1**.

Examples:

[
2x+3y=10
]

[
x-y+2z=5
]

[
4x_1+3x_2-x_3=7
]

These are linear.

### Not linear

[
x^2+y=5
]

because (x) has power 2.

Also:

[
xy=5
]

is not linear because variables are multiplied together.

---

# 2.3 System of Linear Equations

A system means:

> Multiple equations that must be satisfied at the same time.

Example:

[
x+y=5
]

[
x-y=1
]

We need values of (x) and (y) that satisfy **both equations**.

Adding them:

[
2x=6
]

Therefore:

[
x=3
]

Then:

[
3+y=5
]

[
y=2
]

So the solution is:

[
\boxed{(x,y)=(3,2)}
]

---

# 2.4 Three Types of Solutions

A system of linear equations can have:

### 1. Unique solution

Exactly **one solution**.

Example:

[
x+y=5
]

[
x-y=1
]

Solution:

[
x=3,\quad y=2
]

Therefore:

[
\boxed{\text{Unique solution}}
]

---

### 2. No solution

There is **no value** that satisfies all equations.

Example:

[
x+y=5
]

[
x+y=8
]

The left side is the same, but the right sides are different.

Impossible.

Therefore:

[
\boxed{\text{No solution}}
]

---

### 3. Infinite solutions

The equations represent essentially the same equation.

Example:

[
x+y=5
]

[
2x+2y=10
]

The second equation is simply:

[
2(x+y)=2(5)
]

So both equations represent the same line.

There are infinitely many solutions.

For example:

[
(0,5)
]

[
(1,4)
]

[
(2,3)
]

[
(3,2)
]

etc.

Therefore:

[
\boxed{\text{Infinitely many solutions}}
]

---

# 2.5 Geometrical Interpretation

This is very important.

## In 2D

A linear equation such as:

[
x+y=5
]

represents a **line**.

Two equations represent two lines.

### Case 1: Unique solution

Two lines intersect at exactly one point.

```text
\ /
 \/
 /\
/  \
```

The intersection point is the solution.

---

### Case 2: No solution

Two parallel lines never meet.

```text
────────────

────────────
```

Therefore:

[
\boxed{\text{No solution}}
]

---

### Case 3: Infinite solutions

Both equations represent the same line.

```text
────────────
────────────
```

They overlap completely.

Therefore, every point on the line is a solution.

---

# 2.6 In 3D

In 3 dimensions:

* A linear equation represents a **plane**
* Multiple equations represent multiple planes

They can:

* intersect at one point → unique solution
* have no common intersection → no solution
* share a line → infinitely many solutions

---

# 2.7 Pivot Variables vs Free Variables

This is one of the most important concepts.

Suppose after elimination we get:

[
x+2y+3z=5
]

There is only one equation but three variables.

We can choose (y) and (z) freely.

So:

* (x) → pivot variable
* (y) → free variable
* (z) → free variable

For example:

[
x=5-2y-3z
]

Let:

[
y=s
]

[
z=t
]

Then:

[
x=5-2s-3t
]

Therefore:

[
\boxed{
x=5-2s-3t,\quad y=s,\quad z=t
}
]

The free variables create infinitely many solutions.

### Remember

**Pivot variable:** determined by other variables.

**Free variable:** you can choose its value freely.

---

# 3. MATRICES

## 3.1 What is a Matrix?

A matrix is a rectangular arrangement of numbers.

Example:

[
A=
\begin{bmatrix}
1&2&3\
4&5&6
\end{bmatrix}
]

This matrix has:

* 2 rows
* 3 columns

Therefore its size is:

[
\boxed{2\times3}
]

---

# 3.2 (m\times n) Matrix

If a matrix has:

* (m) rows
* (n) columns

then its size is:

[
\boxed{m\times n}
]

Example:

[
A=
\begin{bmatrix}
1&2&3\
4&5&6\
7&8&9\
10&11&12
\end{bmatrix}
]

There are 4 rows and 3 columns.

Therefore:

[
\boxed{4\times3}
]

---

# 3.3 Row Matrix

A matrix containing only **one row**.

Example:

[
A=
\begin{bmatrix}
1&2&3&4
\end{bmatrix}
]

Size:

[
1\times4
]

---

# 3.4 Column Matrix

A matrix containing only **one column**.

Example:

[
A=
\begin{bmatrix}
1\
2\
3\
4
\end{bmatrix}
]

Size:

[
4\times1
]

---

# 3.5 Matrix Addition

Matrices can be added only if they have the **same dimensions**.

Example:

[
A=
\begin{bmatrix}
1&2\
3&4
\end{bmatrix}
]

and

[
B=
\begin{bmatrix}
5&6\
7&8
\end{bmatrix}
]

Add corresponding elements:

[
A+B=
\begin{bmatrix}
1+5&2+6\
3+7&4+8
\end{bmatrix}
]

Therefore:

[
\boxed{
A+B=
\begin{bmatrix}
6&8\
10&12
\end{bmatrix}}
]

---

# 3.6 Matrix Multiplication

This is very important.

You can multiply:

[
A_{m\times n}B_{p\times q}
]

only when:

[
\boxed{n=p}
]

In other words:

> **Inside numbers must match.**

Example:

[
A_{2\times3}B_{3\times2}
]

is possible.

The result will be:

[
2\times2
]

### Rule

[
(m\times n)(n\times p)=m\times p
]

---

## Example

[
A=
\begin{bmatrix}
1&2\
3&4
\end{bmatrix}
]

[
B=
\begin{bmatrix}
5&6\
7&8
\end{bmatrix}
]

Calculate (AB).

First element:

[
1(5)+2(7)=19
]

Second:

[
1(6)+2(8)=22
]

Third:

[
3(5)+4(7)=43
]

Fourth:

[
3(6)+4(8)=50
]

Therefore:

[
AB=
\begin{bmatrix}
19&22\
43&50
\end{bmatrix}
]

---

# 3.7 Matrix Multiplication is NOT Usually Commutative

For normal numbers:

[
2\times3=3\times2
]

But matrices are different.

Generally:

[
\boxed{AB\ne BA}
]

Sometimes (AB) exists but (BA) doesn't even exist.

This is an important exam point.

---

# 3.8 Associativity

Matrix multiplication is associative:

[
\boxed{(AB)C=A(BC)}
]

You can change the grouping.

---

# 3.9 Distributivity

Matrix multiplication distributes over addition:

[
\boxed{A(B+C)=AB+AC}
]

and:

[
\boxed{(A+B)C=AC+BC}
]

---

# 3.10 Identity Matrix

The identity matrix is like the number **1** for matrices.

For a 2×2 matrix:

[
I=
\begin{bmatrix}
1&0\
0&1
\end{bmatrix}
]

For a 3×3 matrix:

[
I=
\begin{bmatrix}
1&0&0\
0&1&0\
0&0&1
\end{bmatrix}
]

The important property is:

[
\boxed{AI=A}
]

and:

[
\boxed{IA=A}
]

Just like:

[
5\times1=5
]

---

# 3.11 Scalar Multiplication

A scalar is simply a number.

Example:

[
A=
\begin{bmatrix}
1&2\
3&4
\end{bmatrix}
]

Multiply by 3:

[
3A=
\begin{bmatrix}
3&6\
9&12
\end{bmatrix}
]

Every element is multiplied by 3.

---

# 4. INVERSE AND TRANSPOSE

# 4.1 What is an Inverse?

For a number:

[
5\times\frac15=1
]

Therefore:

[
\frac15
]

is the inverse of 5.

For matrices, the same idea applies.

The inverse of (A) is written:

[
\boxed{A^{-1}}
]

and:

[
\boxed{AA^{-1}=I}
]

Also:

[
\boxed{A^{-1}A=I}
]

---

# 4.2 2×2 Matrix Inverse Formula

Suppose:

[
A=
\begin{bmatrix}
a&b\
c&d
\end{bmatrix}
]

Then:

[
\boxed{
A^{-1}=
\frac{1}{ad-bc}
\begin{bmatrix}
d&-b\
-c&a
\end{bmatrix}}
]

provided:

[
ad-bc\ne0
]

---

# 4.3 Determinant

For:

[
A=
\begin{bmatrix}
a&b\
c&d
\end{bmatrix}
]

the determinant is:

[
\boxed{\det(A)=ad-bc}
]

Example:

[
A=
\begin{bmatrix}
4&7\
2&6
\end{bmatrix}
]

Determinant:

[
(4)(6)-(7)(2)
]

[
=24-14
]

[
=10
]

Therefore:

[
\det(A)=10
]

Since:

[
10\ne0
]

the inverse exists.

---

# 4.4 When Does an Inverse Exist?

For a square matrix:

[
\boxed{\det(A)\ne0}
]

means the inverse exists.

If:

[
\boxed{\det(A)=0}
]

then:

[
\boxed{\text{Inverse does not exist}}
]

Such a matrix is called **singular**.

If determinant is non-zero, the matrix is called **non-singular/invertible**.

---

# 4.5 Transpose

Transpose means:

> Turn rows into columns and columns into rows.

Example:

[
A=
\begin{bmatrix}
1&2&3\
4&5&6
\end{bmatrix}
]

Transpose:

[
A^T=
\begin{bmatrix}
1&4\
2&5\
3&6
\end{bmatrix}
]

Notice:

Original:

[
2\times3
]

Transpose:

[
3\times2
]

So:

[
\boxed{(m\times n)^T=n\times m}
]

---

# 4.6 Important Transpose Property

For matrix multiplication:

[
\boxed{(AB)^T=B^TA^T}
]

Notice the order reverses.

It is **not**:

[
A^TB^T
]

---

# 4.7 Important Inverse Property

For multiplication:

[
\boxed{(AB)^{-1}=B^{-1}A^{-1}}
]

Again, the order reverses.

### Easy memory trick

For both transpose and inverse:

> **When dealing with AB, the order reverses.**

[
(AB)^T=B^TA^T
]

[
(AB)^{-1}=B^{-1}A^{-1}
]

---

# 5. COMPACT REPRESENTATION

Suppose we have:

[
2x+y=5
]

[
x-y=1
]

Instead of writing equations separately, we can represent them using matrices.

---

# 5.1 Ax = b

Write:

[
A\mathbf{x}=\mathbf{b}
]

where:

[
A=
\begin{bmatrix}
2&1\
1&-1
\end{bmatrix}
]

[
x=
\begin{bmatrix}
x\
y
\end{bmatrix}
]

and:

[
b=
\begin{bmatrix}
5\
1
\end{bmatrix}
]

Therefore:

[
\boxed{
\begin{bmatrix}
2&1\
1&-1
\end{bmatrix}
\begin{bmatrix}
x\
y
\end{bmatrix}
=============

\begin{bmatrix}
5\
1
\end{bmatrix}}
]

This is called the **compact matrix representation**.

---

# 5.2 Augmented Matrix

We can combine (A) and (b):

[
[A|b]
]

For our example:

[
\boxed{
\left[
\begin{array}{cc|c}
2&1&5\
1&-1&1
\end{array}
\right]}
]

The vertical line separates:

* coefficient matrix (A)
* right-hand side (b)

---

# 6. SOLVING SYSTEMS

There are three important ideas here:

1. Particular solution
2. General solution
3. Combining particular + general solution

---

# 6.1 Particular Solution

Suppose:

[
Ax=b
]

A particular solution is **one specific solution**.

Example:

[
x+y=5
]

One solution is:

[
x=2,\quad y=3
]

Therefore:

[
x_p=
\begin{bmatrix}
2\
3
\end{bmatrix}
]

is a particular solution.

There could be other solutions too.

---

# 6.2 Homogeneous System

A homogeneous system is:

[
\boxed{Ax=0}
]

For example:

[
x+y=0
]

This always has at least one solution:

[
x=0,\quad y=0
]

This is called the:

[
\boxed{\text{trivial solution}}
]

There may also be non-zero solutions.

---

# 6.3 General Solution

The general solution describes **all possible solutions**.

For example:

[
x+y=0
]

We can write:

[
x=-y
]

Let:

[
y=t
]

Then:

[
x=-t
]

Therefore:

[
\boxed{
\begin{bmatrix}
x\
y
\end{bmatrix}
=============

\begin{bmatrix}
-t\
t
\end{bmatrix}}
]

where (t) can be any number.

---

# 6.4 Particular + General Solution

This is an extremely important concept.

For:

[
Ax=b
]

the general solution can be written as:

[
\boxed{x=x_p+x_h}
]

where:

* (x_p) = particular solution of (Ax=b)
* (x_h) = general solution of (Ax=0)

So:

[
\boxed{\text{General solution}=
\text{Particular solution}+\text{Homogeneous solution}}
]

---

# 7. ELEMENTARY ROW OPERATIONS

Elementary row operations are used to simplify matrices.

There are exactly **three types**.

---

# 7.1 Row Swap

Swap two rows.

Example:

[
\begin{bmatrix}
1&2\
3&4
\end{bmatrix}
]

Swap (R_1) and (R_2):

[
\boxed{
\begin{bmatrix}
3&4\
1&2
\end{bmatrix}}
]

Written as:

[
R_1\leftrightarrow R_2
]

---

# 7.2 Multiply a Row by a Non-Zero Constant

Example:

[
R_1=
\begin{bmatrix}
1&2
\end{bmatrix}
]

Multiply by 3:

[
R_1\rightarrow3R_1
]

Result:

[
\begin{bmatrix}
3&6
\end{bmatrix}
]

Important:

[
\boxed{\lambda\ne0}
]

We cannot multiply a row by zero because that would destroy information.

---

# 7.3 Add One Row to Another

Example:

[
R_1\rightarrow R_1+2R_2
]

Suppose:

[
R_1=
\begin{bmatrix}
1&2
\end{bmatrix}
]

and:

[
R_2=
\begin{bmatrix}
3&4
\end{bmatrix}
]

Then:

[
R_1+2R_2
]

# [

[1,2]+2[3,4]
]

[
=[1,2]+[6,8]
]

[
=[7,10]
]

So:

[
\boxed{R_1=[7,10]}
]

---

# 8. GAUSSIAN ELIMINATION

Gaussian elimination is one of the most important topics in this module.

Its purpose is:

> Convert a complicated system into an easier form so that we can find the solution.

The general process is:

[
\boxed{
\text{Original system}
\rightarrow
\text{Augmented matrix}
\rightarrow
\text{REF}
\rightarrow
\text{Back substitution}
\rightarrow
\text{Solution}}
]

---

# 8.1 Example

Consider:

[
x+y+z=6
]

[
2x+3y+z=10
]

[
x+2y+3z=13
]

Write augmented matrix:

[
\left[
\begin{array}{ccc|c}
1&1&1&6\
2&3&1&10\
1&2&3&13
\end{array}
\right]
]

---

# 8.2 Forward Elimination

We want zeros below the first pivot.

The first pivot is:

[
1
]

Use:

[
R_2\rightarrow R_2-2R_1
]

and:

[
R_3\rightarrow R_3-R_1
]

Result:

[
\left[
\begin{array}{ccc|c}
1&1&1&6\
0&1&-1&-2\
0&1&2&7
\end{array}
\right]
]

Now eliminate below the second pivot:

[
R_3\rightarrow R_3-R_2
]

Result:

[
\left[
\begin{array}{ccc|c}
1&1&1&6\
0&1&-1&-2\
0&0&3&9
\end{array}
\right]
]

This is **Row-Echelon Form**.

---

# 8.3 Row-Echelon Form — REF

A matrix is in REF when it generally has:

### Rule 1

All non-zero rows are above zero rows.

### Rule 2

Each pivot moves to the right as we go down.

Example:

[
\begin{bmatrix}
1&2&3\
0&1&4\
0&0&1
\end{bmatrix}
]

This is REF.

Think of it as a **staircase**:

```text
Pivot
  ↓
[1 2 3]
[0 1 4]
[0 0 1]
```

---

# 8.4 Back Substitution

From:

[
\left[
\begin{array}{ccc|c}
1&1&1&6\
0&1&-1&-2\
0&0&3&9
\end{array}
\right]
]

Last equation:

[
3z=9
]

Therefore:

[
z=3
]

Second equation:

[
y-z=-2
]

Substitute:

[
y-3=-2
]

[
y=1
]

First equation:

[
x+y+z=6
]

[
x+1+3=6
]

[
x=2
]

Therefore:

[
\boxed{x=2,\quad y=1,\quad z=3}
]

---

# 8.5 Reduced Row-Echelon Form — RREF

RREF goes one step further than REF.

In RREF:

1. Every pivot is 1.
2. Each pivot is the only non-zero number in its column.
3. Pivot positions move to the right as you go down.
4. Zero rows are at the bottom.

Example:

[
\boxed{
\begin{bmatrix}
1&0&2\
0&1&3\
0&0&0
\end{bmatrix}}
]

This is RREF.

Compare:

### REF

[
\begin{bmatrix}
1&2&3\
0&1&4\
0&0&1
\end{bmatrix}
]

### RREF

[
\begin{bmatrix}
1&0&2\
0&1&3\
0&0&0
\end{bmatrix}
]

RREF is more completely simplified.

---

# 8.6 REF vs RREF

| REF                               | RREF                                |
| --------------------------------- | ----------------------------------- |
| Pivot doesn't always have to be 1 | Every pivot is 1                    |
| Zeros required below pivots       | Zeros above AND below pivots        |
| Staircase form                    | Fully simplified staircase          |
| Back substitution usually needed  | Solution can often be read directly |

---

# 8.7 What is a Pivot?

A pivot is the leading non-zero entry in a row after elimination.

Example:

[
\begin{bmatrix}
1&2&3\
0&4&5\
0&0&6
\end{bmatrix}
]

The pivots are:

[
1,\quad4,\quad6
]

Their columns are called **pivot columns**.

### Important

A pivot is not necessarily the number 1.

For example:

[
4
]

can absolutely be a pivot.

In RREF, however, pivots are made into 1.

---

# 8.8 Pivot Variables and Free Variables

Suppose RREF gives:

[
\begin{bmatrix}
1&0&2&|&5\
0&1&3&|&7
\end{bmatrix}
]

This represents:

[
x+2z=5
]

[
y+3z=7
]

The pivot columns are:

* column 1 → (x)
* column 2 → (y)

Column 3 has no pivot.

Therefore:

[
x,y=\text{pivot variables}
]

and:

[
z=\text{free variable}
]

Let:

[
z=t
]

Then:

[
x=5-2t
]

[
y=7-3t
]

So:

[
\boxed{
x=5-2t,\quad y=7-3t,\quad z=t
}
]

---

# 9. CALCULATING INVERSE USING GAUSSIAN ELIMINATION

This is another major exam topic.

We can calculate (A^{-1}) using:

[
\boxed{[A|I]\rightarrow[I|A^{-1}]}
]

This is one of the most important formulas to remember.

---

# 9.1 Example

Let:

[
A=
\begin{bmatrix}
1&2\
3&4
\end{bmatrix}
]

The identity matrix is:

[
I=
\begin{bmatrix}
1&0\
0&1
\end{bmatrix}
]

Put them together:

[
[A|I]
=====

\left[
\begin{array}{cc|cc}
1&2&1&0\
3&4&0&1
\end{array}
\right]
]

Our goal is:

[
\left[
\begin{array}{cc|cc}
1&0&0&1\
0&1&1&0
\end{array}
\right]
]

More specifically:

[
[A|I]\rightarrow[I|A^{-1}]
]

---

## Step 1

Start:

[
\left[
\begin{array}{cc|cc}
1&2&1&0\
3&4&0&1
\end{array}
\right]
]

Make the bottom-left element zero:

[
R_2\rightarrow R_2-3R_1
]

Result:

[
\left[
\begin{array}{cc|cc}
1&2&1&0\
0&-2&-3&1
\end{array}
\right]
]

---

## Step 2

Make second pivot equal to 1:

[
R_2\rightarrow-\frac12R_2
]

Result:

[
\left[
\begin{array}{cc|cc}
1&2&1&0\
0&1&\frac32&-\frac12
\end{array}
\right]
]

---

## Step 3

Make the number above the second pivot zero:

[
R_1\rightarrow R_1-2R_2
]

Result:

[
\left[
\begin{array}{cc|cc}
1&0&-2&1\
0&1&\frac32&-\frac12
\end{array}
\right]
]

Therefore:

[
A^{-1}
======

\boxed{
\begin{bmatrix}
-2&1\
\frac32&-\frac12
\end{bmatrix}}
]

---

# COMPLETE MODULE — BIG PICTURE

You should understand how all these topics connect.

```text
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

# ⭐ Most Important Formulas to Memorize

### Matrix multiplication

[
\boxed{(m\times n)(n\times p)=m\times p}
]

### Identity

[
\boxed{AI=IA=A}
]

### Inverse

[
\boxed{AA^{-1}=A^{-1}A=I}
]

### 2×2 inverse

[
\boxed{
\begin{bmatrix}
a&b\
c&d
\end{bmatrix}^{-1}
==================

\frac{1}{ad-bc}
\begin{bmatrix}
d&-b\
-c&a
\end{bmatrix}}
]

### Inverse exists

[
\boxed{\det(A)\ne0}
]

### Transpose

[
\boxed{(AB)^T=B^TA^T}
]

### Inverse of product

[
\boxed{(AB)^{-1}=B^{-1}A^{-1}}
]

### Matrix representation

[
\boxed{Ax=b}
]

### Homogeneous system

[
\boxed{Ax=0}
]

### General solution

[
\boxed{x=x_p+x_h}
]

### Inverse using Gaussian elimination

[
\boxed{[A|I]\rightarrow[I|A^{-1}]}
]

---

# ⭐ Exam-Focused Concepts

If you're preparing for the semester exam, make sure you can **explain and solve problems** involving these:

| Topic                | What you should be able to do            |                 |          |
| -------------------- | ---------------------------------------- | --------------- | -------- |
| Closure              | Determine whether a set is closed        |                 |          |
| Linear equations     | Identify whether an equation is linear   |                 |          |
| Systems              | Find unique/no/infinite solutions        |                 |          |
| Geometry             | Explain lines and planes                 |                 |          |
| Pivot                | Identify pivot positions/columns         |                 |          |
| Free variable        | Identify and parameterize free variables |                 |          |
| Matrix dimensions    | Determine (m\times n)                    |                 |          |
| Addition             | Add matrices                             |                 |          |
| Multiplication       | Multiply matrices and check dimensions   |                 |          |
| Identity             | Understand (AI=A)                        |                 |          |
| Scalar               | Multiply a matrix by a number            |                 |          |
| Determinant          | Calculate (2\times2) determinant         |                 |          |
| Inverse              | Calculate (A^{-1})                       |                 |          |
| Transpose            | Calculate (A^T)                          |                 |          |
| (Ax=b)               | Convert equations into matrix form       |                 |          |
| Augmented matrix     | Construct ([A                            | b])             |          |
| Particular solution  | Find one solution                        |                 |          |
| Homogeneous solution | Solve (Ax=0)                             |                 |          |
| Row operations       | Perform all 3 operations                 |                 |          |
| Gaussian elimination | Convert matrix to REF                    |                 |          |
| RREF                 | Fully reduce a matrix                    |                 |          |
| Back substitution    | Find variables from REF                  |                 |          |
| Matrix inverse       | Use ([A                                  | I]\rightarrow[I | A^{-1}]) |

## The one story you should remember

If you remember only one flow from this entire module, remember this:

[
\boxed{
\text{Linear equations}
\rightarrow
Ax=b
\rightarrow
[A|b]
\rightarrow
\text{Row Operations}
\rightarrow
\text{Gaussian Elimination}
\rightarrow
\text{REF/RREF}
\rightarrow
\text{Solution}
}
]

And for finding an inverse:

[
\boxed{
[A|I]
\rightarrow
[I|A^{-1}]
}
]


