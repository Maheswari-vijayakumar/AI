
# Multiple Linear Regression — Step-by-Step

## 1. The Dataset

Two independent variables, $X_1$ and $X_2$, predicting $Y$:

| $X_1$ | $X_2$ | $Y$ |
|---:|---:|---:|
| 1 | 1 | 3 |
| 2 | 1 | 5 |
| 3 | 2 | 7 |
| 4 | 3 | 9 |
| 5 | 4 | 11 |

Goal — build a model of the form:

$$\boxed{\hat Y=b_0+b_1X_1+b_2X_2}$$

where:
- $b_0$ → intercept
- $b_1$ → effect of $X_1$
- $b_2$ → effect of $X_2$

## 2. Convert the Data into Matrices

$$X=\begin{bmatrix}1&1&1\\1&2&1\\1&3&2\\1&4&3\\1&5&4\end{bmatrix} \qquad Y=\begin{bmatrix}3\\5\\7\\9\\11\end{bmatrix} \qquad \beta=\begin{bmatrix}b_0\\b_1\\b_2\end{bmatrix}$$

The leading column of 1s in $X$ accounts for the intercept $b_0$. $\beta$ is unknown — solving for it is the whole task.

## 3. The Normal Equation

$$\boxed{\beta=(X^TX)^{-1}X^TY}$$

This closed-form solution runs through these stages:

$$X \;\rightarrow\; X^T \;\rightarrow\; X^TX \;\rightarrow\; X^TY \;\rightarrow\; \beta$$

## 4. Transpose $X$

Transposing turns rows into columns:

$$X^T=\begin{bmatrix}1&1&1&1&1\\1&2&3&4&5\\1&1&2&3&4\end{bmatrix}$$

Dimensions go from $5\times3$ to $3\times5$.

## 5. Compute $X^TX$

$$X^TX=\begin{bmatrix}1&1&1&1&1\\1&2&3&4&5\\1&1&2&3&4\end{bmatrix}\begin{bmatrix}1&1&1\\1&2&1\\1&3&2\\1&4&3\\1&5&4\end{bmatrix}=\boxed{\begin{bmatrix}5&15&11\\15&55&41\\11&41&31\end{bmatrix}}$$

Each entry is a dot product between two columns of $X$:

| Entry | Calculation | Result |
|---|---|---|
| $(0,0)$ | $1+1+1+1+1$ | $5$ |
| $(0,1)$ | $1+2+3+4+5$ | $15$ |
| $(0,2)$ | $1+1+2+3+4$ | $11$ |
| $(1,1)$ | $1^2+2^2+3^2+4^2+5^2$ | $55$ |
| $(1,2)$ | $(1)(1)+(2)(1)+(3)(2)+(4)(3)+(5)(4)$ | $41$ |
| $(2,2)$ | $1^2+1^2+2^2+3^2+4^2$ | $31$ |

The matrix is symmetric, so those six values fill all nine entries.

## 6. Compute $X^TY$

$$X^TY=\begin{bmatrix}1&1&1&1&1\\1&2&3&4&5\\1&1&2&3&4\end{bmatrix}\begin{bmatrix}3\\5\\7\\9\\11\end{bmatrix}=\boxed{\begin{bmatrix}35\\125\\93\end{bmatrix}}$$

| Row | Calculation | Result |
|---|---|---|
| 1 | $3+5+7+9+11$ | $35$ |
| 2 | $1(3)+2(5)+3(7)+4(9)+5(11)$ | $125$ |
| 3 | $1(3)+1(5)+2(7)+3(9)+4(11)$ | $93$ |

## 7. Solve for $\beta$

Rather than inverting the 3×3 matrix directly, treat $X^TX\,\beta = X^TY$ as a system of three linear equations and solve by elimination.

**The system:**

$$\begin{aligned} 5b_0+15b_1+11b_2&=35 &&\text{(1)}\\ 15b_0+55b_1+41b_2&=125 &&\text{(2)}\\ 11b_0+41b_1+31b_2&=93 &&\text{(3)} \end{aligned}$$

**Eliminate $b_0$ from (1) and (2):** multiply (1) by 3, subtract (2):

$$(15b_0+45b_1+33b_2)-(15b_0+55b_1+41b_2)=105-125$$
$$-10b_1-8b_2=-20 \;\;\Rightarrow\;\; \boxed{5b_1+4b_2=10} \quad \text{(4)}$$

**Eliminate $b_0$ from (1) and (3):** multiply (1) by 11 and (3) by 5, subtract:

$$(55b_0+165b_1+121b_2)-(55b_0+205b_1+155b_2)=385-465$$
$$-40b_1-34b_2=-80 \;\;\Rightarrow\;\; 40b_1+34b_2=80 \quad \text{(5)}$$

**Eliminate $b_1$ from (4) and (5):** multiply (4) by 8:

$$(40b_1+32b_2)-(40b_1+34b_2)=80-80 \;\;\Rightarrow\;\; -2b_2=0 \;\;\Rightarrow\;\; \boxed{b_2=0}$$

**Back-substitute into (4):**

$$5b_1+4(0)=10 \;\;\Rightarrow\;\; \boxed{b_1=2}$$

**Back-substitute into (1):**

$$5b_0+15(2)+11(0)=35 \;\;\Rightarrow\;\; 5b_0=5 \;\;\Rightarrow\;\; \boxed{b_0=1}$$

**Result:**

$$\beta=\begin{bmatrix}b_0\\b_1\\b_2\end{bmatrix}=\begin{bmatrix}1\\2\\0\end{bmatrix}$$

This is exactly equivalent to computing $(X^TX)^{-1}X^TY$ directly — solving the linear system *is* what matrix inversion does under the hood, just without needing to write out the inverse explicitly.

## 8. The Regression Equation

$$\hat Y=b_0+b_1X_1+b_2X_2=1+2X_1+0X_2 \;\;\Rightarrow\;\; \boxed{\hat Y=1+2X_1}$$

$X_2$'s coefficient is zero, meaning it adds nothing to the prediction once $X_1$ is included — in this dataset, every row satisfies $Y=1+2X_1$ exactly, so $X_2$ is redundant.

## 9. Making a Prediction

For $X_1=6,\ X_2=5$:

$$\hat Y=1+2(6)+0(5)=1+12=\boxed{13}$$

## 10. The Full Process

```
        DATA
          ↓
   Build X and Y
          ↓
      Find Xᵀ
          ↓
    Compute XᵀX
          ↓
    Compute XᵀY
          ↓
 β = (XᵀX)⁻¹XᵀY
   (solved via elimination)
          ↓
   b₀, b₁, b₂ found
          ↓
 Regression equation built
          ↓
     Prediction made
```

**Key formula:** $\beta=(X^TX)^{-1}X^TY$

**Key idea:** Multiple linear regression solves for all coefficients $b_0, b_1, b_2, \dots$ simultaneously via the Normal Equation, minimizing the total squared prediction error across every predictor at once — the direct extension of what a single slope/intercept formula does for one predictor.
