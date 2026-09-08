

# Multiple Linear Regression — Step-by-Step

## 1. The Dataset

We have **two independent variables** \(X_1\) and \(X_2\), and one dependent variable \(Y\).

| \(X_1\) | \(X_2\) | \(Y\) |
| ------: | ------: | ----: |
|       1 |       1 |     3 |
|       2 |       1 |     5 |
|       3 |       2 |     7 |
|       4 |       3 |     9 |
|       5 |       4 |    11 |

Our goal is to build a model that predicts \(Y\):

$$
\boxed{\hat Y=b_0+b_1X_1+b_2X_2}
$$

We need to find:

* \(b_0\) → intercept
* \(b_1\) → coefficient of \(X_1\)
* \(b_2\) → coefficient of \(X_2\)

---

# 2. Convert the Data into Matrices

We represent the dataset using three matrices.

### \(X\) Matrix

$$
X=
\begin{bmatrix}
1&1&1\\
1&2&1\\
1&3&2\\
1&4&3\\
1&5&4
\end{bmatrix}
$$



---

### \(Y\) Matrix

$$
Y=
\begin{bmatrix}
3\\
5\\
7\\
9\\
11
\end{bmatrix}
$$

These are the actual target values.

---

### Coefficient Matrix

We don't know the coefficients yet:

$$
\beta=
\begin{bmatrix}
b_0\\
b_1\\
b_2
\end{bmatrix}
$$

Our job is to find this matrix.

---

# 3. The Normal Equation

For multiple linear regression, we can calculate the coefficients using the **Normal Equation**:

$$
\boxed{\beta=(X^TX)^{-1}X^TY}
$$

This is called the **closed-form solution**.

The calculation happens in these steps:

$$
\boxed{
X
\rightarrow
X^T
\rightarrow
X^TX
\rightarrow
X^TY
\rightarrow
\beta
}
$$

Let's calculate each part.

---

# 4. Step 1 — Find \(X^T\)

We start with:

$$
X=
\begin{bmatrix}
1&1&1\\
1&2&1\\
1&3&2\\
1&4&3\\
1&5&4
\end{bmatrix}
$$

Transpose means **turn rows into columns**.

Therefore:

$$
X^T=
\begin{bmatrix}
1&1&1&1&1\\
1&2&3&4&5\\
1&1&2&3&4
\end{bmatrix}
$$

The dimensions change from:

$$
5\times3
$$

to:

$$
3\times5
$$

---

# 5. Step 2 — Calculate \(X^TX\)

Now multiply:

$$
X^TX
$$

That is:

$$
\begin{bmatrix}
1&1&1&1&1\\
1&2&3&4&5\\
1&1&2&3&4
\end{bmatrix}
\begin{bmatrix}
1&1&1\\
1&2&1\\
1&3&2\\
1&4&3\\
1&5&4
\end{bmatrix}
$$

The result is:

$$
\boxed{
X^TX=
\begin{bmatrix}
5&15&11\\
15&55&41\\
11&41&31
\end{bmatrix}}
$$

### How do we get these numbers?

For example, the first element:

$$
1(1)+1(1)+1(1)+1(1)+1(1)
$$

$$
=5
$$

The second element:

$$
1(1)+1(2)+1(3)+1(4)+1(5)
$$

$$
=15
$$

Another example:

$$
55=1^2+2^2+3^2+4^2+5^2
$$

and:

$$
41=(1)(1)+(2)(1)+(3)(2)+(4)(3)+(5)(4)
$$

So \(X^TX\) is basically collecting all the required **sums and relationships between the input variables**.

---

# 6. Step 3 — Calculate \(X^TY\)

Now multiply:

$$
X^TY
$$

$$
=
\begin{bmatrix}
1&1&1&1&1\\
1&2&3&4&5\\
1&1&2&3&4
\end{bmatrix}
\begin{bmatrix}
3\\
5\\
7\\
9\\
11
\end{bmatrix}
$$

