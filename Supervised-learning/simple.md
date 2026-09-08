

## 1. The Dataset

We want to find the relationship between independent variable $X$ and dependent variable $Y$.

| $X$ | $Y$ |
|---|---|
| 1 | 2 |
| 2 | 4 |
| 3 | 5 |
| 4 | 6 |
| 5 | 8 |

## 2. Summary Statistics

First, calculate the number of data points ($n$), the sums, and the means ($\bar{X}, \bar{Y}$):

- $n = 5$
- $\sum X = 1+2+3+4+5 = 15$
- $\sum Y = 2+4+5+6+8 = 25$
- $\bar{X} = 15/5 = 3$
- $\bar{Y} = 25/5 = 5$

## 3. Component Calculations

We need $\sum X^2$ and $\sum XY$ to calculate the slope:

| $X$ | $Y$ | $X^2$ | $XY$ |
|---|---|---|---|
| 1 | 2 | 1 | 2 |
| 2 | 4 | 4 | 8 |
| 3 | 5 | 9 | 15 |
| 4 | 6 | 16 | 24 |
| 5 | 8 | 25 | 40 |
| **Σ = 15** | **Σ = 25** | **Σ = 55** | **Σ = 89** |

## 4. Calculate the Slope ($m$)

$$m = \frac{n\sum(XY) - \sum X \sum Y}{n\sum(X^2) - (\sum X)^2}$$

Substituting the sums:

$$m = \frac{5(89) - (15)(25)}{5(55) - (15)^2} = \frac{445 - 375}{275 - 225} = \frac{70}{50} = 1.4$$

**The slope ($m$) is 1.4.**

## 5. Calculate the Y-Intercept ($b$)

$$b = \bar{Y} - m\bar{X}$$

$$b = 5 - (1.4 \times 3) = 5 - 4.2 = 0.8$$

**The Y-intercept ($b$) is 0.8.**

## 6. The Final Regression Equation

$$\hat{Y} = 1.4X + 0.8$$

## 7. Making a Prediction

If $X = 6$:

$$\hat{Y} = 1.4(6) + 0.8 = 8.4 + 0.8 = 9.2$$

---



## Closed-Form Formulas for Linear Regression

| # | Formula | Use case |
|---|---|---|
| 1 | $m = \dfrac{n\sum XY - \sum X \sum Y}{n\sum X^2 - (\sum X)^2}$ | Slope, simple linear regression (1 predictor) |
| 2 | $c = \bar{Y} - m\bar{X}$ | Intercept, simple linear regression |
| 3 | $\beta = (X^TX)^{-1}X^TY$ | Both slope(s) and intercept, **any** number of predictors (general case — includes #1 and #2 as the special 2-variable case) |



| Concept | Closed-form? |
|---|---|
| Mean, variance, standard deviation | Yes — direct formulas |
| Correlation coefficient ($r$) | Yes |
| $R^2$ (coefficient of determination) | Yes |
| Ridge regression ($L_2$ regularization) | Yes — $\beta = (X^TX + \lambda I)^{-1}X^TY$ |
| Lasso regression ($L_1$ regularization) | **No** — requires iterative optimization |
| Logistic regression | **No** — requires iterative optimization (e.g. gradient descent, Newton's method) |
| Neural networks | **No** — always trained iteratively |
| Principal Component Analysis (PCA) | Yes — via eigendecomposition/SVD |


