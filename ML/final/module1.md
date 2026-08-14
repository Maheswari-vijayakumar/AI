

## First: What is Machine Learning?

Before learning all the types and algorithms, understand this one idea:

> **Machine Learning means teaching a computer to learn patterns from data so that it can make predictions or decisions without explicitly programming every rule.**

### Simple example: Spam detection

Imagine you receive 10,000 emails.

Some are:

* "Congratulations! You won $1,000"
* "Claim your free prize"
* "You have been selected for a reward"

These are probably spam.

Instead of writing hundreds of rules such as:

```text
IF email contains "free"
THEN spam

IF email contains "prize"
THEN spam

IF email contains "winner"
THEN spam
```

we can give the computer many examples:

```text
Email                         Label
-------------------------------------
"Free prize waiting"          Spam
"Meeting at 10 AM"            Not Spam
"Claim your reward"           Spam
"Project meeting tomorrow"    Not Spam
```

The ML algorithm learns patterns from these examples.

Then when a new email arrives:

```text
"You have won a free reward"
```

the model predicts:

```text
Spam
```

That's the basic idea of Machine Learning.

---

# 1. Introduction to Machine Learning

## 1.1 What is Machine Learning?

Traditional programming looks like:

```text
Rules + Data
     ↓
 Computer
     ↓
  Output
```

Machine Learning looks more like:

```text
Data + Correct Answers
          ↓
     ML Algorithm
          ↓
       Model
          ↓
    New Data
          ↓
     Prediction
```

### Example

Suppose we want to predict house prices.

We give the computer:

| House Size | Bedrooms |     Price |
| ---------: | -------: | --------: |
| 1000 sq ft |        2 |  ₹40 lakh |
| 1500 sq ft |        3 |  ₹60 lakh |
| 2000 sq ft |        4 |  ₹80 lakh |
| 2500 sq ft |        4 | ₹100 lakh |

The ML algorithm learns relationships between:

**House features → Price**

Then we give:

```text
New house:
2000 sq ft
3 bedrooms
```

The model predicts a price.

---

# 1.2 T-P-E Framework

This is an important **semester/exam concept**.

T-P-E means:

* **T = Task**
* **P = Performance**
* **E = Experience**

A machine is said to learn when its performance at a task improves with experience.

A common formal definition is:

> A computer program is said to learn from experience E with respect to some class of tasks T and performance measure P if its performance at tasks in T, as measured by P, improves with experience E.

Don't worry about the wording. Understand the three pieces.

---

## T = Task

What do we want the machine to do?

Examples:

* Detect spam
* Predict house prices
* Recognize faces
* Predict whether a customer will leave
* Recommend movies

---

## P = Performance

How do we measure whether the machine is doing a good job?

Examples:

For spam detection:

```text
Accuracy
Precision
Recall
```

For house-price prediction:

```text
Mean Squared Error
Mean Absolute Error
```

---

## E = Experience

What does the machine learn from?

Usually:

```text
Data
```

For spam detection:

```text
Thousands of previously labeled emails
```

For house-price prediction:

```text
Historical house prices
```

---

## Example of T-P-E

### Spam Detection

**T — Task**

Classify an email as:

```text
Spam
or
Not Spam
```

**P — Performance**

Measure accuracy.

**E — Experience**

Previously labeled emails.

Therefore:

```text
T = Spam classification
P = Accuracy
E = Historical labeled emails
```

### Easy memory trick

> **T = What?**
> **P = How well?**
> **E = From what?**

---

# 1.3 Defining Learning Tasks

Before building an ML system, clearly define:

1. What should the system do?
2. What data is available?
3. What is the expected output?
4. How will we measure success?

### Example: Car Price Prediction

We want:

```text
Input:
Car age
Mileage
Engine size
Brand
Condition

       ↓

Machine Learning Model

       ↓

Output:
Predicted price
```

Task:

> Predict the selling price of a car.

Performance:

> Mean Absolute Error / Mean Squared Error.

Experience:

> Historical car sales data.

---

# 1.4 Traditional Approach vs ML Approach