Calculate each value.

### First value

$$
1(3)+1(5)+1(7)+1(9)+1(11)
$$

$$
=35
$$

### Second value

$$
1(3)+2(5)+3(7)+4(9)+5(11)
$$

$$
=125
$$

### Third value

$$
1(3)+1(5)+2(7)+3(9)+4(11)
$$

$$
=93
$$

Therefore:

$$
\boxed{
X^TY=
\begin{bmatrix}
35\\
125\\
93
\end{bmatrix}}
$$

---

# 7. Step 4 — Apply the Normal Equation

Yes — this is the most important part to understand. We got:

$$
\beta=
\begin{bmatrix}
1\\
2\\
0
\end{bmatrix}
$$

from the equation:

$$
\beta=(X^TX)^{-1}X^TY
$$

But instead of manually calculating the inverse of the \(3\times3\) matrix, we can understand it much more simply by solving the equations.

---

## 1. Start with the Normal Equation

We had:

$$
X^TX=
\begin{bmatrix}
5&15&11\\
15&55&41\\
11&41&31
\end{bmatrix}
$$

and:

$$
X^TY=
\begin{bmatrix}
35\\
125\\
93
\end{bmatrix}
$$

So:

$$
\begin{bmatrix}
5&15&11\\
15&55&41\\
11&41&31
\end{bmatrix}
\begin{bmatrix}
b_0\\
b_1\\
b_2
\end{bmatrix}
=
\begin{bmatrix}
35\\
125\\
93
\end{bmatrix}
$$

---

# 2. Matrix Multiplication Gives 3 Equations

Multiply each row.

### Equation 1

$$
5b_0+15b_1+11b_2=35
$$

### Equation 2

$$
15b_0+55b_1+41b_2=125
$$

### Equation 3

$$
11b_0+41b_1+31b_2=93
$$

So now our problem is simply:

$$
\boxed{
\begin{aligned}
5b_0+15b_1+11b_2&=35\\
15b_0+55b_1+41b_2&=125\\
11b_0+41b_1+31b_2&=93
\end{aligned}}
$$

We need to find \(b_0,b_1,b_2\).

---

# 3. Solve the Equations

Let's eliminate \(b_0\).

Take:

$$
3\times\text{Equation 1}
$$

$$
15b_0+45b_1+33b_2=105
$$

Now subtract Equation 2:

$$
(15b_0+45b_1+33b_2)
-
(15b_0+55b_1+41b_2)
=105-125
$$

This gives:

$$
-10b_1-8b_2=-20
$$

Divide by \(-2\):

$$
\boxed{5b_1+4b_2=10}
$$

---

## 4. Eliminate \(b_0\) Again

Take:

$$
11\times\text{Equation 1}
$$

$$
55b_0+165b_1+121b_2=385
$$

Take:

$$
5\times\text{Equation 3}
$$

$$
55b_0+205b_1+155b_2=465
$$

Subtract:

$$
(55b_0+205b_1+155b_2)
-
(55b_0+165b_1+121b_2)
=465-385
$$

Therefore:

$$
40b_1+34b_2=80
$$

---

# 5. Now We Have Two Equations

We have:

$$
5b_1+4b_2=10
$$

and:

$$
40b_1+34b_2=80
$$

Multiply the first equation by 8:

$$
40b_1+32b_2=80
$$

Subtract:

$$
(40b_1+34b_2)-(40b_1+32b_2)=80-80
$$

Therefore:

$$
2b_2=0
$$

So:

$$
\boxed{b_2=0}
$$

---

# 6. Find \(b_1\)

Put:

$$
b_2=0
$$

into:

$$
5b_1+4b_2=10
$$

We get:

$$
5b_1+4(0)=10
$$

$$
5b_1=10
$$

Therefore:

$$
\boxed{b_1=2}
$$

---

