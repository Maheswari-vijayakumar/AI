# Machine Learning – Introduction

The following answer is prepared as **exam notes** based on the topics covered in **Tom M. Mitchell, *Machine Learning*, McGraw-Hill, Indian Edition, 1997**.

---

## 1. Objectives of Machine Learning

The main objectives of Machine Learning are:

1. **To enable computers to learn from experience**

   * Instead of explicitly programming every rule, a machine learns patterns from data or past experience.

2. **To improve performance automatically**

   * The system should perform a task better as it gains more experience.

3. **To make predictions and decisions**

   * Machine learning systems can predict unknown outcomes based on previously observed data.

4. **To discover useful patterns**

   * ML can identify hidden relationships and structures in large datasets.

5. **To develop intelligent systems**

   * It is used to build systems that can adapt to changing environments.

### Example

A spam email classifier learns from previously labelled emails:

| Experience                 | Task                                | Performance       |
| -------------------------- | ----------------------------------- | ----------------- |
| Previously labelled emails | Classify emails as spam or not spam | Accuracy improves |

Thus, the objective is to learn from experience and improve performance.

---

# 2. What is Machine Learning?

According to **Tom M. Mitchell**:

> **“A computer program is said to learn from experience E with respect to some class of tasks T and performance measure P if its performance at tasks in T, as measured by P, improves with experience E.”**

### The three important components are:

| Component                   | Meaning                              | Example: Chess Program  |
| --------------------------- | ------------------------------------ | ----------------------- |
| **T – Task**                | The task the system must perform     | Play chess              |
| **P – Performance Measure** | How performance is measured          | Percentage of games won |
| **E – Experience**          | Data or experience used for learning | Games played previously |

### Simple explanation

A machine learning program:

**Receives Experience (E) → Learns from it → Performs Task (T) → Performance measured using (P)**

### Example: Learning to Play Chess

* **Task (T):** Playing chess
* **Experience (E):** Playing many games
* **Performance Measure (P):** Percentage of games won

If the program wins more games after gaining experience, then it has **learned**.

---

# 3. Application Areas of Machine Learning

Machine Learning is used in many areas where computers need to learn patterns from data.

## 1. Medical Diagnosis

ML systems can help identify diseases based on:

* Symptoms
* Medical images
* Patient history
* Laboratory results

**Example:** Detecting whether a tumour is benign or malignant.

---

## 2. Speech Recognition

Machine learning helps computers recognize human speech.

**Applications:**

* Voice assistants
* Speech-to-text systems
* Voice-controlled devices

---

## 3. Image and Pattern Recognition

ML is used to identify objects and patterns in images.

**Examples:**

* Face recognition
* Handwriting recognition
* Object detection

---

## 4. Natural Language Processing

Machine learning helps computers understand and process human language.

**Examples:**

* Language translation
* Chatbots
* Text classification
* Sentiment analysis

---

## 5. Financial Applications

ML is used in:

* Credit scoring
* Fraud detection
* Stock market analysis
* Risk prediction

---

## 6. Recommendation Systems

ML learns user preferences and recommends relevant items.

**Examples:**

* Movie recommendations
* Product recommendations
* Music recommendations

---

## 7. Autonomous Vehicles and Robotics

Machine learning helps machines learn how to interact with their environment.

**Applications:**

* Self-driving cars
* Industrial robots
* Navigation systems

---

## 8. Manufacturing

ML is used for:

* Quality control
* Fault detection
* Predictive maintenance

---

## 9. Web Search and Information Filtering

ML helps filter and rank information.

**Examples:**

* Search engines
* Spam filtering
* Personalized content

---

# 4. Why is Machine Learning Important?

Machine Learning is important because many problems are difficult or impossible to solve by writing explicit programs.

## 1. Some problems cannot be explicitly programmed

For certain tasks, writing rules manually is very difficult.

### Example: Face Recognition

It is difficult to write rules such as:

> “If the eyes have this shape and the nose has this size, then identify the person.”

Instead, a machine can learn patterns from many examples.

---

## 2. Large amounts of data are available

Modern systems generate huge amounts of data.

Machine Learning helps:

* Analyze data
* Discover patterns
* Make predictions

---

## 3. Systems can improve automatically

Traditional programs follow fixed rules.

Machine learning systems can improve when more data or experience becomes available.

**Traditional Programming:**

**Rules + Data → Output**

**Machine Learning:**

**Data + Expected Output → Learning Algorithm → Model**

Then:

**New Data + Model → Prediction**

---

## 4. Adaptation to Changing Environments

ML systems can adapt when conditions change.

### Example:

A spam filter can learn about new types of spam emails.

---

## 5. Better Decision Making

Machine learning helps make predictions based on past data.

Examples include:

* Predicting customer behaviour
* Predicting disease
* Detecting fraud
* Forecasting demand

---

# 5. Design a Learning System

Designing a learning system involves several important steps.

According to the machine learning approach, we must clearly define:

1. **The learning problem**
2. **The training experience**
3. **The target function**
4. **The representation of the target function**
5. **The learning algorithm**

---

## Step 1: Choose the Training Experience

The first step is to decide what experience or data the system will learn from.

Questions include:

* What type of training examples are available?
* Does the system receive direct feedback?
* How representative is the training data?

### Example: Chess Program

The program may learn from:

* Games played against other players
* Recorded expert games
* Simulated games

