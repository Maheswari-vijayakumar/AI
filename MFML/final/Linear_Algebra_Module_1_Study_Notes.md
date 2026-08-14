Linear Algebra — Module 1 Complete Study Notes
Module 1 — Topics Covered
Introduction
Systems of Linear Equations
Matrices
Inverse & Transpose
Compact Representation
Solving Systems
Elementary Row Operations
Gaussian Elimination
Calculating Inverse using Gaussian Elimination
1. INTRODUCTION TO LINEAR ALGEBRA
1.1 What is Linear Algebra?

Linear Algebra is the study of vectors, matrices, and linear equations.

It helps us solve problems involving many variables simultaneously.

For example:

x+y=5

and

2x−y=1

We want to find values of x and y that satisfy both equations.

Linear algebra gives us systematic methods to solve this.

Where is Linear Algebra used?

Linear algebra is extremely important in:

Machine Learning
Artificial Intelligence
Computer Graphics
Data Science
Image Processing
Robotics
Engineering
Statistics
Physics

For example, an image can be represented as a large collection of numbers, and matrices are used to manipulate those numbers.

1.2 What is a Vector?

A vector is simply an ordered collection of numbers.

For example:

[
2
3
	​

]

is a 2-dimensional vector.

We can also write it as:

x
=[
2
3
	​

]

Think of it as:

A vector is a list of numbers arranged in a particular order.

Examples:

	​

1
2
3
	​

	​

	​

5
7
9
10
	​

	​

1.3 Idea of Closure

Closure means:

When we perform an operation on things belonging to a set, the result must also belong to that set.

Let's understand with a simple example.

Suppose:

S={1,2,3}

Take two numbers from S:

1+2=3

3 is also inside S.

So addition is closed for this particular example.

But:

2+3=5

5 is NOT inside S.

Therefore, S is not closed under addition.

Easy way to remember

Closure = "The answer stays inside the group."

Vector example

Suppose:

U={(x,y):y≥0}

Take:

(2,3),(4,5)

Add them:

(2,3)+(4,5)=(6,8)

Since:

8≥0

the result remains in U.

Therefore, U is closed under addition.

2. SYSTEMS OF LINEAR EQUATIONS
2.1 What is an Equation?

An equation says:

Two mathematical expressions are equal.

Example:

x+2=5

We solve:

x=3
2.2 What is a Linear Equation?

A linear equation is an equation where variables have power 1.

Examples:

2x+3y=10
x−y+2z=5
4x
1
	​

+3x
2
	​

−x
3
	​

=7

These are linear.

Not linear
x
2
+y=5

because x has power 2.

Also:

xy=5

is not linear because variables are multiplied together.

2.3 System of Linear Equations

A system means:

Multiple equations that must be satisfied at the same time.

Example:

x+y=5
x−y=1

We need values of x and y that satisfy both equations.

Adding them:

2x=6

Therefore:

x=3

Then:

3+y=5
y=2

So the solution is:

(x,y)=(3,2)
	​

2.4 Three Types of Solutions

A system of linear equations can have:

1. Unique solution

Exactly one solution.

Example:

x+y=5
x−y=1

Solution:

x=3,y=2

Therefore:

Unique solution
	​

2. No solution

There is no value that satisfies all equations.

Example:

x+y=5
x+y=8

The left side is the same, but the right sides are different.

Impossible.

Therefore:

No solution
	​

3. Infinite solutions

The equations represent essentially the same equation.

Example:

x+y=5
2x+2y=10

The second equation is simply:

2(x+y)=2(5)

So both equations represent the same line.

There are infinitely many solutions.

For example:

(0,5)
(1,4)
(2,3)
(3,2)

etc.

Therefore:

Infinitely many solutions
	​

2.5 Geometrical Interpretation

This is very important.

In 2D

A linear equation such as:

x+y=5

represents a line.

Two equations represent two lines.

Case 1: Unique solution

Two lines intersect at exactly one point.

\ /
 \/
 /\
/  \

The intersection point is the solution.

Case 2: No solution

Two parallel lines never meet.

────────────


────────────

Therefore:

