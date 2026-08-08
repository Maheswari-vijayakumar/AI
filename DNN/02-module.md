# 🧠 Module 2: Artificial Neural Network & Perceptron

## 📅 Session Covered: 2 | ⏱️ Study Time: 4 Hours | 📊 Exam Weight: ⭐⭐⭐⭐⭐

---

## 📚 PDF Lecture Coverage (DNN_M2_ANN_Perceptron.pdf - 52 pages)

| PDF Page | Topic | Covered in Notes | Section |
|----------|-------|------------------|---------|
| 5-6 | How Humans Learn, Brain Facts | ✅ | Part 1 |
| 7-8 | Biological Neuron Structure | ✅ | Part 1 |
| 10-12 | Artificial Neuron Definition & Math | ✅ | Part 2 |
| 13 | Biological vs Artificial Neuron Comparison | ✅ | Part 3 |
| 15-17 | ANN Definition, Properties, When to Use | ✅ | Part 4 |
| 19-20 | Connectionism Model & Principles | ✅ | Part 5 |
| 22-23 | Perceptron Definition & Equation | ✅ | Part 6 |
| 25-28 | AND Gate with Perceptron | ✅ | Part 8 |
| 29-31 | OR Gate with Perceptron | ✅ | Part 8 |
| 33 | Perceptron Learning Algorithm | ✅ | Part 7 |
| 34-39 | NOT Gate Learning (Step-by-step) | ✅ | Worked Example |
| 41-42 | XOR Problem & Why Perceptron Fails | ✅ | Part 9 |
| 45-48 | Linearly Separable Data | ✅ | Part 10 |
| 50 | Key Concepts Summary | ✅ | Big Picture Summary |
| 51 | Practice Problems (OR, AND, NOR, NAND) | ✅ | Practice Problems 1-4 |

### 📝 Practice Problems from PDF (Page 51)

| # | Problem from PDF | Covered in Notes |
|---|------------------|------------------|
| 1 | Represent OR gate using Perceptron | ✅ Part 8 |
| 2 | Represent AND gate using Perceptron | ✅ Part 8, Practice Problem 3 |
| 3 | Represent NOR gate using Perceptron | ✅ Practice Problem 1 |
| 4 | Represent NAND gate using Perceptron | ✅ Practice Problem 2 |

**Syllabus Status**: This module is part of **Mid-Semester Exam (EC-2)** syllabus (Sessions 1-8)

---

### 📋 Topics Checklist

| ✓ | Topic | Importance | Time |
|---|-------|------------|------|
| ☐ | Biological Neuron Structure | ⭐⭐ | 15 min |
| ☐ | Artificial Neuron Mathematical Model | ⭐⭐⭐⭐ | 30 min |
| ☐ | Biological vs Artificial Neuron Comparison | ⭐⭐⭐ | 15 min |
| ☐ | Artificial Neural Network Properties | ⭐⭐⭐ | 20 min |
| ☐ | Connectionism Model | ⭐⭐ | 15 min |
| ☐ | Perceptron Model & Equation | ⭐⭐⭐⭐⭐ | 30 min |
| ☐ | Perceptron Learning Algorithm | ⭐⭐⭐⭐⭐ | 45 min |
| ☐ | Logic Gates (AND, OR, NOT) | ⭐⭐⭐⭐⭐ | 45 min |
| ☐ | XOR Problem & Linear Separability | ⭐⭐⭐⭐⭐ | 30 min |

**Reference**: Class Notes, T1 - Chapter 1

---

## 🎯 Previous Year Question (PYQ) Analysis for Module 2

### 📋 Questions from This Module

| Exam | Q.No | Topic | Marks | Type |
|------|------|-------|-------|------|
| **EC-2 (Mid-Sem 2026)** | Q2 | 2-Layer Perceptron for Boolean Function | 5 | Numerical + Diagram |

### 📝 EC-2 Q2 (Mid-Sem 2026) - EXACT QUESTION

> **Design a 2-layer perceptron network using multiple AND/OR gates to implement:**
> **F(x₁, x₂, x₃, x₄) = (x₁ ∧ x₂) ∨ (x₃ ∧ x₄)**
>
> Where x₁, x₂, x₃, x₄ ∈ {0,1} and activation function f(z) = 1 if z ≥ 0, f(z) = 0 if z < 0
>
> **(a)** Decompose the Boolean function into hidden layer and output layer operations. (1 mark)
> **(b)** Derive the inequalities for AND, OR gates using the perceptron model and determine suitable weights and bias. (3 marks)
> **(c)** Show the final weights, biases, and draw the 2-layer perceptron network. (1 mark)

**💡 What This Tells Us:**
- Perceptron gate design is **CONFIRMED exam topic**
- Must know how to **decompose Boolean functions**
- Must know how to **derive weight inequalities**
- Must be able to **draw network diagrams**

### 📊 Expected Question Patterns

Based on handout Session 2 topics and PYQ analysis:

| Topic | Likelihood | Question Type |
|-------|------------|---------------|
| Logic Gate Weights (AND/OR/NAND/NOR) | ⭐⭐⭐⭐⭐ | Derive weights from constraints |
| 2-Layer Network Design | ⭐⭐⭐⭐⭐ | Decompose + Draw network |
| Perceptron Learning Algorithm | ⭐⭐⭐⭐ | Step-by-step weight updates |
| XOR Problem Explanation | ⭐⭐⭐⭐ | Why perceptron fails |
| Bio vs Artificial Neuron | ⭐⭐⭐ | Theory comparison |
| Linear Separability | ⭐⭐⭐ | Conceptual explanation |

