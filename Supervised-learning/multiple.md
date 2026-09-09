Yes. The expression

$$
(X^TX)^{-1}
=
\begin{bmatrix}
\frac{49}{18} &-\frac73&\frac59\\
-\frac73&\frac{25}{9}&-\frac23\\
\frac59&-\frac23&\frac16
\end{bmatrix}
$$

comes from **finding the inverse of a 3×3 matrix**.

But there is an easier way to understand the math behind it.

For our example:

$$
X^TX=
\begin{bmatrix}
3&6&14\\
6&14&36\\
14&36&98
\end{bmatrix}
$$

Let's call this matrix \(A\):

$$
A=
\begin{bmatrix}
3&6&14\\
6&14&36\\
14&36&98
\end{bmatrix}
$$

We want:

$$
A^{-1}
$$

---

# 1. The basic idea of a matrix inverse

For ordinary numbers:

$$
5^{-1}=\frac15
$$

because:

$$
5\times\frac15=1
$$

For matrices, the same idea applies:

$$
\boxed{A A^{-1}=I}
$$

where \(I\) is the identity matrix:

$$
I=
\begin{bmatrix}
1&0&0\\
0&1&0\\
0&0&1
\end{bmatrix}
$$

So we're looking for a matrix that, when multiplied by \(A\), gives \(I\).

---

# 2. How do we actually find the inverse?

For a \(3\times3\) matrix, one standard method is:

$$
\boxed{
A^{-1}=\frac{1}{|A|}\operatorname{adj}(A)
}
$$

There are **two main pieces**:

1. Find the determinant \(|A|\)
2. Find the adjugate matrix \(\operatorname{adj}(A)\)

---

# 3. Find the determinant

Our matrix:

$$
A=
\begin{bmatrix}
3&6&14\\
6&14&36\\
14&36&98
\end{bmatrix}
$$

For a \(3\times3\) matrix:

$$
|A|=
a(ei-fh)-b(di-fg)+c(dh-eg)
$$

So:

$$
|A|=
3(14\times98-36\times36)
-6(6\times98-36\times14)
+14(6\times36-14\times14)
$$

Calculate:

$$
=3(1372-1296)
-6(588-504)
+14(216-196)
$$

$$
=3(76)-6(84)+14(20)
$$

$$
=228-504+280
$$

$$
\boxed{|A|=4}
$$

Therefore:

$$
\frac1{|A|}=\frac14
$$

---

# 4. Find the cofactor matrix

This is the more tedious part.

For example, the first element of the cofactor matrix is:

$$
C_{11}
=
\begin{vmatrix}
14&36\\
36&98
\end{vmatrix}
$$

Calculate:

$$
C_{11}=14(98)-36(36)
$$

$$
=1372-1296
$$

$$
=76
$$

Another example:

$$
C_{12}
=
-\begin{vmatrix}
6&36\\
14&98
\end{vmatrix}
$$

$$
=-(6(98)-36(14))
$$

$$
=-(588-504)
$$

$$
=-84
$$

Doing this for all 9 positions gives the cofactor matrix:

$$
C=
\begin{bmatrix}
76&-84&20\\
-84&98&-24\\
20&-24&6
\end{bmatrix}
$$

---

# 5. Transpose the cofactor matrix

The **adjugate** is the transpose of the cofactor matrix:

$$
\operatorname{adj}(A)=C^T
$$

In this particular example, the matrix happens to be symmetric, so the transpose looks the same:

$$
\operatorname{adj}(A)=
\begin{bmatrix}
76&-84&20\\
-84&98&-24\\
20&-24&6
\end{bmatrix}
$$

---

# 6. Divide by the determinant

Remember:

$$
A^{-1}=
\frac{1}{|A|}\operatorname{adj}(A)
$$

We found:

$$
|A|=4
$$

Therefore:

$$
A^{-1}
=
\frac14
\begin{bmatrix}
76&-84&20\\
-84&98&-24\\
20&-24&6
\end{bmatrix}
$$

Divide every element by 4:

$$
A^{-1}
=
\begin{bmatrix}
19&-21&5\\
-21&\frac{49}{2}&-6\\
5&-6&\frac32
\end{bmatrix}
$$

So:

$$
\boxed{
(X^TX)^{-1}
=
\begin{bmatrix}
19&-21&5\\
-21&\frac{49}{2}&-6\\
5&-6&\frac32
\end{bmatrix}}
$$

---

## 7. Then use it in the Normal Equation

Now we have:

$$
\hat\beta=(X^TX)^{-1}X^Ty
$$

Substitute:

$$
\hat\beta=
\begin{bmatrix}
19&-21&5\\
-21&\frac{49}{2}&-6\\
5&-6&\frac32
\end{bmatrix}
\begin{bmatrix}
38\\
90\\
234
\end{bmatrix}
$$

This gives:

$$
\boxed{
\hat\beta=
\begin{bmatrix}
2\\
3\\
1
\end{bmatrix}}
$$

Therefore:

$$
\boxed{\hat y=2+3x+x^2}
$$

---

### One thing to remember

You **don't need to manually calculate matrix inverses every time** when doing ML.

The important conceptual chain is:

$$
\boxed{
X
\rightarrow
X^T X
\rightarrow
(X^TX)^{-1}
\rightarrow
X^Ty
\rightarrow
\hat\beta
}
$$

And:

$$
\boxed{
A^{-1}=\frac{\operatorname{adj}(A)}{\det(A)}
}
$$

is the mathematical rule that explains **where the inverse comes from**.
