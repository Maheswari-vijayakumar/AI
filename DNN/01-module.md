# 🧠 Module 1: Introduction to Deep Learning & Perceptron

## 📅 Sessions Covered: 1-2 | ⏱️ Study Time: 4 Hours | 📊 Exam Weight: ⭐⭐⭐

### 📋 Topics Checklist

| ✓ | Topic | Importance | Time |
|---|-------|------------|------|
| ☐ | Deep Learning Definition & Hierarchy | ⭐⭐ | 20 min |
| ☐ | Why Deep Learning Now? | ⭐⭐ | 15 min |
| ☐ | 4 Key Components (Data, Model, Loss, Optimizer) | ⭐⭐⭐ | 30 min |
| ☐ | Biological vs Artificial Neuron | ⭐⭐⭐ | 20 min |
| ☐ | Perceptron Model & Activation | ⭐⭐⭐⭐ | 30 min |
| ☐ | Perceptron Learning Algorithm | ⭐⭐⭐⭐ | 30 min |
| ☐ | Logic Gates (AND, OR, NOT) | ⭐⭐⭐⭐⭐ | 45 min |
| ☐ | XOR Problem & MLP Solution | ⭐⭐⭐⭐⭐ | 30 min |

**Reference**: T1 - Chapter 1, Class Notes

---

## Part 1: What is Deep Learning?

### 🎯 Key Definition
> **Deep Learning** = Machine Learning using neural networks with **multiple layers** to learn hierarchical representations from data.

### 🏗️ The AI Hierarchy
```
┌─────────────────────────────────────┐
│      Artificial Intelligence        │  ← Broad field (making machines smart)
│  ┌─────────────────────────────┐    │
│  │    Machine Learning         │    │  ← Learning from data
│  │  ┌─────────────────────┐    │    │
│  │  │   Deep Learning     │    │    │  ← Neural networks with many layers
│  │  └─────────────────────┘    │    │
│  └─────────────────────────────┘    │
└─────────────────────────────────────┘
```

### 🌟 Why Deep Learning Now?
| Factor | Explanation |
|--------|-------------|
| **Big Data** | Massive datasets (images, text, audio) |
| **Compute Power** | GPUs, TPUs, distributed computing |
| **Better Algorithms** | Improved architectures & training methods |
| **Open Tools** | TensorFlow, PyTorch freely available |

### 💡 Real-World Analogy
Think of DL like a **factory assembly line**:
- Raw materials (input data) enter
- Each station (layer) does a specific transformation
- Final product (prediction) comes out

---

## Part 2: Core Components of Deep Learning

### 🔧 The Four Pillars

```
┌──────────┐    ┌──────────┐    ┌──────────┐    ┌──────────┐
│   DATA   │───▶│  MODEL   │───▶│   LOSS   │───▶│OPTIMIZER │
│          │    │          │    │ FUNCTION │    │          │
└──────────┘    └──────────┘    └──────────┘    └──────────┘
   Input         Transform       Measure          Improve
```

| Component | Purpose | Example |
|-----------|---------|---------|
| **Data** | What we learn from | Images with labels |
| **Model** | Transforms input to output | Neural network |
| **Loss Function** | Measures "how wrong" | MSE, Cross-Entropy |
| **Optimizer** | Updates weights to reduce loss | Gradient Descent |

---

## Part 3: Biological vs Artificial Neuron ⭐⭐⭐

### 🧬 Side-by-Side Comparison

| Biological Neuron | Artificial Neuron |
|-------------------|-------------------|
| Dendrites receive signals | Inputs (x₁, x₂, ..., xₙ) |
| Synapse strength | Weights (w₁, w₂, ..., wₙ) |
| Cell body sums signals | Weighted sum: z = Σwᵢxᵢ + b |
| Axon fires if threshold met | Activation function: a = f(z) |

### 📐 Mathematical Model

```
                x₁ ──(w₁)──┐
                           │
                x₂ ──(w₂)──┼──► Σ + b ──► f(z) ──► Output
                           │
                xₙ ──(wₙ)──┘

        z = w₁x₁ + w₂x₂ + ... + wₙxₙ + b
        output = f(z)   [f is activation function]
```

---

## Part 4: Perceptron ⭐⭐⭐⭐⭐

### 🎯 What is Perceptron?
> Simplest neural network - single neuron for **binary classification**

### 📐 Perceptron Formula