---

## 📖 Key Terminology (Beginner's Glossary)

| Term | Simple Meaning | Example |
|------|----------------|---------|
| **Neuron** | A tiny processing unit | Like a mini calculator |
| **Weight (w)** | How important an input is | Rating from 0 to 1 |
| **Bias (b)** | A default value added | Like a head start |
| **Activation** | The decision rule | Yes/No based on score |
| **Perceptron** | Simplest neuron type | Single decision maker |
| **Epoch** | One complete pass through all data | Going through all examples once |
| **Learning Rate (η)** | How fast we adjust | Big step vs small step |
| **Linearly Separable** | Can be divided by a straight line | Like splitting a paper with one cut |
| **Convergence** | When learning stops improving | When we've learned enough |

---

## Part 1: Biological Neuron ⭐⭐

### 💡 Simple Analogy: The Post Office
Think of your brain as a **giant post office**:
- Each **neuron** is like a postal worker
- **Dendrites** are like the mailbox where letters (signals) arrive
- The **cell body** is the worker who reads and processes all the mail
- The **axon** is like the outgoing mail chute
- **Synapses** are the doors connecting different workers

Just like a post office processes thousands of letters in parallel, your brain processes millions of signals simultaneously!

### 🧬 Brain Facts
| Property | Value |
|----------|-------|
| Number of neurons | ~10¹⁰ (10 billion) |
| Connections per neuron | ~10⁴ to 10⁵ |
| Neuron switching time | ~0.001 seconds |
| Scene recognition time | ~0.1 seconds |

> **Key Insight**: Only ~100 inference steps for recognition → Massive parallel computation!

### 🔬 Biological Neuron Structure

```
        Dendrites                    Axon Terminal
            │                              │
    ┌───────┴───────┐              ┌───────┴───────┐
    │   Receive     │              │   Transmit    │
    │   Signals     │              │   Output      │
    └───────┬───────┘              └───────┬───────┘
            │                              │
            ▼                              ▲
    ┌───────────────────────────────────────┐
    │            Cell Body (Soma)            │
    │         Process & Sum Signals          │
    └───────────────────────────────────────┘
```

| Component | Function |
|-----------|----------|
| **Dendrites** | Receive signals from other neurons |
| **Cell Body (Soma)** | Processes incoming signals |
| **Axon** | Transmits output signal |
| **Synapses** | Connection points between neurons |

---

## Part 2: Artificial Neuron ⭐⭐⭐⭐

### 💡 Simple Analogy: The Decision Maker

Imagine you're deciding **whether to go to a movie**:

| Factor (Input) | How Important? (Weight) | Your Situation |
|----------------|------------------------|----------------|
| Good reviews | Very important (0.8) | Yes (1) |
| Friend coming | Somewhat important (0.5) | No (0) |
| Ticket price OK | Important (0.6) | Yes (1) |
| Have free time | Critical (0.9) | Yes (1) |

**Your brain calculates**:
```
Score = 0.8×1 + 0.5×0 + 0.6×1 + 0.9×1 = 2.3

If Score > Threshold (say 1.5) → GO TO MOVIE! ✓
```

This is EXACTLY what an artificial neuron does:
- **Inputs** = factors to consider
- **Weights** = how important each factor is
- **Bias** = your general mood/threshold
- **Activation** = final yes/no decision

### 📐 Mathematical Model

```
         1 ──(b)───┐
                   │
        x₁ ──(w₁)──┤
                   │
        x₂ ──(w₂)──┼──► Σ ──► f(z) ──► ŷ
                   │
        xₙ ──(wₙ)──┘

    Step 1: Weighted Sum
    z = Σᵢ wᵢxᵢ + b = w₁x₁ + w₂x₂ + ... + wₙxₙ + b

    Step 2: Activation Function
    ŷ = f(z)
```

### 🎯 Key Components

| Component | Symbol | Role |
|-----------|--------|------|
| Inputs | x₁, x₂, ..., xₙ | Features/data |
| Weights | w₁, w₂, ..., wₙ | Importance of each feature |
| Bias | b (or w₀) | Threshold adjustment |
| Weighted Sum | z | Pre-activation value |
| Activation | f(z) | Non-linearity / decision |
| Output | ŷ | Prediction |

### 💡 Intuition
- **Weights** = How much attention to pay to each input
- **Bias** = How easy it is to activate (fire) the neuron
- **Activation** = The decision rule

---

## Part 3: Biological vs Artificial Neuron ⭐⭐⭐

| Biological Neuron | Artificial Neuron |
|-------------------|-------------------|
| Complex biochemical processes | Simple mathematical model |
| Analog signal processing | Digital computation |
| Adaptive synaptic strengths | Adjustable weights |
| Parallel processing | Parallel computation possible |
| Learning through experience | Learning through algorithms |
| Fault tolerant | Deterministic behavior |

> **Key Insight**: Artificial neurons are *simplified mathematical abstractions* that capture essential computational properties of biological neurons.

---

## Part 4: Artificial Neural Network (ANN) ⭐⭐⭐

### 🌐 Definition
> **ANN** = Computational model inspired by the human brain with interconnected neurons that process information.