No solution
	​

Case 3: Infinite solutions

Both equations represent the same line.

────────────
────────────

They overlap completely.

Therefore, every point on the line is a solution.

2.6 In 3D

In 3 dimensions:

A linear equation represents a plane
Multiple equations represent multiple planes

They can:

intersect at one point → unique solution
have no common intersection → no solution
share a line → infinitely many solutions
2.7 Pivot Variables vs Free Variables

This is one of the most important concepts.

Suppose after elimination we get:

x+2y+3z=5

There is only one equation but three variables.

We can choose y and z freely.

So:

x → pivot variable
y → free variable
z → free variable

For example:

x=5−2y−3z

Let:

y=s
z=t

Then:

x=5−2s−3t

Therefore:

x=5−2s−3t,y=s,z=t
	​


The free variables create infinitely many solutions.

Remember

Pivot variable: determined by other variables.

Free variable: you can choose its value freely.

3. MATRICES
3.1 What is a Matrix?

A matrix is a rectangular arrangement of numbers.

Example:

A=[
1
4
	​

2
5
	​

3
6
	​

]

This matrix has:

2 rows
3 columns

Therefore its size is:

2×3
	​

3.2 m×n Matrix

If a matrix has:

m rows
n columns

then its size is:

m×n
	​


Example:

A=
	​

1
4
7
10
	​

2
5
8
11
	​

3
6
9
12
	​

	​


There are 4 rows and 3 columns.

Therefore:

4×3
	​

3.3 Row Matrix

A matrix containing only one row.

Example:

A=[
1
	​

2
	​

3
	​

4
	​

]

Size:

1×4
3.4 Column Matrix

A matrix containing only one column.

Example:

A=
	​

1
2
3
4
	​

	​


Size:

4×1
3.5 Matrix Addition

Matrices can be added only if they have the same dimensions.

Example:

A=[
1
3
	​

2
4
	​

]

and

B=[
5
7
	​

6
8
	​

]

Add corresponding elements:

A+B=[
1+5
3+7
	​

2+6
4+8
	​

]

Therefore:

A+B=[
6
10
	​

8
12
	​

]
	​

3.6 Matrix Multiplication

This is very important.

You can multiply:

A
m×n
	​

B
p×q
	​


only when:

n=p
	​


In other words:

Inside numbers must match.

Example:

A
2×3
	​

B
3×2
	​


is possible.

The result will be:

2×2
Rule
(m×n)(n×p)=m×p
Example
A=[
1
3
	​

2
4
	​

]
B=[
5
7
	​

6
8
	​

]

Calculate AB.

First element:

1(5)+2(7)=19

Second:

1(6)+2(8)=22

Third:

3(5)+4(7)=43

Fourth:

3(6)+4(8)=50

Therefore:

AB=[
19
43
	​

22
50
	​

]
3.7 Matrix Multiplication is NOT Usually Commutative

For normal numbers:

2×3=3×2

But matrices are different.

Generally:

AB

=BA
	​


Sometimes AB exists but BA doesn't even exist.

This is an important exam point.

3.8 Associativity

Matrix multiplication is associative:

(AB)C=A(BC)
	​


You can change the grouping.

3.9 Distributivity

Matrix multiplication distributes over addition:

A(B+C)=AB+AC
	​


and:

(A+B)C=AC+BC
	​

3.10 Identity Matrix

The identity matrix is like the number 1 for matrices.

For a 2×2 matrix:

I=[
1
0
	​

0
1
	​

]

For a 3×3 matrix:

I=
	​

1
0
0
	​

0
1
0
	​

0
0
1
	​

	​


The important property is:

AI=A
	​


and:

IA=A
	​


Just like:

5×1=5
3.11 Scalar Multiplication

A scalar is simply a number.

Example:

A=[
1
3
	​

2
4
	​

]

Multiply by 3:

3A=[
3
9
	​

6
12
	​

]

Every element is multiplied by 3.

4. INVERSE AND TRANSPOSE
4.1 What is an Inverse?

For a number:

5×
5
1
	​

=1

Therefore:

5
1
	​