```
Output = f(z) where z = w₁x₁ + w₂x₂ + ... + wₙxₙ + b

f(z) = { 1  if z ≥ 0
       { 0  if z < 0     [Step activation]
```

### ⚡ Perceptron Learning Algorithm

```python
# Initialize weights and bias
w = [0, 0, ..., 0], b = 0

# For each epoch:
for each training example (x, y_true):
    z = w·x + b
    y_pred = 1 if z >= 0 else 0
    
    if y_pred != y_true:
        w = w + η * (y_true - y_pred) * x
        b = b + η * (y_true - y_pred)
```
Where η = learning rate

---

## Part 5: Logic Gates with Perceptron ⭐⭐⭐⭐⭐ (MID-SEM IMPORTANT!)

### AND Gate
| x₁ | x₂ | Output |
|----|----|----|
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

**Solution**: w₁ = 1, w₂ = 1, b = -1.5
- z = x₁ + x₂ - 1.5
- Output = 1 only when x₁=1 AND x₂=1

### OR Gate
| x₁ | x₂ | Output |
|----|----|----|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 1 |

**Solution**: w₁ = 1, w₂ = 1, b = -0.5
- z = x₁ + x₂ - 0.5
- Output = 1 when x₁=1 OR x₂=1

### NOT Gate
**Solution**: w₁ = -1, b = 0.5
- z = -x₁ + 0.5
- Output = 1 when x₁ = 0

### ❌ XOR Gate - THE PROBLEM!
| x₁ | x₂ | Output |
|----|----|----|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

**Cannot be solved by single perceptron!** (Not linearly separable)

**Solution**: Use 2-layer network (MLP)
```
XOR = (x₁ AND NOT x₂) OR (NOT x₁ AND x₂)
    = (x₁ OR x₂) AND NOT(x₁ AND x₂)
```

---

## 📝 Practice Problem 1 (From Mid-Sem 2026)

**Q2**: Design a 2-layer perceptron network to implement:
**F(x₁,x₂,x₃,x₄) = (x₁ ∧ x₂) ∨ (x₃ ∧ x₄)**

<details>
<summary>📖 Click for Solution</summary>

### Step 1: Decompose the Boolean function
- **Hidden Layer**:
  - h₁ = AND(x₁, x₂)
  - h₂ = AND(x₃, x₄)
- **Output Layer**:
  - y = OR(h₁, h₂)

### Step 2: Derive weights for AND gate
For AND gate: output = 1 only when both inputs = 1
- Need: w₁(1) + w₂(1) + b ≥ 0 → 2w + b ≥ 0
- Need: w₁(1) + w₂(0) + b < 0 → w + b < 0
- Need: w₁(0) + w₂(1) + b < 0 → w + b < 0
- Need: w₁(0) + w₂(0) + b < 0 → b < 0

**Solution**: w₁ = 1, w₂ = 1, b = -1.5

### Step 3: Derive weights for OR gate
For OR gate: output = 1 when at least one input = 1
- Need: w₁(1) + w₂(0) + b ≥ 0 → w + b ≥ 0
- Need: w₁(0) + w₂(0) + b < 0 → b < 0

**Solution**: w₁ = 1, w₂ = 1, b = -0.5

### Step 4: Network Diagram
```
x₁ ──(1)──┐
          ├──(AND: b=-1.5)──► h₁ ──(1)──┐
x₂ ──(1)──┘                             ├──(OR: b=-0.5)──► y
                                        │
x₃ ──(1)──┐                             │
          ├──(AND: b=-1.5)──► h₂ ──(1)──┘
x₄ ──(1)──┘
```

**Final Answer**:
| Neuron | w₁ | w₂ | b |
|--------|----|----|---|
| h₁ (AND) | 1 | 1 | -1.5 |
| h₂ (AND) | 1 | 1 | -1.5 |
| y (OR) | 1 | 1 | -0.5 |

</details>

---

## 🎴 Quick Reference Card

| Concept | Formula/Value |
|---------|---------------|
| Perceptron output | f(z) = 1 if z≥0, else 0 |
| Weighted sum | z = Σwᵢxᵢ + b |
| AND gate | w=[1,1], b=-1.5 |
| OR gate | w=[1,1], b=-0.5 |
| NOT gate | w=[-1], b=0.5 |
| XOR | Needs MLP (2 layers) |

---

## ⚠️ Common Mistakes to Avoid