```
    Input        Hidden Layers       Output
    Layer                            Layer
    
     ○ ──────────── ○ ──────────── ○
                    │
     ○ ──────────── ○ ──────────── ○
                    │
     ○ ──────────── ○ ──────────── ○
```

### 📋 Properties of ANN
1. Many neurons
2. Many weighted interconnections
3. Highly parallel, distributed processing
4. Automatic parameter/weight tuning

### 🤔 When to Use ANN?
| Condition | Example |
|-----------|---------|
| High-dimensional input | Raw sensor data, images |
| Noisy data | Data with errors |
| Unknown target function form | Complex patterns |
| Explainability not critical | Black-box acceptable |

**Applications**: Speech recognition, Image classification, Financial prediction

---

## Part 5: Connectionism Model ⭐⭐

### 🔗 Core Principles
1. Intelligence emerges from **simple processing neurons**
2. Knowledge stored in **connection weights**
3. Learning **modifies connection strengths**
4. **Parallel distributed processing**

> Named after Alan Turing's connectionist ideas!

---

## Part 6: The Perceptron ⭐⭐⭐⭐⭐

### 💡 Simple Analogy: The Strict Bouncer

Think of a perceptron as a **bouncer at a club**:

🚪 **The Club Rule**: "You can enter if your total score ≥ 0"

| What Bouncer Checks | Weight | Your Status |
|--------------------|--------|-------------|
| Dress code OK? | +2 | Yes (1) |
| On guest list? | +3 | No (0) |
| Age ≥ 21? | +2 | Yes (1) |
| **Base strictness** | -3 (bias) | Always applies |

**Bouncer's calculation**:
```
Score = 2×1 + 3×0 + 2×1 + (-3) = 2 + 0 + 2 - 3 = 1

Since 1 ≥ 0 → YOU'RE IN! ✓
```

The perceptron is this simple - it just checks if the weighted sum crosses a threshold!

### 🎯 Definition
> **Perceptron** = Simplest form of artificial neuron (Rosenblatt, 1958)

### 📐 Perceptron Equation

```
        1 ──(b)───┐
                  │
       x₁ ──(w₁)──┼──► Σ ──► Step Function ──► ŷ ∈ {0, 1}
                  │
       x₂ ──(w₂)──┘

    h = w₀ + w₁x₁ + w₂x₂ + ... + wₙxₙ = w₀ + Σᵢ wᵢxᵢ

    ŷ = { 1  if h ≥ 0
        { 0  if h < 0
```

**Note**: Some formulations use {-1, +1} instead of {0, 1}. Both are valid!

### 🔑 Vector Form

```
    x̃ = [1, x₁, x₂, ..., xₙ]ᵀ     (augmented input with 1 for bias)
    w = [w₀, w₁, w₂, ..., wₙ]ᵀ    (weights including bias)

    h = wᵀx̃ = w·x̃

    ŷ = { 1  if h ≥ 0
        { 0  if h < 0
```

---

## Part 7: Perceptron Learning Algorithm ⭐⭐⭐⭐⭐

### 💡 Simple Analogy: Learning from Mistakes

Imagine you're learning to **judge whether fruits are ripe**:

**Day 1**: You pick a green banana thinking it's ripe → WRONG!
- You learn: "Green color means NOT ripe" → Adjust your criteria

**Day 2**: You skip a yellow mango thinking it's unripe → WRONG!
- You learn: "Softness matters more than color" → Adjust again

**Day 3**: You correctly identify ripe fruits → No adjustment needed!

This is EXACTLY how perceptron learns:
- **Make prediction** → Check if correct
- **If wrong** → Adjust weights (learn from mistake)
- **If correct** → Keep weights same (no learning needed)
- **Repeat** until you get everything right!

### 🎓 What is Learning Rate (η)?

Think of η like **how big your corrections are**:
- **η = 1** (large): Big corrections → Learn fast but might overshoot
- **η = 0.1** (small): Small corrections → Learn slowly but more stable

Like adjusting a thermostat:
- Big adjustment (η=1): Turn dial a lot → might get too hot/cold
- Small adjustment (η=0.1): Turn dial a little → takes longer but more precise

### 📝 Algorithm Steps

```python
# PERCEPTRON LEARNING ALGORITHM

1. Initialize:
   - Learning rate η (e.g., η = 0.1 or 1)
   - Weights randomly: w₀, w₁, w₂, ..., wₙ = small random values (or 0)

2. For each training example (x, t):

   # Forward pass
   h = w₀ + w₁x₁ + w₂x₂ + ... + wₙxₙ
   ŷ = 1 if h ≥ 0 else 0

   # Check if prediction is wrong
   if ŷ ≠ t:
       # Update weights
       wᵢ(new) = wᵢ(old) + η(t - ŷ)xᵢ   for all i
       w₀(new) = w₀(old) + η(t - ŷ)      # bias update

3. Repeat until convergence or max iterations
```

### 🎯 Key Update Rule

```
wᵢ(new) = wᵢ(old) + η × (target - prediction) × xᵢ
```

| Scenario | t - ŷ | Weight Change |
|----------|-------|---------------|
| Correct prediction | 0 | No change |
| Should be 1, predicted 0 | +1 | Increase weights |
| Should be 0, predicted 1 | -1 | Decrease weights |

### ⚡ Convergence Theorem
> If data is **linearly separable**, Perceptron Learning Algorithm will converge in **finite steps**.

---

## Part 8: Logic Gates with Perceptron ⭐⭐⭐⭐⭐

