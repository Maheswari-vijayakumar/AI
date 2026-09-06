| Model                          | Use when                                                                                                | Example                                    |
| ------------------------------ | ------------------------------------------------------------------------------------------------------- | ------------------------------------------ |
| **Simple Linear Regression**   | 1 input feature and relationship is roughly a straight line                                             | House price from **area only**             |
| **Multiple Linear Regression** | 2+ input features and relationship is roughly linear                                                    | House price from **area + bedrooms + age** |
| **Polynomial Regression**      | Relationship is **curved/non-linear**, but you can represent it using polynomial features               | Price vs age showing a curve               |
| **Ridge Regression**           | Linear/polynomial model has **many features or correlated features** and you want to reduce overfitting | 100 related features predicting price      |
| **Lasso Regression**           | You want regularization **and feature selection**                                                       | 100 features, but only some may matter     |


High train + High test
       ↓
  UNDERFITTING

Low train + Low test
       ↓
    GOOD FIT

Very low train + High test
       ↓
   OVERFITTING


<img width="800" height="320" alt="image" src="https://github.com/user-attachments/assets/dafbc64e-aa0a-40e1-bc70-891bef3b9197" />
   