is the inverse of 5.

For matrices, the same idea applies.

The inverse of A is written:

A
−1
	​


and:

AA
−1
=I
	​


Also:

A
−1
A=I
	​

4.2 2×2 Matrix Inverse Formula

Suppose:

A=[
a
c
	​

b
d
	​

]

Then:

A
−1
=
ad−bc
1
	​

[
d
−c
	​

−b
a
	​

]
	​


provided:

ad−bc

=0
4.3 Determinant

For:

A=[
a
c
	​

b
d
	​

]

the determinant is:

det(A)=ad−bc
	​


Example:

A=[
4
2
	​

7
6
	​

]

Determinant:

(4)(6)−(7)(2)
=24−14
=10

Therefore:

det(A)=10

Since:

10

=0

the inverse exists.

4.4 When Does an Inverse Exist?

For a square matrix:

det(A)

=0
	​


means the inverse exists.

If:

det(A)=0
	​


then:

Inverse does not exist
	​


Such a matrix is called singular.

If determinant is non-zero, the matrix is called non-singular/invertible.

4.5 Transpose

Transpose means:

Turn rows into columns and columns into rows.

Example:

A=[
1
4
	​

2
5
	​

3
6
	​

]

Transpose:

A
T
=
	​

1
2
3
	​

4
5
6
	​

	​


Notice:

Original:

2×3

Transpose:

3×2

So:

(m×n)
T
=n×m
	​

4.6 Important Transpose Property

For matrix multiplication:

(AB)
T
=B
T
A
T
	​


Notice the order reverses.

It is not:

A
T
B
T
4.7 Important Inverse Property

For multiplication:

(AB)
−1
=B
−1
A
−1
	​


Again, the order reverses.

Easy memory trick

For both transpose and inverse:

When dealing with AB, the order reverses.

(AB)
T
=B
T
A
T
(AB)
−1
=B
−1
A
−1
5. COMPACT REPRESENTATION

Suppose we have:

2x+y=5
x−y=1

Instead of writing equations separately, we can represent them using matrices.

5.1 Ax = b

Write:

Ax=b

where:

A=[
2
1
	​

1
−1
	​

]
x=[
x
y
	​

]

and:

b=[
5
1
	​

]

Therefore:

[
2
1
	​

1
−1
	​

][
x
y
	​

]=[
5
1
	​

]
	​


This is called the compact matrix representation.

5.2 Augmented Matrix

We can combine A and b:

[A∣b]

For our example:

[
2
1
	​

1
−1
	​

5
1
	​

]
	​


The vertical line separates:

coefficient matrix A
right-hand side b
6. SOLVING SYSTEMS

There are three important ideas here:

Particular solution
General solution
Combining particular + general solution
6.1 Particular Solution

Suppose:

Ax=b

A particular solution is one specific solution.

Example:

x+y=5

One solution is:

x=2,y=3

Therefore:

x
p
	​

=[
2
3
	​

]

is a particular solution.

There could be other solutions too.

6.2 Homogeneous System

A homogeneous system is:

Ax=0
	​


For example:

x+y=0

This always has at least one solution:

x=0,y=0

This is called the:

trivial solution
	​


There may also be non-zero solutions.

6.3 General Solution

The general solution describes all possible solutions.

For example:

x+y=0

We can write:

x=−y

Let:

y=t

Then:

x=−t

Therefore:

[
x
y
	​

]=[
−t
t
	​

]
	​


where t can be any number.

6.4 Particular + General Solution

This is an extremely important concept.

For:

Ax=b

the general solution can be written as:

x=x
p
	​

+x
h
	​

	​


where:

x
p
	​

 = particular solution of Ax=b
x
h
	​

 = general solution of Ax=0

So:

General solution=Particular solution+Homogeneous solution
	​

7. ELEMENTARY ROW OPERATIONS

Elementary row operations are used to simplify matrices.

There are exactly three types.

7.1 Row Swap

Swap two rows.

Example:

[
1
3
	​

2
4
	​

]

Swap R
1
	​

 and R
2
	​

:

[
3
1
	​

4
2
	​

]
	​


