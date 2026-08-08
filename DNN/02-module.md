# 🧠 Module 2: Artificial Neural Network & Perceptron

## 📅 Session Covered: 2 | ⏱️ Study Time: 4 Hours | 📊 Exam Weight: ⭐⭐⭐⭐⭐

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

## Part 1: Biological Neuron ⭐⭐

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

### 🔷 AND Gate

| x₁ | x₂ | AND |
|----|----|-----|
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

**Constraints** (h = w₀ + w₁x₁ + w₂x₂):
- (0,0): w₀ < 0
- (0,1): w₀ + w₂ < 0
- (1,0): w₀ + w₁ < 0
- (1,1): w₀ + w₁ + w₂ ≥ 0

**Solution**: w₀ = -1, w₁ = 0.75, w₂ = 0.75 (or w₀ = -1.5, w₁ = 1, w₂ = 1)

### 🔷 OR Gate

| x₁ | x₂ | OR |
|----|----|-----|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 1 |

**Constraints**:
- (0,0): w₀ < 0
- (0,1): w₀ + w₂ ≥ 0
- (1,0): w₀ + w₁ ≥ 0
- (1,1): w₀ + w₁ + w₂ ≥ 0

**Solution**: w₀ = -1, w₁ = 2, w₂ = 2 (or w₀ = -0.5, w₁ = 1, w₂ = 1)

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

## 📝 Worked Example: NOT Gate Learning ⭐⭐⭐⭐⭐

**Problem**: Train perceptron for NOT gate using η = 1, initial weights w₀ = 0, w₁ = 0

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

### ❌ XOR Truth Table

| x₁ | x₂ | XOR |
|----|----|-----|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

### 🚫 Why Single Perceptron Fails

```
    x₂
     │
   1 │  ●(0,1)=1      ○(1,1)=0
     │
     │
   0 │  ○(0,0)=0      ●(1,0)=1
     └──────────────────── x₁
        0              1

    ● = Output 1
    ○ = Output 0

    NO SINGLE LINE CAN SEPARATE ● FROM ○!
```

> **Key Insight**: XOR is **NOT linearly separable** → Single perceptron cannot solve it!

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

## 📝 Practice Problem 4: 2-Layer Network for F = (x₁ ∧ x₂) ∨ (x₃ ∧ x₄)

**From Mid-Sem 2026 Q2**: Design a 2-layer perceptron network.

<details>
<summary>📖 Click for Solution</summary>

### Step 1: Decompose the Boolean function
- **Hidden Layer**:
  - h₁ = AND(x₁, x₂)
  - h₂ = AND(x₃, x₄)
- **Output Layer**:
  - y = OR(h₁, h₂)

### Step 2: Weights for each gate

**AND gate**: w₀ = -1.5, w₁ = 1, w₂ = 1
**OR gate**: w₀ = -0.5, w₁ = 1, w₂ = 1

### Step 3: Network Diagram

```
x₁ ──(1)──┐
          ├──[AND: w₀=-1.5]──► h₁ ──(1)──┐
x₂ ──(1)──┘                              │
                                         ├──[OR: w₀=-0.5]──► y
x₃ ──(1)──┐                              │
          ├──[AND: w₀=-1.5]──► h₂ ──(1)──┘
x₄ ──(1)──┘
```

### Step 4: Final Weights Table

| Neuron | Inputs | w₀ (bias) | w₁ | w₂ |
|--------|--------|-----------|----|----|
| h₁ | x₁, x₂ | -1.5 | 1 | 1 |
| h₂ | x₃, x₄ | -1.5 | 1 | 1 |
| y | h₁, h₂ | -0.5 | 1 | 1 |

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