This is an important conceptual difference.

## Traditional Programming

Suppose we want to detect spam.

We manually create rules:

```text
IF email contains "free"
    → spam

IF email contains "winner"
    → spam

IF email contains "prize"
    → spam
```

The programmer creates the rules.

```text
Rules + Data
     ↓
 Program
     ↓
 Output
```

### Problem

Spam emails constantly change.

A spammer might write:

```text
Fr33 pr1z3
```

Our old rule may fail.

---

## Machine Learning Approach

Instead of manually creating all the rules:

```text
Examples
   ↓
ML Algorithm
   ↓
Learned Model
```

The model discovers useful patterns.

Then:

```text
New email
    ↓
 ML Model
    ↓
Spam / Not Spam
```

### Key difference

| Traditional Programming              | Machine Learning          |
| ------------------------------------ | ------------------------- |
| Programmer defines rules             | Model learns patterns     |
| Rules + data → output                | Data + answers → model    |
| Good for clearly defined rules       | Good for complex patterns |
| Rules must often be manually updated | Model can be retrained    |

---

# 2. WHY MACHINE LEARNING?

## 2.1 When Should We Use ML?

ML is useful when:

### 1. The problem contains patterns

Example:

```text
Email → Spam/Not Spam
```

There are patterns in the data.

---

### 2. Rules are difficult to write

Consider facial recognition.

Could we write:

```text
IF eyes are this size
AND nose is this shape
AND face has this structure
THEN person = John
```

This becomes extremely complicated.

ML can learn these patterns from examples.

---

### 3. There is lots of data

ML becomes particularly useful when we have large amounts of historical data.

Example:

```text
Millions of transactions
```

can be used to learn fraud patterns.

---

### 4. The environment changes

Spam patterns change.

Customer behavior changes.

Fraud patterns change.

ML models can be retrained with new data.

---

# 2.2 When NOT to Use ML

ML is not automatically the answer to every problem.

Don't use ML when:

### 1. A simple rule solves the problem

Example:

```text
If temperature > 30°C
    turn on fan
```

You don't need ML.

---

### 2. There is not enough data

ML needs data to learn useful patterns.

No useful data → difficult to train a useful model.

---

### 3. The rules are already simple and deterministic

Example:

```text
Total price = quantity × unit price
```

No ML required.

---

### 4. Mistakes are extremely costly

Some applications require carefully validated deterministic rules or specialized systems rather than relying blindly on a learned model.

---

# 2.3 Why ML?

Some problems are extremely difficult to solve using manually written rules.

Examples:

* Speech recognition
* Image recognition
* Fraud detection
* Natural language processing
* Recommendation systems

The programmer may not know all the rules.

But we may have lots of examples.

So:

> **Instead of telling the computer all the rules, we give it examples and let it discover useful patterns.**

---

# 3. APPLICATIONS OF MACHINE LEARNING

## 3.1 Security and Transaction Domain

### Fraud Detection

Suppose a bank sees:

```text
Transaction 1:
₹500 → Chennai

Transaction 2:
₹700 → Chennai

Transaction 3:
₹2,00,000 → another country
```

The third transaction may be suspicious.

An ML model can learn patterns from historical transactions.

Possible features:

* Amount
* Location
* Time
* Device
* Transaction frequency
* Customer behavior

Output:

```text
Fraud
or
Not Fraud
```

---

## 3.2 Self-Driving Cars

Self-driving systems need to recognize:

* Cars
* Pedestrians
* Traffic lights
* Road signs
* Lanes
* Obstacles

Machine Learning helps the system recognize patterns from cameras and other sensors.

---

# 3.3 Customer Support Systems

Examples:

* Siri
* Alexa
* Chatbots
* Voice assistants

They can use ML for:

* Speech recognition
* Language understanding
* Intent detection
* Response generation

Example:

```text
User:
"What is the weather today?"

        ↓

Speech recognition

        ↓

Understand request

        ↓

Retrieve weather

        ↓

Response
```

---

# 3.4 Recommendation Engines

Examples:

