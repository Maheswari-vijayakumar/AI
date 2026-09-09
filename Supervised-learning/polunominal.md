
# Polynomial Regression — Formula + Math Calculation

**Polynomial Regression** is a form of linear regression where we add powers of \(x\) such as \(x^2, x^3,\dots\) to capture a curved relationship.

Even though the final graph is curved, it is still **linear in the coefficients** \(\beta\).

---

## 1. Mathematical Model

For a **quadratic polynomial** (degree \(n=2\)):

$$
y = \beta_0+\beta_1x+\beta_2x^2
$$

Where:

* \(y\) = predicted/target value
* \(x\) = input
* \(\beta_0\) = intercept
* \(\beta_1\) = coefficient of \(x\)
* \(\beta_2\) = coefficient of \(x^2\)

For example, suppose our model is:

$$
\boxed{y=2+3x+x^2}
$$

This means:

$$
\beta_0=2,\qquad\beta_1=3,\qquad\beta_2=1
$$

---

# 2. Small Dataset

Suppose we have:

| \(x\) | Actual \(y\) |
| ----: | -----------: |
|     1 |            6 |
|     2 |           12 |
|     3 |           20 |

Notice that the values follow:

$$
y=2+3x+x^2
$$

Let's verify.

### For \(x=1\)

$$
y=2+3(1)+(1)^2
$$

$$
=2+3+1
$$

$$
\boxed{y=6}
$$

### For \(x=2\)

$$
y=2+3(2)+(2)^2
$$

$$
=2+6+4
$$

$$
\boxed{y=12}
$$

### For \(x=3\)

$$
y=2+3(3)+(3)^2
$$

$$
=2+9+9
$$

$$
\boxed{y=20}
$$

So our polynomial produces:

$$
6,\ 12,\ 20
$$

---

# 3. Why Do We Need \(x^2\)?

Compare these two models.

### Simple Linear Regression

$$
y=\beta_0+\beta_1x
$$

Only \(x\) is used.

This produces a **straight line**.

### Polynomial Regression

$$
y=\beta_0+\beta_1x+\beta_2x^2
$$

Now we have \(x^2\).

This allows the model to **bend**, producing a curve.

```text
Simple Linear:

y
│       *
│     *
│   *
│ *
└────────── x


Polynomial:

y
│          *
│       *
│    *
│  *
│ *
└────────── x
```

The important idea is:

> **We create new features from the original \(x\).**

For example:

$$
x \rightarrow x,\ x^2,\ x^3
$$

---

# 4. Convert Polynomial Regression into Multiple Linear Regression

This is the most important mathematical idea.

Start with:

$$
y=\beta_0+\beta_1x+\beta_2x^2
$$

Create two features:

$$
X_1=x
$$

$$
X_2=x^2
$$

Now our equation becomes:

$$
y=\beta_0+\beta_1X_1+\beta_2X_2
$$

This looks exactly like **Multiple Linear Regression**.

So:

| Original | New feature |
| -------- | ----------- |
| \(x\)    | \(X_1=x\)   |
| \(x^2\)  | \(X_2=x^2\) |

Therefore:

> **Polynomial Regression = Multiple Linear Regression applied to polynomial features.**

---

# 5. Create the Design Matrix

For our data:

$$
x=1,2,3
$$

Calculate \(x^2\):

| \(x\) | \(x^2\) | \(y\) |
| ----: | ------: | ----: |
|     1 |       1 |     6 |
|     2 |       4 |    12 |
|     3 |       9 |    20 |

Now create the matrix \(X\).

We always include a column of **1s** for \(\beta_0\):

$$
X=
\begin{bmatrix}
1&1&1\\
1&2&4\\
1&3&9
\end{bmatrix}
$$

And:

$$
y=
\begin{bmatrix}
6\\
12\\
20
\end{bmatrix}
$$

Our model is:

$$
\boxed{y=X\beta}
$$

where

$$
\beta=
\begin{bmatrix}
\beta_0\\
\beta_1\\
\beta_2
\end{bmatrix}
$$