### 💡 Why Logic Gates? The Building Blocks!

Logic gates are like **LEGO bricks** for computers:
- Just as you build complex structures from simple LEGO pieces
- Computers build complex decisions from simple AND, OR, NOT gates

If perceptron can learn these basic gates, it can potentially learn complex decisions!

### 🤔 How to Find Weights? The Constraint Method

**Step-by-step approach**:
1. Write the truth table
2. For each row, write what you NEED:
   - Output = 1 → Need: h ≥ 0
   - Output = 0 → Need: h < 0
3. Solve the inequalities to find w₀, w₁, w₂

### 🔷 AND Gate (From PDF Page 27-28)

| x₁ | x₂ | AND |
|----|----|-----|
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

**Constraints** (h = w₀ + w₁x₁ + w₂x₂):
- (0,0): w₀ + 0 + 0 < 0 → **w₀ < 0**
- (0,1): w₀ + 0 + w₂ < 0 → **w₀ + w₂ < 0**
- (1,0): w₀ + w₁ + 0 < 0 → **w₀ + w₁ < 0**
- (1,1): w₀ + w₁ + w₂ ≥ 0 → **w₀ + w₁ + w₂ ≥ 0**

**Solution from PDF**: **w₀ = -1, w₁ = 0.75, w₂ = 0.75**

(Alternative: w₀ = -1.5, w₁ = 1, w₂ = 1)

### 🔷 OR Gate (From PDF Page 30-31)

| x₁ | x₂ | OR |
|----|----|-----|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 1 |

**Constraints** (h = w₀ + w₁x₁ + w₂x₂):
- (0,0): w₀ + 0 + 0 < 0 → **w₀ < 0**
- (0,1): w₀ + 0 + w₂ ≥ 0 → **w₀ + w₂ ≥ 0**
- (1,0): w₀ + w₁ + 0 ≥ 0 → **w₀ + w₁ ≥ 0**
- (1,1): w₀ + w₁ + w₂ ≥ 0 (automatically satisfied)

**Solution from PDF**: **w₀ = -1, w₁ = 2, w₂ = 2**

(Alternative: w₀ = -0.5, w₁ = 1, w₂ = 1)

### 🔷 NOT Gate

| x₁ | NOT |
|----|-----|
| 0 | 1 |
| 1 | 0 |

**Constraints** (h = w₀ + w₁x₁):
- (0): w₀ ≥ 0
- (1): w₀ + w₁ < 0

**Solution**: w₀ = 0, w₁ = -1 (or w₀ = 0.5, w₁ = -1)

---

## 📝 Worked Example: NOT Gate Learning ⭐⭐⭐⭐⭐ (From PDF Pages 34-39)

**Problem**: Train perceptron for NOT gate using η = 1, initial weights w₀ = 0, w₁ = 0

> This is the **exact example from your lecture PDF** - follow these steps carefully!

<details>
<summary>📖 Click for Step-by-Step Solution</summary>

### Training Data
| x₁ | t (target) |
|----|------------|
| 0 | 1 |
| 1 | 0 |

### Epoch 1

**Example 1**: x₁ = 0, t = 1
```
h = w₁x₁ + w₀ = 0×0 + 0 = 0
ŷ = 1 (since h ≥ 0)
Is ŷ = t? YES (1 = 1) ✓ No update needed.
```

**Example 2**: x₁ = 1, t = 0
```
h = w₁x₁ + w₀ = 0×1 + 0 = 0
ŷ = 1 (since h ≥ 0)
Is ŷ = t? NO (1 ≠ 0) ✗ Update weights!

w₁(new) = w₁(old) + η(t - ŷ)x₁ = 0 + 1×(0-1)×1 = -1
w₀(new) = w₀(old) + η(t - ŷ) = 0 + 1×(0-1) = -1
```

**After Epoch 1**: w₁ = -1, w₀ = -1

### Epoch 2

**Example 1**: x₁ = 0, t = 1
```
h = (-1)×0 + (-1) = -1
ŷ = 0 (since h < 0)
Is ŷ = t? NO (0 ≠ 1) ✗ Update weights!

w₁(new) = -1 + 1×(1-0)×0 = -1
w₀(new) = -1 + 1×(1-0) = 0
```

**Example 2**: x₁ = 1, t = 0
```
h = (-1)×1 + 0 = -1
ŷ = 0 (since h < 0)
Is ŷ = t? YES (0 = 0) ✓ No update needed.
```

**After Epoch 2**: w₁ = -1, w₀ = 0

### Epoch 3 (Verification)

**Example 1**: x₁ = 0, t = 1
```
h = (-1)×0 + 0 = 0
ŷ = 1 (since h ≥ 0) ✓ Correct!
```

**Example 2**: x₁ = 1, t = 0
```
h = (-1)×1 + 0 = -1
ŷ = 0 (since h < 0) ✓ Correct!
```

### ✅ Algorithm Converges!
**Final weights**: w₁ = -1, w₀ = 0

</details>

---

## Part 9: XOR Problem ⭐⭐⭐⭐⭐

### 💡 Understanding XOR in Plain English

**XOR (Exclusive OR)** means "one or the other, but NOT both":

Real-life examples:
- 🚪 **Light switch**: Two switches control one light. Light is ON only if switches are in DIFFERENT positions
- 🍕 **Pizza choice**: "You can have pizza OR burger" (but not both!)
- 👫 **Dating**: "I'll go if you go, but not if we BOTH go or NEITHER goes"