Written as:

R
1
	​

↔R
2
	​

7.2 Multiply a Row by a Non-Zero Constant

Example:

R
1
	​

=[
1
	​

2
	​

]

Multiply by 3:

R
1
	​

→3R
1
	​


Result:

[
3
	​

6
	​

]

Important:

λ

=0
	​


We cannot multiply a row by zero because that would destroy information.

7.3 Add One Row to Another

Example:

R
1
	​

→R
1
	​

+2R
2
	​


Suppose:

R
1
	​

=[
1
	​

2
	​

]

and:

R
2
	​

=[
3
	​

4
	​

]

Then:

R
1
	​

+2R
2
	​

=[1,2]+2[3,4]
=[1,2]+[6,8]
=[7,10]

So:

R
1
	​

=[7,10]
	​

8. GAUSSIAN ELIMINATION

Gaussian elimination is one of the most important topics in this module.

Its purpose is:

Convert a complicated system into an easier form so that we can find the solution.

The general process is:

Original system→Augmented matrix→REF→Back substitution→Solution
	​

8.1 Example

Consider:

x+y+z=6
2x+3y+z=10
x+2y+3z=13

Write augmented matrix:

	​

1
2
1
	​

1
3
2
	​

1
1
3
	​

6
10
13
	​

	​

8.2 Forward Elimination

We want zeros below the first pivot.

The first pivot is:

1

Use:

R
2
	​

→R
2
	​

−2R
1
	​


and:

R
3
	​

→R
3
	​

−R
1
	​


Result:

	​

1
0
0
	​

1
1
1
	​

1
−1
2
	​

6
−2
7
	​

	​


Now eliminate below the second pivot:

R
3
	​

→R
3
	​

−R
2
	​


Result:

	​

1
0
0
	​

1
1
0
	​

1
−1
3
	​

6
−2
9
	​

	​


This is Row-Echelon Form.

8.3 Row-Echelon Form — REF

A matrix is in REF when it generally has:

Rule 1

All non-zero rows are above zero rows.

Rule 2

Each pivot moves to the right as we go down.

Example:

	​

1
0
0
	​

2
1
0
	​

3
4
1
	​

	​


This is REF.

Think of it as a staircase:

Pivot
  ↓
[1 2 3]
[0 1 4]
[0 0 1]
8.4 Back Substitution

From:

	​

1
0
0
	​

1
1
0
	​

1
−1
3
	​

6
−2
9
	​

	​


Last equation:

3z=9

Therefore:

z=3

Second equation:

y−z=−2

Substitute:

y−3=−2
y=1

First equation:

x+y+z=6
x+1+3=6
x=2

Therefore:

x=2,y=1,z=3
	​

8.5 Reduced Row-Echelon Form — RREF

RREF goes one step further than REF.

In RREF:

Every pivot is 1.
Each pivot is the only non-zero number in its column.
Pivot positions move to the right as you go down.
Zero rows are at the bottom.

Example:

	​

1
0
0
	​

0
1
0
	​

2
3
0
	​

	​

	​


This is RREF.

Compare:

REF
	​

1
0
0
	​

2
1
0
	​

3
4
1
	​

	​

RREF
	​

1
0
0
	​

0
1
0
	​

2
3
0
	​

	​


RREF is more completely simplified.

8.6 REF vs RREF
REF	RREF
Pivot doesn't always have to be 1	Every pivot is 1
Zeros required below pivots	Zeros above AND below pivots
Staircase form	Fully simplified staircase
Back substitution usually needed	Solution can often be read directly
8.7 What is a Pivot?

A pivot is the leading non-zero entry in a row after elimination.

Example:

	​

1
0
0
	​

2
4
0
	​

3
5
6
	​

	​


The pivots are:

1,4,6

Their columns are called pivot columns.

Important

A pivot is not necessarily the number 1.

For example:

4

can absolutely be a pivot.

In RREF, however, pivots are made into 1.

8.8 Pivot Variables and Free Variables

Suppose RREF gives:

[
1
0
	​

0
1
	​

2
3
	​

∣
∣
	​

5
7
	​

]