* Amazon
* Netflix
* YouTube
* Spotify

Suppose you watch:

```text
Movie A
Movie B
Movie C
```

The system may notice:

```text
People who watched A, B, C
also watched D.
```

It may recommend:

```text
Movie D
```

---

# 3.5 Pattern Recognition

Pattern recognition means:

> Finding meaningful patterns in data.

Examples:

```text
Image → Cat/Dog

Email → Spam/Not Spam

Transaction → Fraud/Normal

Voice → "Hello"
```

---

# 3.6 Optimization

Optimization means:

> Finding the best possible solution according to some objective.

Examples:

* Shortest delivery route
* Lowest cost
* Maximum profit
* Best resource allocation

---

# 3.7 Decision Systems

ML can help make decisions.

Example:

```text
Customer information
       ↓
ML model
       ↓
Loan risk prediction
       ↓
Decision support
```

The model may predict:

```text
Low risk
Medium risk
High risk
```

---

# 4. TYPES OF MACHINE LEARNING

The four major types in your syllabus are:

```text
Machine Learning
      │
      ├── Supervised
      ├── Unsupervised
      ├── Reinforcement
      └── Semi-supervised
```

The easiest way to understand them is by asking:

> **What kind of feedback does the machine receive?**

| Type            | What does the machine get? | Example                                        |
| --------------- | -------------------------- | ---------------------------------------------- |
| Supervised      | Labels/answers             | Spam detection                                 |
| Unsupervised    | No labels                  | Customer grouping                              |
| Reinforcement   | Rewards/penalties          | Game playing                                   |
| Semi-supervised | Some labels                | Image classification with limited labeled data |

---

# 5. SUPERVISED LEARNING

## 5.1 What is Supervised Learning?

In supervised learning:

> **We give the model input data along with the correct answer (label).**

Think of a teacher teaching a student.

```text
Question → Correct Answer
Question → Correct Answer
Question → Correct Answer
```

The student learns from these examples.

Similarly:

```text
Input + Label
     ↓
ML Algorithm
     ↓
Learned Model
```

---

# 5.2 Classification

Classification means:

> Predicting a **category**.

The output is not a continuous number. It belongs to a class/category.

### Example: Spam detection

Input:

```text
Email
```

Output:

```text
Spam
```

or:

```text
Not Spam
```

---

### Example: Cancer diagnosis

Input:

```text
Medical test information
```

Output:

```text
Cancer
or
No Cancer
```

---

### Example: Image classification

Input:

```text
Image
```

Output:

```text
Cat
Dog
Car
Person
```

---

## Classification = Category

Remember:

```text
Classification → Class
```

Examples:

```text
Spam / Not Spam
Yes / No
Cat / Dog
Fraud / Normal
```

---

# 5.3 Regression

Regression means:

> Predicting a **continuous numerical value**.

Examples:

```text
House price
Car price
Temperature
Salary
Stock value
```

### Example

Input:

```text
House size = 2000 sq ft
Bedrooms = 3
Location = Chennai
```

Output:

```text
₹80,00,000
```

The output is a number.

Therefore:

```text
Regression → Number
```

---

# 5.4 Classification vs Regression

This is extremely important.

| Classification    | Regression      |
| ----------------- | --------------- |
| Predicts category | Predicts number |
| Spam/Not Spam     | House price     |
| Cat/Dog           | Temperature     |
| Fraud/Normal      | Salary          |
| Cancer/No Cancer  | Car price       |

### Memory trick

> **Classification = Class**

> **Regression = Real number**

---

# 5.5 Multi-Dimensional Features

A model can use multiple input features.

Suppose we predict house price.

Features could be:

```text
x₁ = House size
x₂ = Number of bedrooms
x₃ = Age
x₄ = Location score
x₅ = Distance from city
```

So one house can be represented as:

```text
x = [2000, 3, 5, 8, 10]
```

Each number represents one feature.

The model uses these features to make a prediction.

---

# 5.6 Supervised Learning Algorithms

Your syllabus lists:

### 1. Linear Regression