| x₁ | x₂ | XOR | Plain English |
|----|----|-----|---------------|
| 0 | 0 | 0 | Neither → OFF |
| 0 | 1 | 1 | Only x₂ → ON |
| 1 | 0 | 1 | Only x₁ → ON |
| 1 | 1 | 0 | Both → OFF |

### ❌ XOR Truth Table

| x₁ | x₂ | XOR |
|----|----|-----|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

### 🚫 Why Single Perceptron Fails

### 💡 The "Drawing a Line" Problem

Imagine the points on a graph. Your job is to draw ONE straight line to separate ● from ○:

```
    x₂
     │
   1 │  ●(0,1)=1      ○(1,1)=0
     │
     │
   0 │  ○(0,0)=0      ●(1,0)=1
     └──────────────────── x₁
        0              1

    ● = Output 1 (should be on one side)
    ○ = Output 0 (should be on other side)
```

**Try it yourself!** Can you draw ONE straight line that puts both ● on one side and both ○ on the other?

❌ **IMPOSSIBLE!** The ● points are diagonal to each other, and so are ○ points.

This is like trying to separate **opposite corners of a square** with one straight cut - you can't!

> **Key Insight**: XOR is **NOT linearly separable** → Single perceptron cannot solve it!

### 💡 Solution Intuition: Use Two Lines!

What if we use TWO lines instead of one?

```
    x₂
     │    Line 2
   1 │  ●----\----○
     │        \
     │    /----\----
   0 │  ○/      \●
     └──────────────── x₁
       Line 1

Two lines can create a "band" that captures only the ● points!
```

This is why we need **hidden layers** - each neuron draws one line, and combining them solves XOR!

### ✅ Solution: Multi-Layer Perceptron (MLP)

```
XOR(x₁, x₂) = (x₁ OR x₂) AND NOT(x₁ AND x₂)
            = (x₁ OR x₂) AND (x₁ NAND x₂)
```

**2-Layer Network**:
```
Layer 1 (Hidden):
  h₁ = OR(x₁, x₂)
  h₂ = NAND(x₁, x₂)

Layer 2 (Output):
  y = AND(h₁, h₂)
```

---

## Part 10: Linearly Separable Data ⭐⭐⭐⭐

### 💡 Simple Analogy: The Fence Problem

Imagine you have a **farm with sheep (○) and goats (●)**:

**Linearly Separable** = You can build ONE straight fence to separate all sheep from all goats

**NOT Linearly Separable** = No matter where you put the fence, some sheep and goats will be on the wrong side

```
CAN BUILD FENCE:           CANNOT BUILD FENCE:

  ○ ○ ○ | ● ● ●              ○   ●   ○
        |
  ○ ○   | ● ●                ●   ○   ●
        |
  Sheep | Goats              Mixed up!
```

### 📐 Definition
> Data is **linearly separable** if classes can be separated by a hyperplane:
> - 2D: Straight line
> - 3D: Plane
> - nD: (n-1) dimensional hyperplane

### 📊 Visual Comparison

```
LINEARLY SEPARABLE:              NOT LINEARLY SEPARABLE:

    x₂                               x₂
     │    ○ ○                         │  ●       ○
     │      ○                         │
     │   ------                       │
     │  ● ●                           │  ○       ●
     └──────── x₁                     └──────── x₁

    A line separates                 No line can separate
    ○ from ●                         ○ from ●
```

### 🎯 Perceptron Capability

| Data Type | Perceptron Can Solve? |
|-----------|----------------------|
| AND | ✅ Yes (linearly separable) |
| OR | ✅ Yes (linearly separable) |
| NOT | ✅ Yes (linearly separable) |
| NAND | ✅ Yes (linearly separable) |
| NOR | ✅ Yes (linearly separable) |
| XOR | ❌ No (NOT linearly separable) |
| XNOR | ❌ No (NOT linearly separable) |

---

## 📝 Practice Problem 1: NOR Gate (From Slides)

**Problem**: Design a perceptron for NOR gate and find weights using the learning algorithm.

| x₁ | x₂ | NOR |
|----|----|-----|
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 0 |

<details>
<summary>📖 Click for Solution</summary>

### Method 1: Derive from Constraints

NOR = NOT(OR) → Output 1 only when BOTH inputs are 0

**Constraints** (h = w₀ + w₁x₁ + w₂x₂):
- (0,0): w₀ ≥ 0 → output 1
- (0,1): w₀ + w₂ < 0 → output 0
- (1,0): w₀ + w₁ < 0 → output 0
- (1,1): w₀ + w₁ + w₂ < 0 → output 0

From constraints:
- w₀ ≥ 0
- w₂ < -w₀ ≤ 0 → w₂ < 0
- w₁ < -w₀ ≤ 0 → w₁ < 0

**Solution**: w₀ = 0.5, w₁ = -1, w₂ = -1

**Verification**:
- (0,0): 0.5 + 0 + 0 = 0.5 ≥ 0 ✓ → 1
- (0,1): 0.5 + 0 - 1 = -0.5 < 0 ✓ → 0
- (1,0): 0.5 - 1 + 0 = -0.5 < 0 ✓ → 0
- (1,1): 0.5 - 1 - 1 = -1.5 < 0 ✓ → 0

</details>

---

## 📝 Practice Problem 2: NAND Gate (From Slides)

**Problem**: Design a perceptron for NAND gate.