1. **Forgetting bias term** - Always include b in calculations
2. **Wrong activation threshold** - Step function uses ≥0, not >0
3. **XOR confusion** - Single perceptron CANNOT learn XOR
4. **Sign errors** - Be careful with negative weights/biases

---

---

## Part 6: Supervised Learning Types ⭐⭐⭐

### 🎯 Types of ML Problems

| Type | Question | Output | Example |
|------|----------|--------|---------|
| **Regression** | How much? How many? | Continuous value | House price prediction |
| **Binary Classification** | Yes or No? | 0 or 1 | Spam detection |
| **Multi-class Classification** | Which category? | One of K classes | Digit recognition (0-9) |
| **Multi-label Classification** | Which categories? | Multiple labels | Image tagging |

### 📊 Applications Table (From Slides)

| Application | Input | Output | Network Type |
|-------------|-------|--------|--------------|
| Real Estate | House features | House Price | Standard NN |
| Photo Tagging | Image | Text labels | CNN |
| Speech Recognition | Audio | Text transcript | RNN |
| Translation | English text | French text | RNN/Transformer |
| Autonomous Driving | Image, Sensors | Object positions | Hybrid NN |

---

## Part 7: Linearly Separable Data ⭐⭐⭐⭐

### 🎯 What is Linear Separability?

> Data is **linearly separable** if a single straight line (or hyperplane) can separate the two classes.

```
Linearly Separable (AND):       NOT Linearly Separable (XOR):
    x₂                              x₂
    │   ○                           │   ●       ○
    │       ●                       │
    │                               │   ○       ●
    └──────────── x₁                └──────────── x₁

    Line can separate ○ and ●       No single line works!
```

### 💡 Key Insight
- **Perceptron** can ONLY solve linearly separable problems
- **XOR** is NOT linearly separable → Perceptron fails!
- **Solution**: Add hidden layer (MLP) to create non-linear decision boundary

---

## 📝 Practice Problem 2: Perceptron Learning Step-by-Step

**Problem**: Train a perceptron for AND gate using learning rate η = 1

**Initial**: w₁ = 0, w₂ = 0, b = 0

<details>
<summary>📖 Click for Step-by-Step Solution</summary>

### Training Data
| x₁ | x₂ | y (target) |
|----|----|------------|
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

### Epoch 1

**Sample 1**: x = [0, 0], y = 0
- z = 0×0 + 0×0 + 0 = 0
- ŷ = 1 (since z ≥ 0)
- Error! y - ŷ = 0 - 1 = -1
- Update: w₁ = 0 + 1×(-1)×0 = 0
- Update: w₂ = 0 + 1×(-1)×0 = 0
- Update: b = 0 + 1×(-1) = **-1**

**Sample 2**: x = [0, 1], y = 0
- z = 0×0 + 0×1 + (-1) = -1
- ŷ = 0 (since z < 0) ✓ Correct!

**Sample 3**: x = [1, 0], y = 0
- z = 0×1 + 0×0 + (-1) = -1
- ŷ = 0 ✓ Correct!

**Sample 4**: x = [1, 1], y = 1
- z = 0×1 + 0×1 + (-1) = -1
- ŷ = 0, but y = 1 → Error!
- Update: w₁ = 0 + 1×(1)×1 = **1**
- Update: w₂ = 0 + 1×(1)×1 = **1**
- Update: b = -1 + 1×(1) = **0**

**After Epoch 1**: w₁ = 1, w₂ = 1, b = 0

### Continue training until convergence...
(After several epochs, weights will converge to valid AND gate values)

</details>

---

## 📝 Practice Problem 3: Design NAND Gate

**Problem**: Find weights and bias for NAND gate (NOT AND)

| x₁ | x₂ | NAND Output |
|----|----|-------------|
| 0 | 0 | 1 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

<details>
<summary>📖 Click for Solution</summary>

### Analysis
NAND is opposite of AND:
- Output = 0 only when BOTH inputs are 1
- Output = 1 otherwise

### Constraints (with f(z) = 1 if z ≥ 0)
- (0,0): w₁(0) + w₂(0) + b ≥ 0 → **b ≥ 0**
- (0,1): w₁(0) + w₂(1) + b ≥ 0 → **w₂ + b ≥ 0**
- (1,0): w₁(1) + w₂(0) + b ≥ 0 → **w₁ + b ≥ 0**
- (1,1): w₁(1) + w₂(1) + b < 0 → **w₁ + w₂ + b < 0**