Used mainly for predicting continuous numerical values.

Example:

```text
House features → House price
```

---

### 2. Logistic Regression

Despite its name, it is commonly used for **classification**.

Example:

```text
Customer information
       ↓
Logistic Regression
       ↓
Will leave / Will not leave
```

---

### 3. Naïve Bayes

A probabilistic classification algorithm.

Common applications include:

* Spam detection
* Text classification
* Document classification

---

### 4. SVM

SVM = **Support Vector Machine**

It tries to find a boundary that separates different classes.

For example:

```text
Class A     |     Class B

● ● ●       |       ▲ ▲ ▲
● ● ●       |       ▲ ▲ ▲
● ● ●       |       ▲ ▲ ▲
```

The boundary separates the classes.

---

### 5. Decision Trees

A decision tree makes decisions using a sequence of questions.

Example:

```text
Is income > ₹50,000?
        |
      Yes
        |
Is credit score > 700?
     /       \
   Yes       No
   ↓          ↓
Approve     Reject
```

---

### 6. Neural Networks

Neural networks are ML models inspired loosely by the structure of biological neurons.

They are widely used for:

* Image recognition
* Speech recognition
* Natural language processing
* Deep learning

---

# 6. UNSUPERVISED LEARNING

## 6.1 What is Unsupervised Learning?

In unsupervised learning:

> **We give the machine data without providing the correct answers/labels.**

Example:

```text
Customer A
Customer B
Customer C
Customer D
Customer E
```

We don't tell the model which customers belong together.

The algorithm tries to discover groups or structures itself.

---

# 6.2 Clustering

Clustering means:

> Grouping similar data points together.

Imagine customers:

```text
Customer 1 → young, low spending
Customer 2 → young, low spending
Customer 3 → older, high spending
Customer 4 → older, high spending
```

An algorithm may discover:

```text
Group 1
Young + low spending

Group 2
Older + high spending
```

We didn't provide the group labels.

The algorithm discovered them.

---

# 6.3 K-Means

K-Means is a popular clustering algorithm.

Basic idea:

```text
Data
 ↓
Choose K groups
 ↓
Find group centers
 ↓
Assign points to nearest center
 ↓
Update centers
 ↓
Repeat
```

Example:

```text
● ● ●          ▲ ▲ ▲
● ● ●          ▲ ▲ ▲
```

K-Means might identify two clusters.

---

# 6.4 Hierarchical Clustering

Hierarchical clustering creates a hierarchy of groups.

It can be represented using a tree-like structure called a **dendrogram**.

Conceptually:

```text
        All Data
        /      \
    Group A   Group B
    /   \      /   \
   A1   A2    B1   B2
```

---

# 6.5 Dimensionality Reduction

Suppose our dataset contains:

```text
100 features
```

Working with 100 features can be difficult.

Dimensionality reduction tries to represent the important information using fewer dimensions.

For example:

```text
100 features
     ↓
PCA
     ↓
10 important dimensions
```

---

## PCA

PCA = **Principal Component Analysis**

It finds directions that capture important variation in the data.

Uses include:

* Visualization
* Noise reduction
* Feature compression
* Simplifying datasets

---

## t-SNE

t-SNE is another dimensionality reduction technique, especially useful for visualizing high-dimensional data.

For example:

```text
High-dimensional data
        ↓
       t-SNE
        ↓
      2D plot
```

Then we may visually see groups.

---

# 6.6 Applications of Unsupervised Learning

### Recommendation

Discover patterns in user behavior.

### Customer Segmentation

Group customers with similar characteristics.

Example:

```text
Group 1 → Budget customers
Group 2 → Premium customers
Group 3 → Occasional customers
```

---

# 7. REINFORCEMENT LEARNING

This is different from supervised and unsupervised learning.

## 7.1 Basic Idea

Reinforcement Learning involves:

```text
Agent
  ↓
Environment
  ↓
Action
  ↓
Reward/Penalty
  ↓
Learn
```

---

# 7.2 Agent

The **agent** is the learner.

Examples:

* Robot
* Game-playing computer
* Autonomous system

---

# 7.3 Environment

The environment is the world in which the agent operates.

For a chess-playing AI:

```text
Environment = Chess board + game state
```

---

# 7.4 Action

The agent performs an action.

Chess example:

```text
Move the queen
```

Robot example:

```text
Move forward
```

---

# 7.5 Reward

The environment gives feedback.

Good action:

```text
+10 reward
```

Bad action:

```text
-10 penalty
```

The agent tries to learn actions that maximize long-term reward.

---

# 7.6 Example: Game Playing

Imagine teaching a robot to play a game.

Initially:

```text
Robot doesn't know what to do.
```

It tries an action.

Maybe:

```text
Move left → -1
```

Try another:

```text
Move right → +5
```

Over many attempts, it learns which actions are useful.

This is:

> **Trial-and-error learning.**

---

# 7.7 Sequential Decision Making

Reinforcement Learning is often about a sequence of decisions.

For example:

```text
State 1
 ↓
Action
 ↓
State 2
 ↓
Action
 ↓
State 3
 ↓
Reward
```

The agent must consider not only the immediate reward but also future rewards.

---

# 8. TYPES BASED ON TRAINING DATA USAGE

Your syllabus has:

1. Batch Learning
2. Mini-Batch Learning
3. Online Learning

The key question is:

> **How much data does the model use at a time?**

---

# 8.1 Batch Learning

Batch learning uses the entire training dataset at once.

Example:

```text
1,000,000 training examples
        ↓
     Model
```

The model trains using the whole dataset.

### Advantage

Can provide stable learning.

### Disadvantage

Can be expensive when the dataset is huge.

---

# 8.2 Mini-Batch Learning

Instead of using all the data at once, divide it into smaller groups.

Example:

```text
1,000,000 examples

Batch 1 → 1000 examples
Batch 2 → 1000 examples
Batch 3 → 1000 examples
...
```

The model processes one mini-batch at a time.

Mini-batch learning is extremely common in modern neural network training.

---

# 8.3 Online Learning

Online learning processes data incrementally, often one example at a time.

Example:

```text
Data 1 → Update model
Data 2 → Update model
Data 3 → Update model
Data 4 → Update model
...
```

Useful when:

* Data arrives continuously
* Dataset is too large to store/process all at once
* We want the model to adapt quickly

---

# 8.4 Comparison

| Type       | Data processed         |
| ---------- | ---------------------- |
| Batch      | All data               |
| Mini-batch | Small groups           |
| Online     | One instance at a time |

### Memory trick

```text
Batch       → Everything
Mini-batch  → Small group
Online      → One at a time
```

---

# 9. INSTANCE-BASED VS MODEL-BASED LEARNING

This is another important classification.

---

# 9.1 Instance-Based Learning

Instance-based learning:

> Stores or uses known examples and compares new data with those examples.

A famous example is:

**K-Nearest Neighbors (KNN)**

Suppose we have:

```text
● ● ●        ▲ ▲ ▲
● ● ●        ▲ ▲ ▲
```

A new point appears:

```text
      ?
```

KNN looks at nearby known points.

If most nearby points are:

```text
●
```

then the new point is classified as:

```text
●
```

So:

> **Instance-based learning = compare with known examples.**

---

# 9.2 Model-Based Learning

Model-based learning:

> Learns a general mathematical/model representation from the training data.

Example:

```text
Training data
     ↓
Learning algorithm
     ↓
Model
     ↓
New data
     ↓
Prediction
```

Linear Regression is an example.

It learns a relationship such as:

```text
Price ≈ w₁ × size + w₂ × bedrooms + b
```

The model doesn't need to directly compare every new house with every old house.

---

# 9.3 Instance vs Model-Based

| Instance-Based                          | Model-Based               |
| --------------------------------------- | ------------------------- |
| Uses known examples directly            | Learns a model            |
| Compares new data to existing instances | Uses learned patterns     |
| KNN                                     | Linear Regression         |
| Can require storing many examples       | Model summarizes patterns |