| x₁ | x₂ | NAND |
|----|----|------|
| 0 | 0 | 1 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

<details>
<summary>📖 Click for Solution</summary>

NAND = NOT(AND) → Output 0 only when BOTH inputs are 1

**Constraints**:
- (0,0): w₀ ≥ 0
- (0,1): w₀ + w₂ ≥ 0
- (1,0): w₀ + w₁ ≥ 0
- (1,1): w₀ + w₁ + w₂ < 0

**Solution**: w₀ = 1.5, w₁ = -1, w₂ = -1

**Verification**:
- (0,0): 1.5 ≥ 0 ✓ → 1
- (0,1): 1.5 - 1 = 0.5 ≥ 0 ✓ → 1
- (1,0): 1.5 - 1 = 0.5 ≥ 0 ✓ → 1
- (1,1): 1.5 - 1 - 1 = -0.5 < 0 ✓ → 0

</details>

---

## 📝 Practice Problem 3: AND Gate Learning (Step-by-Step)

**Problem**: Train perceptron for AND gate using η = 1, initial weights w₀ = w₁ = w₂ = 0

<details>
<summary>📖 Click for Solution</summary>

### Training Data
| x₁ | x₂ | t |
|----|----|---|
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

### Epoch 1

**Ex 1**: (0, 0, t=0)
- h = 0 + 0×0 + 0×0 = 0
- ŷ = 1 ✗ (0 ≠ 1)
- Update: w₀ = 0 + (0-1) = -1, w₁ = 0, w₂ = 0

**Ex 2**: (0, 1, t=0)
- h = -1 + 0×0 + 0×1 = -1
- ŷ = 0 ✓

**Ex 3**: (1, 0, t=0)
- h = -1 + 0×1 + 0×0 = -1
- ŷ = 0 ✓

**Ex 4**: (1, 1, t=1)
- h = -1 + 0×1 + 0×1 = -1
- ŷ = 0 ✗ (1 ≠ 0)
- Update: w₀ = -1 + (1-0) = 0, w₁ = 0 + 1×1 = 1, w₂ = 0 + 1×1 = 1

**After Epoch 1**: w₀ = 0, w₁ = 1, w₂ = 1

### Continue epochs until convergence...

(After more epochs, weights converge to valid AND gate solution)

</details>

---

## 📝 Practice Problem 4: EC-2 Mid-Sem 2026 Q2 (EXACT PYQ) ⭐⭐⭐⭐⭐

### 🎯 Question (5 Marks)

**Design a 2-layer perceptron network using multiple AND/OR gates to implement:**

**F(x₁, x₂, x₃, x₄) = (x₁ ∧ x₂) ∨ (x₃ ∧ x₄)**

Where x₁, x₂, x₃, x₄ ∈ {0,1} and activation function f(z) = 1 if z ≥ 0, f(z) = 0 if z < 0

**(a)** Decompose the Boolean function into hidden layer and output layer operations. (1 mark)
**(b)** Derive the inequalities for AND, OR gates using the perceptron model and determine suitable weights and bias. (3 marks)
**(c)** Show the final weights, biases, and draw the 2-layer perceptron network. (1 mark)

<details>
<summary>📖 Click for Complete Solution (Exam Format)</summary>

### Part (a): Decompose the Boolean Function (1 mark)

The function F(x₁, x₂, x₃, x₄) = (x₁ ∧ x₂) ∨ (x₃ ∧ x₄) can be decomposed as:

**Hidden Layer (Layer 1)**:
- Neuron h₁ computes: h₁ = AND(x₁, x₂) = x₁ ∧ x₂
- Neuron h₂ computes: h₂ = AND(x₃, x₄) = x₃ ∧ x₄

**Output Layer (Layer 2)**:
- Neuron y computes: y = OR(h₁, h₂) = h₁ ∨ h₂

---

### Part (b): Derive Inequalities and Find Weights (3 marks)

#### For AND Gate (h₁ and h₂):

**Truth Table for AND:**
| x₁ | x₂ | AND | Required condition |
|----|----|-----|-------------------|
| 0 | 0 | 0 | w₀ + 0 + 0 < 0 |
| 0 | 1 | 0 | w₀ + 0 + w₂ < 0 |
| 1 | 0 | 0 | w₀ + w₁ + 0 < 0 |
| 1 | 1 | 1 | w₀ + w₁ + w₂ ≥ 0 |

**Inequalities:**
1. w₀ < 0
2. w₀ + w₂ < 0 → w₂ < -w₀
3. w₀ + w₁ < 0 → w₁ < -w₀
4. w₀ + w₁ + w₂ ≥ 0

From (1): w₀ < 0, let w₀ = -1.5
From (2) & (3): w₁ < 1.5 and w₂ < 1.5
From (4): -1.5 + w₁ + w₂ ≥ 0 → w₁ + w₂ ≥ 1.5

**Solution for AND**: w₀ = -1.5, w₁ = 1, w₂ = 1

**Verification:**
- (0,0): -1.5 + 0 + 0 = -1.5 < 0 ✓ → output 0
- (0,1): -1.5 + 0 + 1 = -0.5 < 0 ✓ → output 0
- (1,0): -1.5 + 1 + 0 = -0.5 < 0 ✓ → output 0
- (1,1): -1.5 + 1 + 1 = 0.5 ≥ 0 ✓ → output 1

#### For OR Gate (output y):

