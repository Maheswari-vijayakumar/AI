
## 1. The Dataset

Now we have two independent variables, $X_1$ and $X_2$, predicting $Y$.

| $X_1$ | $X_2$ | $Y$ |
|---|---|---|
| 1 | 1 | 3 |
| 2 | 1 | 5 |
| 3 | 2 | 7 |
| 4 | 3 | 9 |
| 5 | 4 | 11 |

We're modeling:

$$\hat{Y} = b_0 + b_1X_1 + b_2X_2$$

## 2. Why the Old Formula Doesn't Work Anymore

With one predictor, we had simple algebraic formulas for $m$ and $b$. With multiple predictors, we need to solve for several coefficients at once — so we switch to **matrix notation**.

Define:

$$Y = \begin{bmatrix} y_1 \\ y_2 \\ \vdots \\ y_n \end{bmatrix} \qquad X = \begin{bmatrix} 1 & x_{11} & x_{12} \\ 1 & x_{21} & x_{22} \\ \vdots & \vdots & \vdots \\ 1 & x_{n1} & x_{n2} \end{bmatrix} \qquad \beta = \begin{bmatrix} b_0 \\ b_1 \\ b_2 \end{bmatrix}$$

The leading column of 1s in $X$ accounts for the intercept $b_0$.

## 3. The Normal Equation

The closed-form solution (still OLS, still derived the same way — minimize squared error, take derivatives, set to zero) is:

$$\beta = (X^TX)^{-1}X^TY$$

This is the direct matrix generalization of the slope/intercept formulas from simple linear regression.

## 4. Plugging In the Dataset

$$X = \begin{bmatrix} 1 & 1 & 1 \\ 1 & 2 & 1 \\ 1 & 3 & 2 \\ 1 & 4 & 3 \\ 1 & 5 & 4 \end{bmatrix} \qquad Y = \begin{bmatrix} 3 \\ 5 \\ 7 \\ 9 \\ 11 \end{bmatrix}$$

**Step 1 — Compute $X^TX$:**

$$X^TX = \begin{bmatrix} 5 & 15 & 11 \\ 15 & 55 & 43 \\ 11 & 43 & 35 \end{bmatrix}$$

**Step 2 — Compute $X^TY$:**

$$X^TY = \begin{bmatrix} 35 \\ 121 \\ 97 \end{bmatrix}$$

**Step 3 — Invert $X^TX$ and multiply by $X^TY$:**

Solving $\beta = (X^TX)^{-1}X^TY$ gives:

$$b_0 = 1, \quad b_1 = 2, \quad b_2 = 0$$

(By hand, inverting a 3×3 matrix is tedious — in practice this step is done with software. Want me to build you an interactive widget or run the actual matrix algebra numerically?)

## 5. The Final Regression Equation

$$\hat{Y} = 1 + 2X_1 + 0X_2$$

This means $Y$ increases by 2 for every one-unit increase in $X_1$, and $X_2$ has no additional effect once $X_1$ is accounted for (in this particular toy dataset).

## 6. Making a Prediction

If $X_1 = 6$ and $X_2 = 5$:

$$\hat{Y} = 1 + 2(6) + 0(5) = 13$$

## 7. Key Differences from Simple Linear Regression

| | Simple Linear | Multiple Linear |
|---|---|---|
| Predictors | 1 | 2 or more |
| Solution | Algebraic formula | Matrix equation $\beta=(X^TX)^{-1}X^TY$ |
| Geometry | Best-fit **line** | Best-fit **plane/hyperplane** |
| Coefficient interpretation | Slope of the line | Effect of each $X$, holding others constant |

---