### Memory trick

> **Instance = Remember examples**

> **Model = Learn a rule/pattern**

---

# 10. ML WORKFLOW ⭐⭐⭐

This is one of the **most important topics in your entire Module 1**.

A typical ML project follows:

```text
1. Should I use ML?
        ↓
2. Gather data
        ↓
3. Clean & preprocess data
        ↓
4. Explore/visualize data
        ↓
5. Choose model
        ↓
6. Train/optimize
        ↓
7. Tune hyperparameters
        ↓
8. Evaluate
        ↓
9. Improve and repeat
```

Let's understand every step.

---

# 10.1 Step 1 — Should I Use ML?

Before writing code, ask:

### Is there a pattern?

Example:

```text
Customer behavior → Customer churn
```

There may be patterns.

### Do I have enough data?

If we have:

```text
10 examples
```

it may be difficult to learn complex patterns.

If we have:

```text
1 million examples
```

we have much more information.

### Can we measure success?

We need a performance measure.

---

# 10.2 Step 2 — Gather and Organize Data

Collect relevant data.

For car price prediction:

```text
Car age
Mileage
Brand
Engine
Location
Previous selling price
```

Organize the data into a dataset.

---

# 10.3 Step 3 — Preprocessing

Raw data is often messy.

Examples:

```text
Missing values
Duplicate records
Wrong values
Different units
Text instead of numbers
Outliers
```

We need to clean the data.

---

# 10.4 Visualization

We can visualize data to understand patterns.

Examples:

* Scatter plots
* Histograms
* Box plots
* Correlation plots

For example:

```text
House Size
    ↑
    |       ●
    |    ●
    |  ●
    | ●
    +--------------→ Price
```

This might suggest a relationship between size and price.

---

# 10.5 Train/Test Split

This is extremely important.

Suppose we have:

```text
1000 records
```

We might divide them into:

```text
Training data → 800
Test data     → 200
```

### Training data

Used to teach the model.

### Test data

Used to evaluate how well the model performs on unseen data.

### Why?

We don't want to test the student using the exact questions they memorized.

Similarly:

> We want to know whether the ML model can generalize to new data.

---

# 10.6 Step 4 — Choose a Model

Choose an appropriate algorithm.

For example:

```text
House price prediction
        ↓
Linear Regression
```

For spam classification:

```text
Spam detection
        ↓
Naïve Bayes / SVM / Logistic Regression
```

---

# 10.7 Loss Function

A loss function measures how wrong the model's prediction is.

Suppose actual price:

```text
₹50 lakh
```

Predicted:

```text
₹45 lakh
```

There is an error.

A loss function converts prediction errors into a numerical value.

Generally:

```text
Lower loss
    ↓
Better prediction
```

---

# 10.8 Regularization

Regularization helps prevent the model from becoming unnecessarily complex and **overfitting** the training data.

Think:

```text
Too simple
    ↓
Underfitting

Good balance
    ↓
Good generalization

Too complex
    ↓
Overfitting
```

Regularization encourages simpler models.

---

# 10.9 Optimization

Optimization means:

> Finding model parameters that make the loss as small as possible.

For example:

```text
Initial model
     ↓
Calculate loss
     ↓
Adjust parameters
     ↓
Calculate loss again
     ↓
Repeat
```

A common optimization algorithm is:

**Gradient Descent**

You will likely study this in more detail in later modules.

---

# 10.10 Hyperparameter Search

A **parameter** is learned by the model.

A **hyperparameter** is a setting chosen before/during training rather than learned directly from the training process.

Examples:

* Learning rate
* Number of trees
* K in KNN
* Regularization strength

We can try different values:

```text
Learning rate = 0.1
Learning rate = 0.01
Learning rate = 0.001
```

Then choose the setting that performs best using appropriate validation procedures.

---

# 10.11 Analyze Performance and Iterate

After evaluating the model:

```text
Performance good?
       |
   Yes → Deploy/use
       |
   No
       ↓
Improve
       ↓
Collect better data
       ↓
Preprocess again
       ↓
Try another model
       ↓
Tune parameters
```