**Truth Table for OR:**
| h₁ | h₂ | OR | Required condition |
|----|----|-----|-------------------|
| 0 | 0 | 0 | w₀ + 0 + 0 < 0 |
| 0 | 1 | 1 | w₀ + 0 + w₂ ≥ 0 |
| 1 | 0 | 1 | w₀ + w₁ + 0 ≥ 0 |
| 1 | 1 | 1 | w₀ + w₁ + w₂ ≥ 0 |

**Inequalities:**
1. w₀ < 0
2. w₀ + w₂ ≥ 0 → w₂ ≥ -w₀
3. w₀ + w₁ ≥ 0 → w₁ ≥ -w₀
4. w₀ + w₁ + w₂ ≥ 0 (automatically satisfied if 2 & 3 hold)

**Solution for OR**: w₀ = -0.5, w₁ = 1, w₂ = 1

**Verification:**
- (0,0): -0.5 + 0 + 0 = -0.5 < 0 ✓ → output 0
- (0,1): -0.5 + 0 + 1 = 0.5 ≥ 0 ✓ → output 1
- (1,0): -0.5 + 1 + 0 = 0.5 ≥ 0 ✓ → output 1
- (1,1): -0.5 + 1 + 1 = 1.5 ≥ 0 ✓ → output 1

---

### Part (c): Final Weights and Network Diagram (1 mark)

**Final Weights Table:**

| Neuron | Function | Inputs | w₀ (bias) | w₁ | w₂ |
|--------|----------|--------|-----------|----|----|
| h₁ | AND | x₁, x₂ | -1.5 | 1 | 1 |
| h₂ | AND | x₃, x₄ | -1.5 | 1 | 1 |
| y | OR | h₁, h₂ | -0.5 | 1 | 1 |

**Network Diagram:**

```
        INPUT LAYER          HIDDEN LAYER         OUTPUT LAYER

             x₁ ─────(w₁=1)────┐
                               ├───► h₁ [AND] ────(w₁=1)────┐
             x₂ ─────(w₂=1)────┘     (b=-1.5)               │
                                                            ├───► y [OR]
             x₃ ─────(w₁=1)────┐                            │    (b=-0.5)
                               ├───► h₂ [AND] ────(w₂=1)────┘
             x₄ ─────(w₂=1)────┘     (b=-1.5)
```

**Alternative Diagram (More Detailed):**

```
    1 ──(b=-1.5)──┐
                  │
   x₁ ──(w=1)─────┼──► Σ ──► f(z) ──► h₁ ──(w=1)──┐
                  │                                │    1 ──(b=-0.5)──┐
   x₂ ──(w=1)─────┘                                │                  │
                                                   ├──────────────────┼──► Σ ──► f(z) ──► y
    1 ──(b=-1.5)──┐                                │                  │
                  │                                │                  │
   x₃ ──(w=1)─────┼──► Σ ──► f(z) ──► h₂ ──(w=1)──┘                  │
                  │                                                   │
   x₄ ──(w=1)─────┘                                                   │
```

---

### ✅ Final Verification (Complete Truth Table)

| x₁ | x₂ | x₃ | x₄ | h₁=AND(x₁,x₂) | h₂=AND(x₃,x₄) | y=OR(h₁,h₂) | Expected |
|----|----|----|----|----|----|----|----|
| 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 ✓ |
| 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 ✓ |
| 0 | 0 | 1 | 1 | 0 | 1 | 1 | 1 ✓ |
| 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 ✓ |
| 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 ✓ |
| 1 | 1 | 0 | 0 | 1 | 0 | 1 | 1 ✓ |
| 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 ✓ |

</details>

---

---

## 📝 Practice Problem 5: Similar to PYQ Pattern

### 🎯 Design 2-Layer Network for F = (x₁ ∨ x₂) ∧ (x₃ ∨ x₄)

**Practice this pattern - likely exam question!**

<details>
<summary>📖 Click for Solution</summary>

### Step 1: Decompose
- **Hidden Layer**: h₁ = OR(x₁, x₂), h₂ = OR(x₃, x₄)
- **Output Layer**: y = AND(h₁, h₂)

### Step 2: Weights

**OR gate**: w₀ = -0.5, w₁ = 1, w₂ = 1
**AND gate**: w₀ = -1.5, w₁ = 1, w₂ = 1

### Step 3: Final Table

| Neuron | Function | w₀ | w₁ | w₂ |
|--------|----------|----|----|-----|
| h₁ | OR | -0.5 | 1 | 1 |
| h₂ | OR | -0.5 | 1 | 1 |
| y | AND | -1.5 | 1 | 1 |

</details>

---

## 📝 Practice Problem 6: 3-Input Gate

### 🎯 Design perceptron for 3-input AND gate: y = x₁ ∧ x₂ ∧ x₃

<details>
<summary>📖 Click for Solution</summary>

### Truth Table
| x₁ | x₂ | x₃ | AND |
|----|----|----|-----|
| 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 0 |
| 0 | 1 | 0 | 0 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 0 | 0 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 0 |
| 1 | 1 | 1 | 1 |

### Constraints
- Output 1 only when ALL inputs = 1
- w₀ + w₁ + w₂ + w₃ ≥ 0 (for 1,1,1)
- w₀ + w₁ + w₂ < 0 (for 1,1,0)

### Solution
**w₀ = -2.5, w₁ = 1, w₂ = 1, w₃ = 1**

