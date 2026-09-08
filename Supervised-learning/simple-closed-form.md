

## 1. The Model

We're fitting a straight line:

$$\hat{Y} = mX + c$$

where $m$ is the slope and $c$ is the intercept.

## 2. The Dataset

| $X$ | $Y$ |
|---|---|
| 1 | 2 |
| 2 | 4 |
| 3 | 5 |
| 4 | 6 |
| 5 | 8 |

## 3. Summary Statistics

$$n = 5$$
$$\sum X = 15, \quad \sum Y = 25$$
$$\bar{X} = \frac{15}{5} = 3, \quad \bar{Y} = \frac{25}{5} = 5$$

## 4. Component Sums

| $X$ | $Y$ | $X^2$ | $XY$ |
|---|---|---|---|
| 1 | 2 | 1 | 2 |
| 2 | 4 | 4 | 8 |
| 3 | 5 | 9 | 15 |
| 4 | 6 | 16 | 24 |
| 5 | 8 | 25 | 40 |
| **Σ = 15** | **Σ = 25** | **Σ = 55** | **Σ = 89** |

## 5. Closed-Form Formulas

These come directly from differentiating the squared-error cost function and setting the derivatives to zero (the derivation from your last question):

$$m = \frac{n\sum XY - \sum X \sum Y}{n\sum X^2 - (\sum X)^2} \qquad c = \bar{Y} - m\bar{X}$$

## 6. Solve for the Slope

$$m = \frac{5(89) - (15)(25)}{5(55) - (15)^2} = \frac{445 - 375}{275 - 225} = \frac{70}{50} = 1.4$$

## 7. Solve for the Intercept

$$c = 5 - (1.4 \times 3) = 5 - 4.2 = 0.8$$

## 8. The Final Equation

$$\hat{Y} = 1.4X + 0.8$$

## 9. Prediction

For $X = 6$:

$$\hat{Y} = 1.4(6) + 0.8 = 9.2$$

## 10. Why "Closed-Form"

| Feature | Closed-form (this method) | Iterative (e.g. gradient descent) |
|---|---|---|
| Steps | Fixed — one pass through the formula | Repeated updates until convergence |
| Exactness | Exact answer | Approximation, gets closer over iterations |
| Speed | Instant for small/medium data | Can take many iterations |
| Scales to many predictors? | Yes, via $\beta = (X^TX)^{-1}X^TY$, but matrix inversion gets costly at large scale | Yes, and often preferred for very large datasets |

If it's useful, I can build this as an interactive widget where you plug in your own $X,Y$ values and watch it compute $m$, $c$, and the plot live.