Machine Learning is usually an **iterative process**.

---

# 11. EXAMPLE — CAR PRICE PREDICTION

This example combines many Module 1 concepts.

Suppose we want to predict the price of a used car.

---

## Step 1 — Define Objective

Goal:

> Predict the selling price of a used car.

Output:

```text
₹8,50,000
```

This is a **regression problem** because the output is numerical.

---

# Step 2 — Gather Data

Collect historical car data.

Example:

| Age | Mileage | Engine | Price |
| --: | ------: | -----: | ----: |
|   2 |  20,000 |   1.5L |  ₹10L |
|   4 |  40,000 |   1.5L |   ₹8L |
|   6 |  70,000 |   1.2L |   ₹5L |
|   3 |  25,000 |   2.0L |  ₹12L |

---

# Step 3 — Data Preprocessing

Check:

* Missing values
* Duplicate records
* Incorrect values
* Outliers
* Data types

Example:

```text
Mileage = "unknown"
```

We need to handle it.

---

# Step 4 — Train/Test Split

Suppose:

```text
80% → Training
20% → Testing
```

Training data teaches the model.

Test data evaluates it.

---

# Step 5 — Exploratory Data Analysis

Look for relationships.

For example:

```text
Age ↑
Price ↓
```

Maybe older cars tend to be cheaper.

Also:

```text
Mileage ↑
Price ↓
```

may be observed.

---

# Step 6 — Choose Model

We could start with:

**Linear Regression**

Conceptually:

```text
Price =
w₁(Age)
+ w₂(Mileage)
+ w₃(Engine)
+ b
```

The model learns the values of:

```text
w₁
w₂
w₃
b
```

---

# Step 7 — Train/Optimize

The model makes predictions.

Then calculate the loss.

Then optimize the parameters.

```text
Prediction
    ↓
Calculate error
    ↓
Update parameters
    ↓
Repeat
```

---

# Step 8 — Evaluate

Use the test data.

For example:

```text
Actual price:     ₹10L
Predicted price:  ₹9.5L
```

Calculate an appropriate error metric.

---

# Step 9 — Improve

Maybe:

```text
Linear Regression → performance not good
```

We could try:

```text
Decision Tree
Random Forest
Neural Network
```

depending on the problem and syllabus.

Then compare performance.

---

# 12. ML TOOLS

Your syllabus mentions five important tools.

## 12.1 Scikit-Learn

A popular Python library for traditional machine learning.

Used for:

* Regression
* Classification
* Clustering
* Preprocessing
* Model evaluation

---

## 12.2 PyTorch

A popular deep-learning framework.

Used heavily for:

* Neural networks
* Deep learning
* Research
* Computer vision
* NLP

---

## 12.3 TensorFlow

A machine learning/deep learning framework developed by Google.

Used for:

* Neural networks
* Deep learning
* Large-scale ML systems

---

## 12.4 Weka

Weka is a machine learning software/toolkit that is especially useful for learning and experimenting with ML algorithms through a graphical interface.

---

## 12.5 Keras

Keras provides a high-level API for building and training neural networks.

It can work with modern deep-learning backends and is designed to make neural network development easier.

---

# ⭐ COMPLETE MODULE 1 MIND MAP

```text
                         MACHINE LEARNING
                                |
       -------------------------------------------------
       |                    |                          |
   WHY ML?              TYPES OF ML              APPLICATIONS
       |                    |                          |
  Complex patterns    ----------------          ----------------
  Large data          |      |      |           |      |      |
  Changing rules     Sup.   Unsup.  RL       Fraud  Chatbots  Recommender
                     |        |      |
               Classification Clustering Rewards
               Regression     PCA       Agent
                              t-SNE     Environment
                                         Action
                                         Reward

                                |
                         ML WORKFLOW
                                |
          ---------------------------------------------
          |        |          |        |       |       |
        Data   Preprocess   Model    Loss  Optimize  Evaluate
          |                                         |
          -------------------------------------------
                         Iterate/Improve
```