### Solution
Choose: **w₁ = -1, w₂ = -1, b = 1.5**

Verify:
- (0,0): 0 + 0 + 1.5 = 1.5 ≥ 0 ✓ → Output 1
- (0,1): 0 - 1 + 1.5 = 0.5 ≥ 0 ✓ → Output 1
- (1,0): -1 + 0 + 1.5 = 0.5 ≥ 0 ✓ → Output 1
- (1,1): -1 - 1 + 1.5 = -0.5 < 0 ✓ → Output 0

</details>

---

## 📝 Practice Problem 4: XOR using MLP

**Problem**: Show how XOR can be computed using AND, OR, NAND gates

<details>
<summary>📖 Click for Solution</summary>

### XOR Truth Table
| x₁ | x₂ | XOR |
|----|----|-----|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

### Boolean Expression
```
XOR(x₁, x₂) = (x₁ OR x₂) AND (NOT(x₁ AND x₂))
            = (x₁ OR x₂) AND NAND(x₁, x₂)
```

### 2-Layer Network
```
Layer 1 (Hidden):
  h₁ = OR(x₁, x₂)   → w=[1,1], b=-0.5
  h₂ = NAND(x₁, x₂) → w=[-1,-1], b=1.5

Layer 2 (Output):
  y = AND(h₁, h₂)   → w=[1,1], b=-1.5
```

### Verification
| x₁ | x₂ | h₁=OR | h₂=NAND | y=AND(h₁,h₂) |
|----|----|----|----|----|
| 0 | 0 | 0 | 1 | 0 |
| 0 | 1 | 1 | 1 | 1 |
| 1 | 0 | 1 | 1 | 1 |
| 1 | 1 | 1 | 0 | 0 |

✓ Matches XOR!

</details>

---

## 🎴 Quick Reference Card

| Concept | Formula/Value |
|---------|---------------|
| Perceptron output | f(z) = 1 if z≥0, else 0 |
| Weighted sum | z = Σwᵢxᵢ + b |
| Weight update | w = w + η(y - ŷ)x |
| Bias update | b = b + η(y - ŷ) |
| AND gate | w=[1,1], b=-1.5 |
| OR gate | w=[1,1], b=-0.5 |
| NOT gate | w=[-1], b=0.5 |
| NAND gate | w=[-1,-1], b=1.5 |
| XOR | Needs MLP (2 layers) |

### DL Components Summary
| Component | Role | Example |
|-----------|------|---------|
| Data | Training examples | (x, y) pairs |
| Model | Maps input → output | Neural network |
| Loss | Measures error | MSE, Cross-Entropy |
| Optimizer | Updates weights | Gradient Descent |

---

## ⚠️ Common Mistakes to Avoid

1. **Forgetting bias term** - Always include b in calculations
2. **Wrong activation threshold** - Step function uses ≥0, not >0
3. **XOR confusion** - Single perceptron CANNOT learn XOR
4. **Sign errors** - Be careful with negative weights/biases
5. **Update rule confusion** - Update only when prediction is WRONG
6. **Mixing up w and b updates** - b update doesn't multiply by x

---

## 🧪 Exam Tips for Module 1

### What to Expect
1. **Theory questions** (2-3 marks): AI/ML/DL hierarchy, 4 components
2. **Gate design** (5-6 marks): Design perceptron for Boolean function
3. **MLP network** (5-6 marks): Multi-layer network for compound function

### Key Skills Needed
- Derive weight inequalities from truth table
- Draw network diagrams with weights labeled
- Verify solution by checking all input combinations
- Explain why XOR needs hidden layer

---

## ✅ Self-Check Quiz

### Conceptual
- [ ] Can explain AI → ML → DL hierarchy
- [ ] Know 4 components of DL (Data, Model, Loss, Optimizer)
- [ ] Understand supervised vs unsupervised learning
- [ ] Can list DL applications with appropriate network types

### Technical
- [ ] Can write perceptron mathematical formula
- [ ] Can derive AND/OR/NAND weights from constraints
- [ ] Know perceptron learning algorithm steps
- [ ] Understand linear separability concept

### Problem Solving
- [ ] Can design perceptron for any 2-input Boolean function
- [ ] Can draw 2-layer perceptron network
- [ ] Can verify weights by checking all inputs
- [ ] Can explain why XOR needs hidden layer