This represents:

x+2z=5
y+3z=7

The pivot columns are:

column 1 → x
column 2 → y

Column 3 has no pivot.

Therefore:

x,y=pivot variables

and:

z=free variable

Let:

z=t

Then:

x=5−2t
y=7−3t

So:

x=5−2t,y=7−3t,z=t
	​

9. CALCULATING INVERSE USING GAUSSIAN ELIMINATION

This is another major exam topic.

We can calculate A
−1
 using:

[A∣I]→[I∣A
−1
]
	​


This is one of the most important formulas to remember.

9.1 Example

Let:

A=[
1
3
	​

2
4
	​

]

The identity matrix is:

I=[
1
0
	​

0
1
	​

]

Put them together:

[A∣I]=[
1
3
	​

2
4
	​

1
0
	​

0
1
	​

]

Our goal is:

[
1
0
	​

0
1
	​

0
1
	​

1
0
	​

]

More specifically:

[A∣I]→[I∣A
−1
]
Step 1

Start:

[
1
3
	​

2
4
	​

1
0
	​

0
1
	​

]

Make the bottom-left element zero:

R
2
	​

→R
2
	​

−3R
1
	​


Result:

[
1
0
	​

2
−2
	​

1
−3
	​

0
1
	​

]
Step 2

Make second pivot equal to 1:

R
2
	​

→−
2
1
	​

R
2
	​


Result:

[
1
0
	​

2
1
	​

1
2
3
	​

	​

0
−
2
1
	​

	​

]
Step 3

Make the number above the second pivot zero:

R
1
	​

→R
1
	​

−2R
2
	​


Result:

[
1
0
	​

0
1
	​

−2
2
3
	​

	​

1
−
2
1
	​

	​

]

Therefore:

A
−1
=
[
−2
2
3
	​

	​

1
−
2
1
	​

	​

]
	​

COMPLETE MODULE — BIG PICTURE

You should understand how all these topics connect.

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
⭐ Most Important Formulas to Memorize
Matrix multiplication
(m×n)(n×p)=m×p
	​

Identity
AI=IA=A
	​

Inverse
AA
−1
=A
−1
A=I
	​

2×2 inverse
[
a
c
	​

b
d
	​

]
−1
=
ad−bc
1
	​

[
d
−c
	​

−b
a
	​

]
	​

Inverse exists
det(A)

=0
	​

Transpose
(AB)
T
=B
T
A
T
	​

Inverse of product
(AB)
−1
=B
−1
A
−1
	​

Matrix representation
Ax=b
	​

Homogeneous system
Ax=0
	​

General solution
x=x
p
	​

+x
h
	​

	​

Inverse using Gaussian elimination
[A∣I]→[I∣A
−1
]
	​

⭐ Exam-Focused Concepts

If you're preparing for the semester exam, make sure you can explain and solve problems involving these:

Topic	What you should be able to do
Closure	Determine whether a set is closed
Linear equations	Identify whether an equation is linear
Systems	Find unique/no/infinite solutions
Geometry	Explain lines and planes
Pivot	Identify pivot positions/columns
Free variable	Identify and parameterize free variables
Matrix dimensions	Determine m×n
Addition	Add matrices
Multiplication	Multiply matrices and check dimensions
Identity	Understand AI=A
Scalar	Multiply a matrix by a number
Determinant	Calculate 2×2 determinant
Inverse	Calculate A
−1

Transpose	Calculate A
T

Ax=b	Convert equations into matrix form
Augmented matrix	Construct ([A
Particular solution	Find one solution
Homogeneous solution	Solve Ax=0
Row operations	Perform all 3 operations
Gaussian elimination	Convert matrix to REF
RREF	Fully reduce a matrix
Back substitution	Find variables from REF
Matrix inverse	Use ([A
The one story you should remember

If you remember only one flow from this entire module, remember this:

Linear equations→Ax=b→[A∣b]→Row Operations→Gaussian Elimination→REF/RREF→Solution
	​


And for finding an inverse:

[A∣I]→[I∣A
−1
]
	​


That is the backbone of Module 1.