Verification for (1,1,1): -2.5 + 1 + 1 + 1 = 0.5 ≥ 0 ✓
Verification for (1,1,0): -2.5 + 1 + 1 + 0 = -0.5 < 0 ✓

</details>

---

## 🎴 Quick Reference Card

### Perceptron Formulas

| Formula | Expression |
|---------|------------|
| Weighted sum | h = w₀ + Σᵢ wᵢxᵢ |
| Output | ŷ = 1 if h ≥ 0, else 0 |
| Weight update | wᵢ(new) = wᵢ(old) + η(t - ŷ)xᵢ |
| Bias update | w₀(new) = w₀(old) + η(t - ŷ) |

### Logic Gate Weights

| Gate | w₀ (bias) | w₁ | w₂ |
|------|-----------|----|----|
| AND | -1.5 | 1 | 1 |
| OR | -0.5 | 1 | 1 |
| NOT | 0.5 | -1 | - |
| NAND | 1.5 | -1 | -1 |
| NOR | 0.5 | -1 | -1 |

### Key Facts

| Concept | Key Point |
|---------|-----------|
| Perceptron capability | Only linearly separable problems |
| XOR | NOT linearly separable → needs MLP |
| Convergence | Guaranteed if data is linearly separable |
| Brain neurons | ~10¹⁰ with ~10⁴-10⁵ connections each |

---

## ⚠️ Common Mistakes to Avoid

1. **Forgetting the bias term** in calculations
2. **Confusing h ≥ 0 vs h > 0** - Standard uses ≥ 0
3. **Wrong update direction** - Remember: wᵢ += η(t - ŷ)xᵢ
4. **XOR with single perceptron** - This is IMPOSSIBLE!
5. **Not multiplying by xᵢ** in weight update (bias doesn't multiply by x)
6. **{0,1} vs {-1,+1} confusion** - Both valid, but affects bias calculation

---

## 🧪 Exam Tips for Module 2

### Expected Question Types

| Type | Marks | Example |
|------|-------|---------|
| Theory | 2-3 | Compare biological vs artificial neuron |
| Gate design | 5-6 | Find weights for NOR/NAND gate |
| Learning algorithm | 6-8 | Step-by-step training for a gate |
| MLP design | 5-6 | 2-layer network for compound Boolean |
| XOR explanation | 3-4 | Why perceptron fails for XOR |

### Must-Know Skills
- Derive weight constraints from truth table
- Apply perceptron learning algorithm step-by-step
- Draw 2-layer network with labeled weights
- Explain linear separability with diagrams

---

## ✅ Revision Checklist

### Conceptual Understanding
- [ ] Can explain biological neuron structure
- [ ] Can describe artificial neuron components (weights, bias, activation)
- [ ] Know properties of ANN
- [ ] Understand connectionism principles
- [ ] Can explain why XOR needs hidden layer

### Mathematical Skills
- [ ] Can write perceptron equation in scalar and vector form
- [ ] Know perceptron learning algorithm steps
- [ ] Can derive weight constraints from truth table
- [ ] Can compute weight updates step-by-step

### Problem Solving
- [ ] Can design perceptron for AND, OR, NOT, NAND, NOR
- [ ] Can apply learning algorithm to train a gate
- [ ] Can design 2-layer MLP for compound Boolean functions
- [ ] Can verify weights by checking all input combinations

### Diagrams
- [ ] Can draw biological neuron with labels
- [ ] Can draw artificial neuron with weights
- [ ] Can draw 2-layer perceptron network
- [ ] Can show linear separability graphically

---

## 🎯 Big Picture Summary

### What Did We Learn?

```
BIOLOGICAL BRAIN                    ARTIFICIAL NEURAL NETWORK
     │                                        │
     ▼                                        ▼
Neurons connected                   Neurons (nodes) connected
by synapses                         by weights
     │                                        │
     ▼                                        ▼
Learn through                       Learn through
experience                          algorithms (weight updates)
```

### The Story So Far

1. **Brain** has billions of neurons → We created **artificial neurons**
2. **Artificial neuron** = weighted sum + activation function
3. **Perceptron** = simplest artificial neuron (step activation)
4. **Perceptron can learn** by adjusting weights when wrong
5. **BUT** perceptron has limits → Can only solve **linearly separable** problems
6. **XOR is NOT linearly separable** → Need **multiple layers** (MLP)

### What's Next?

In the next module, we'll see how **adding more neurons and layers** (Multi-Layer Perceptron) can solve complex problems like XOR!

```
Single Perceptron          Multi-Layer Perceptron (MLP)

    x₁ ─┐                     x₁ ─┬─ [H1] ─┐
         ├─► [N] ─► y              │        ├─► [N] ─► y
    x₂ ─┘                     x₂ ─┴─ [H2] ─┘

  Only straight lines!        Can make curves!
  Limited problems            Complex problems
```

---

## 📚 Summary in One Page

| Topic | Key Point |
|-------|-----------|
| Biological Neuron | Dendrites → Soma → Axon → Synapse |
| Artificial Neuron | z = Σwᵢxᵢ + b, then apply f(z) |
| Perceptron | Simplest neuron with step activation |
| Learning Rule | wᵢ(new) = wᵢ(old) + η(t - ŷ)xᵢ |
| AND/OR/NOT | ✅ Solvable by perceptron |
| XOR | ❌ NOT solvable (need MLP) |
| Linear Separability | Can a line separate classes? |
| Convergence | Guaranteed for linearly separable data |