---

# 6. Find the Coefficients

Just like Multiple Linear Regression, we can use the **Normal Equation**:

$$
\boxed{
\hat{\beta}=(X^TX)^{-1}X^Ty
}
$$

For this example:

$$
X=
\begin{bmatrix}
1&1&1\\
1&2&4\\
1&3&9
\end{bmatrix}
$$

First calculate \(X^T\):

$$
X^T=
\begin{bmatrix}
1&1&1\\
1&2&3\\
1&4&9
\end{bmatrix}
$$

Then:

$$
X^TX=
\begin{bmatrix}
3&6&14\\
6&14&36\\
14&36&98
\end{bmatrix}
$$

And:

$$
X^Ty=
\begin{bmatrix}
38\\
84\\
258
\end{bmatrix}
$$

Therefore:

$$
\hat{\beta}
=
(X^TX)^{-1}X^Ty
$$

which gives:

$$
\boxed{
\hat{\beta}=
\begin{bmatrix}
2\\
3\\
1
\end{bmatrix}}
$$

So:

$$
\boxed{\beta_0=2,\quad\beta_1=3,\quad\beta_2=1}
$$

Our learned equation is therefore:

$$
\boxed{y=2+3x+x^2}
$$

---

# 7. Make a Prediction

Suppose a new value is:

$$
x=4
$$

Our model predicts:

$$
\hat y=2+3(4)+(4)^2
$$

$$
=2+12+16
$$

$$
\boxed{\hat y=30}
$$

So the predicted value is **30**.

---

# 8. Where Does Error Come In?

Suppose the actual value for \(x=4\) is **32**.

Our prediction:

$$
\hat y=30
$$

Actual:

$$
y=32
$$

Therefore:

$$
Error=y-\hat y
$$

$$
=32-30
$$

$$
\boxed{Error=2}
$$

For regression, we can measure errors using **MAE or MSE**, for example.

### MSE

$$
MSE=\frac{1}{n}\sum(y-\hat y)^2
$$

The model tries to make this error small.

---

# 9. Underfitting vs Overfitting

The **degree** determines how flexible the curve is.

| Degree | Model                                        | Possible behavior          |
| -----: | -------------------------------------------- | -------------------------- |
|      1 | \(y=\beta_0+\beta_1x\)                       | Straight line              |
|      2 | \(y=\beta_0+\beta_1x+\beta_2x^2\)            | Simple curve               |
|      3 | \(y=\beta_0+\beta_1x+\beta_2x^2+\beta_3x^3\) | More flexible curve        |
|     10 | Powers up to \(x^{10}\)                      | Very flexible; can overfit |

The important point is **not** that degree 5 or 10 always overfits. It depends on the dataset, noise, sample size, and regularization.

---

# 10. The Big Picture

This is the part I recommend remembering:

```text
Original data
     │
     │ x
     ▼
Create polynomial features
     │
     ├── x
     ├── x²
     ├── x³
     └── ...
     │
     ▼
Multiple Linear Regression
     │
     ▼
Find β coefficients
     │
     ├── β₀
     ├── β₁
     ├── β₂
     └── ...
     │
     ▼
Polynomial equation
     │
     ▼
Prediction
     │
     ▼
Calculate error (MSE / MAE)
```

### One sentence to remember

> **Polynomial Regression takes one variable \(x\), creates \(x^2,x^3,\ldots\) as new features, and then uses the same Multiple Linear Regression mathematics to find the coefficients.**

So the important formulas are:

$$
\boxed{y=\beta_0+\beta_1x+\beta_2x^2+\cdots+\beta_nx^n}
$$

and

$$
\boxed{\hat{\beta}=(X^TX)^{-1}X^Ty}
$$

and for measuring regression error:

$$
\boxed{MSE=\frac{1}{n}\sum(y-\hat y)^2}
$$

This is essentially the **same closed-form mathematics you already learned for Multiple Linear Regression**—the main new idea is how we construct the \(x^2,x^3,\ldots\) features.