# 7. Find \(b_0\)

Use the first equation:

$$
5b_0+15b_1+11b_2=35
$$

Substitute:

$$
b_1=2,\qquad b_2=0
$$

Therefore:

$$
5b_0+15(2)+11(0)=35
$$

$$
5b_0+30=35
$$

$$
5b_0=5
$$

$$
\boxed{b_0=1}
$$

---

# 8. Therefore β

We found:

$$
b_0=1
$$

$$
b_1=2
$$

$$
b_2=0
$$

So we put them into the coefficient vector:

$$
\boxed{
\beta=
\begin{bmatrix}
1\\
2\\
0
\end{bmatrix}}
$$

That's where the **\([1,2,0]\)** comes from.

---

### ⭐ The important connection

Don't think that:

$$
\beta=
\begin{bmatrix}
1\\2\\0
\end{bmatrix}
$$

just magically appears from the formula.

The actual process is:

$$
\boxed{
X^TX\beta=X^TY
}
$$

↓

$$
\boxed{
\text{3 equations}
}
$$

↓

$$
\boxed{
b_0=1,\ b_1=2,\ b_2=0
}
$$

↓

$$
\boxed{
\beta=
\begin{bmatrix}
1\\2\\0
\end{bmatrix}
}
$$

This is essentially **solving a system of linear equations**, which is why the linear algebra concepts you've been learning—matrices, row operations, RREF, etc.—are directly useful here.


Now we have:

$$
X^TX=
\begin{bmatrix}
5&15&11\\
15&55&41\\
11&41&31
\end{bmatrix}
$$

and:

$$
X^TY=
\begin{bmatrix}
35\\
125\\
93
\end{bmatrix}
$$

Put them into:

$$
\boxed{\beta=(X^TX)^{-1}X^TY}
$$

Therefore:

$$
\beta=
\begin{bmatrix}
5&15&11\\
15&55&41\\
11&41&31
\end{bmatrix}^{-1}
\begin{bmatrix}
35\\
125\\
93
\end{bmatrix}
$$

After solving:

$$
\boxed{
\beta=
\begin{bmatrix}
1\\
2\\
0
\end{bmatrix}}
$$

So:

$$
\boxed{b_0=1}
$$

$$
\boxed{b_1=2}
$$

$$
\boxed{b_2=0}
$$

---

# 8. Step 5 — Build the Regression Equation

Our original model was:

$$
\hat Y=b_0+b_1X_1+b_2X_2
$$

Substitute the values:

$$
\hat Y=1+2X_1+0X_2
$$

Therefore:

$$
\boxed{\hat Y=1+2X_1}
$$

Here, \(X_2\) has a coefficient of zero.

This means that **in this particular dataset**, \(X_2\) does not add anything to the prediction once \(X_1\) is included.

---

# 9. Step 6 — Make a Prediction

Suppose we have:

$$
X_1=6
$$

$$
X_2=5
$$

Use:

$$
\hat Y=1+2X_1+0X_2
$$

Substitute:

$$
\hat Y=1+2(6)+0(5)
$$

$$
=1+12
$$

$$
\boxed{\hat Y=13}
$$

So the predicted value is:

$$
\boxed{13}
$$

---

# 10. Complete Process

The whole process can be remembered like this:

```text
             DATA
               ↓
        Create X and Y
               ↓
             Find Xᵀ
               ↓
          Calculate XᵀX
               ↓
          Calculate XᵀY
               ↓
    β = (XᵀX)⁻¹ XᵀY
               ↓
       Find b₀, b₁, b₂
               ↓
   Build regression equation
               ↓
          Make prediction
```

### The key formula

$$
\boxed{\beta=(X^TX)^{-1}X^TY}
$$

### The key idea

> **Multiple Linear Regression uses the Normal Equation to find all coefficients \(b_0,b_1,b_2,\ldots\) together, so that the squared prediction errors are minimized.**