---

## Step 2: Define the Target Function

The **target function** is the function that the system should learn.

It represents the desired output.

### General form:

$$
f: X \rightarrow Y
$$

Where:

* \(X\) = Input
* \(Y\) = Output

### Example: Email Classification

$$
f(email) \rightarrow \{spam,\ not\ spam\}
$$

The objective is to learn a function that correctly classifies new emails.

---

## Step 3: Choose a Representation for the Target Function

The learning system needs a way to represent the learned function.

Possible representations include:

* Decision trees
* Neural networks
* Linear functions
* Rules
* Polynomial functions

### Example

A simple linear representation is:

$$
y = w_0 + w_1x_1 + w_2x_2
$$

The learning algorithm determines suitable values for the weights:

$$
w_0,\ w_1,\ w_2
$$

---

## Step 4: Choose the Learning Algorithm

The learning algorithm is used to learn the target function from training examples.

Examples include:

* Decision tree learning
* Neural network learning
* Linear regression
* Bayesian learning

The algorithm searches for the best hypothesis that fits the training data.

---

## Step 5: Evaluate the Learned System

The performance of the system must be evaluated using a suitable performance measure.

Examples:

| Application       | Performance Measure             |
| ----------------- | ------------------------------- |
| Classification    | Accuracy                        |
| Spam detection    | Percentage correctly classified |
| Chess             | Percentage of games won         |
| Regression        | Prediction error                |
| Medical diagnosis | Diagnostic accuracy             |

---

## General Structure of a Learning System

| Stage                          | Description                    |
| ------------------------------ | ------------------------------ |
| **Training Data / Experience** | Provides examples for learning |
| **Learning Algorithm**         | Learns patterns from examples  |
| **Hypothesis / Model**         | Represents learned knowledge   |
| **New Input**                  | Given to the learned model     |
| **Prediction / Output**        | Final decision or prediction   |
| **Performance Measure**        | Evaluates the system           |

### Flow:

**Experience (Training Data)**
↓
**Learning Algorithm**
↓
**Learned Model / Hypothesis**
↓
**New Input**
↓
**Prediction**
↓
**Performance Evaluation**

---

# 6. Issues in Machine Learning

While designing and using machine learning systems, several important issues must be considered.

---

## 1. Choosing the Training Experience

The quality of learning depends heavily on the training data.

Important questions:

* Is enough data available?
* Is the data representative?
* Is the data accurate?
* Does the training data cover different situations?

### Problem:

Poor training data leads to poor learning.

---

## 2. Choosing the Target Function

We must clearly define what the system should learn.

### Example:

For a medical system:

$$
f(patient\ data) \rightarrow diagnosis
$$

If the target is not properly defined, the system may learn the wrong objective.

---

## 3. Choosing the Representation of the Target Function

The system must choose an appropriate hypothesis representation.

Examples:

* Decision trees
* Linear models
* Neural networks
* Rules

A representation that is too simple may fail to capture important relationships.

A representation that is too complex may memorize the training data.

---

## 4. Choosing the Learning Algorithm

Different learning algorithms have different strengths.

The selected algorithm should be suitable for:

* The type of data
* The learning task
* The available computational resources
* The required accuracy

---

## 5. Overfitting

**Overfitting** occurs when a model learns the training data too closely, including noise.

As a result:

* Training performance is high
* Performance on new data is poor

### Example:

The model memorizes questions instead of learning the underlying concepts.

---

## 6. Underfitting

**Underfitting** occurs when the model is too simple to learn the important patterns.

As a result:

* Poor performance on training data
* Poor performance on new data

---

## 7. Noise in Data

Real-world data may contain:

* Errors
* Incorrect values
* Missing information
* Random variations

Noise can reduce the accuracy of the learned model.

---

## 8. Limited Training Data

Sometimes sufficient training examples are not available.

Problems include:

* Poor generalization
* Unreliable predictions
* Difficulty learning complex patterns

---

## 9. Generalization

A learning system should not only perform well on training examples.

It should also perform well on **unseen examples**.

This ability is called **generalization**.

### Goal:

$$
\text{Good Performance on Training Data}
+
\text{Good Performance on New Data}
$$

---

## 10. Computational Complexity

Some learning algorithms require:

* Large memory
* High processing power
* Long training time

Therefore, computational efficiency is an important issue.

---

# Summary

| Topic                           | Key Points                                                                                                  |
| ------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| **Objective of ML**             | Enable computers to learn from experience and improve performance                                           |
| **Machine Learning**            | Learning from experience \(E\) for task \(T\), measured by performance \(P\)                                |
| **Applications**                | Medical diagnosis, speech recognition, image recognition, finance, robotics, recommendations                |
| **Importance**                  | Handles complex problems, learns from data, improves automatically, adapts to changes                       |
| **Designing a Learning System** | Choose experience, target function, representation, learning algorithm and performance measure              |
| **Issues in ML**                | Training data, target function, representation, algorithm, overfitting, underfitting, noise, generalization |

---

## Important Exam Definition ⭐

> **A computer program is said to learn from experience E with respect to some class of tasks T and performance measure P if its performance at tasks in T, as measured by P, improves with experience E.**

### Easy memory trick:

**E → T → P**

* **E = Experience**
* **T = Task**
* **P = Performance Measure**

This is the **most important basic definition of Machine Learning from Tom M. Mitchell**.
