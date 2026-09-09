

We want the inverse of:

$$A = X^TX = \begin{bmatrix} 3&6&14\\ 6&14&36\\ 14&36&98 \end{bmatrix}$$

The goal is a matrix $A^{-1}$ satisfying:

$$AA^{-1}=I, \qquad I=\begin{bmatrix}1&0&0\\0&1&0\\0&0&1\end{bmatrix}$$

— the matrix equivalent of $5 \times \frac15 = 1$ for ordinary numbers.

## The Formula

For a 3×3 matrix:

$$\boxed{A^{-1}=\frac{1}{|A|}\operatorname{adj}(A)}$$

Two pieces needed: the **determinant** $|A|$ and the **adjugate** $\operatorname{adj}(A)$.

## 1. The Determinant

$$|A|=a(ei-fh)-b(di-fg)+c(dh-eg)$$

$$|A|=3(14\times98-36\times36)-6(6\times98-36\times14)+14(6\times36-14\times14)$$

$$=3(1372-1296)-6(588-504)+14(216-196)$$

$$=3(76)-6(84)+14(20)=228-504+280$$

$$\boxed{|A|=4} \;\;\Rightarrow\;\; \frac{1}{|A|}=\frac14$$

## 2. The Cofactor Matrix

Each entry $C_{ij}$ is the determinant of the 2×2 submatrix left after deleting row $i$ and column $j$, with alternating sign. Two examples:

$$C_{11}=\begin{vmatrix}14&36\\36&98\end{vmatrix}=14(98)-36(36)=1372-1296=76$$

$$C_{12}=-\begin{vmatrix}6&36\\14&98\end{vmatrix}=-(588-504)=-84$$

Working through all nine positions:

$$C=\begin{bmatrix}76&-84&20\\-84&98&-24\\20&-24&6\end{bmatrix}$$

## 3. The Adjugate

The adjugate is the transpose of the cofactor matrix. Since $A$ is symmetric, $C$ is symmetric too, so transposing changes nothing:

$$\operatorname{adj}(A)=C^T=\begin{bmatrix}76&-84&20\\-84&98&-24\\20&-24&6\end{bmatrix}$$

## 4. Divide by the Determinant

$$A^{-1}=\frac14\begin{bmatrix}76&-84&20\\-84&98&-24\\20&-24&6\end{bmatrix}$$

$$\boxed{A^{-1}=(X^TX)^{-1}=\begin{bmatrix}19&-21&5\\-21&\frac{49}{2}&-6\\5&-6&\frac32\end{bmatrix}}$$

## 5. Solve for $\hat\beta$

$$\hat\beta=(X^TX)^{-1}X^Ty=\begin{bmatrix}19&-21&5\\-21&\frac{49}{2}&-6\\5&-6&\frac32\end{bmatrix}\begin{bmatrix}38\\90\\234\end{bmatrix}$$

$$\hat\beta=\begin{bmatrix}19(38)-21(90)+5(234)\\-21(38)+\frac{49}{2}(90)-6(234)\\5(38)-6(90)+\frac32(234)\end{bmatrix}=\begin{bmatrix}2\\3\\1\end{bmatrix}$$

## 6. The Final Equation

$$\boxed{\hat y=2+3x+x^2}$$

## The Big Picture

You won't hand-invert matrices in practice — software does this. What matters is the conceptual chain:

$$X \;\rightarrow\; X^TX \;\rightarrow\; (X^TX)^{-1} \;\rightarrow\; X^Ty \;\rightarrow\; \hat\beta$$

and the rule underlying every step of the inversion:

$$A^{-1}=\frac{\operatorname{adj}(A)}{\det(A)}$$