# ⭐ Most Important Comparisons for Exam

## Supervised vs Unsupervised

| Supervised                         | Unsupervised             |
| ---------------------------------- | ------------------------ |
| Labels available                   | No labels                |
| Learns input → output relationship | Finds hidden patterns    |
| Classification                     | Clustering               |
| Regression                         | Dimensionality reduction |
| Spam detection                     | Customer segmentation    |

---

## Classification vs Regression

| Classification  | Regression       |
| --------------- | ---------------- |
| Category output | Numerical output |
| Spam/Not Spam   | House price      |
| Cat/Dog         | Temperature      |
| Fraud/Normal    | Salary           |

**Remember:**

> Classification → Class
> Regression → Number

---

## Batch vs Mini-Batch vs Online

| Batch                    | Mini-Batch   | Online                 |
| ------------------------ | ------------ | ---------------------- |
| All data                 | Small subset | One instance at a time |
| Slower for huge datasets | Very common  | Continuous/incremental |
| Large computation        | Balanced     | Fast updates           |

---

## Instance-Based vs Model-Based

| Instance-Based                   | Model-Based                |
| -------------------------------- | -------------------------- |
| Uses examples directly           | Learns a model             |
| KNN                              | Linear Regression          |
| Compare new data with known data | Apply learned relationship |

---

# ⭐⭐⭐ TOP EXAM QUESTIONS TO PREPARE

I would especially prepare these:

### 1. Define Machine Learning.

Know the definition and explain it with an example.

### 2. Explain the T-P-E framework.

Remember:

```text
T = Task
P = Performance
E = Experience
```

### 3. Traditional programming vs Machine Learning.

Be able to explain the spam-filter example.

### 4. When should ML be used and when should it not be used?

Give practical examples.

### 5. Explain the applications of Machine Learning.

Know:

* Fraud detection
* Self-driving cars
* Customer support
* Recommendation systems
* Pattern recognition
* Optimization
* Decision systems

### 6. Explain the four types of Machine Learning.

```text
Supervised
Unsupervised
Reinforcement
Semi-supervised
```

### 7. Classification vs Regression.

This is **very important**.

### 8. Explain supervised learning algorithms.

Know the basic purpose of:

* Linear Regression
* Logistic Regression
* Naïve Bayes
* SVM
* Decision Trees
* Neural Networks

### 9. Explain unsupervised learning.

Especially:

* K-Means
* Hierarchical Clustering
* PCA
* t-SNE

### 10. Explain Reinforcement Learning.

Remember:

```text
Agent
  ↓
Action
  ↓
Environment
  ↓
Reward/Penalty
  ↓
Learning
```

### 11. Explain Batch, Mini-Batch and Online Learning.

### 12. Explain Instance-Based vs Model-Based Learning.

### 13. Explain the ML Workflow.

This is **⭐⭐⭐ extremely important**:

```text
Should I use ML?
       ↓
Gather data
       ↓
Clean/preprocess
       ↓
Visualize
       ↓
Choose model
       ↓
Choose loss/regularization
       ↓
Optimize
       ↓
Tune hyperparameters
       ↓
Evaluate
       ↓
Iterate
```

### 14. Explain the complete Car Price Prediction example.

This single example can help you connect many concepts:

```text
Objective
   ↓
Data
   ↓
Preprocessing
   ↓
Train/Test Split
   ↓
EDA
   ↓
Linear Regression
   ↓
Loss
   ↓
Optimization
   ↓
Evaluation
   ↓
Improvement
```

---

# 🧠 The Most Important Things to Understand

Don't try to memorize all 47 subtopics separately.

Build these **10 mental connections**:

```text
1. ML = Learn patterns from data

2. TPE = Task + Performance + Experience

3. Supervised = Answers/Labels available

4. Unsupervised = No answers/Labels

5. Reinforcement = Rewards/Penalties

6. Classification = Category

7. Regression = Number

8. Instance-Based = Compare examples

9. Model-Based = Learn a model

10. ML Workflow = Data → Model → Optimize → Evaluate → Improve
```


