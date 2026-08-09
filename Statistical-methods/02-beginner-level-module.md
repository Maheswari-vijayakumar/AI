# 🎲 Statistical Methods Module 2 - Beginner's Guide
## AIML ZC418 | BITS Pilani MTech WLP
## 📚 VERY DETAILED Slide-by-Slide Explanation for Complete Beginners
## 📖 Based on: ISM_CS-2_PPT.pdf (41 Slides)

---

# 🎯 What Will You Learn in Module 2?

From your **Lecture Slides (ISM_CS-2_PPT.pdf - 41 pages)**, we cover:

| Slide # | Topic | Importance |
|---------|-------|------------|
| **4-5** | Random Experiment | ⭐⭐⭐ |
| **6** | Sample Space | ⭐⭐⭐⭐ |
| **7** | Event | ⭐⭐⭐⭐ |
| **8** | Complement of an Event | ⭐⭐⭐ |
| **9** | Union & Intersection | ⭐⭐⭐⭐⭐ |
| **10** | Mutually Exclusive Events | ⭐⭐⭐⭐⭐ EXAM FAVORITE! |
| **11-13** | Definition of Probability (3 Approaches) | ⭐⭐⭐⭐ |
| **14** | Probability Scale (0 to 1) | ⭐⭐⭐ |
| **15** | The Addition Rule | ⭐⭐⭐⭐⭐ VERY IMPORTANT! |
| **17-18** | Independent vs Dependent Events | ⭐⭐⭐⭐⭐ |
| **19-33** | Solved Examples (8 examples) | ⭐⭐⭐⭐⭐ |
| **34-39** | Practice Problems | ⭐⭐⭐⭐ |

---

# 📖 SLIDE 4-5: Random Experiment ⭐⭐⭐

## 📝 What The Slides Say:

> "The term 'random experiment' is used to describe any action whose outcome is NOT known in advance."

### Two Types of Experiments:

| Type | Definition | Example |
|------|------------|---------|
| **Random Experiment** | Outcome is NOT predictable | Flip a coin, roll a die |
| **Certain Experiment** | Outcome IS predictable | Sunrise tomorrow |

## 🤔 What This Means in Simple Words:

Think of it like this:
- **Random**: You don't know what will happen BEFORE you do it
- **Certain**: You KNOW what will happen

### Examples from Slide 4:

```
Random Experiments:
┌─────────────────────────────────────────────────────────┐
│ 1. Flip a coin → Heads or Tails? (Don't know!)         │
│ 2. Walk to bus stop → How long do you wait?            │
│ 3. Give a lecture → How many students are listening?   │
│ 4. Transmit a waveform → What arrives at receiver?     │
└─────────────────────────────────────────────────────────┘

Certain Experiment:
┌─────────────────────────────────────────────────────────┐
│ Sun will rise tomorrow (We KNOW this!)                 │
└─────────────────────────────────────────────────────────┘
```

### More Examples from Slide 5:

1. **Counting words** in "King Lear" → You don't know the count before counting
2. **Pulling a card** from a deck → You don't know which card until you pull
3. **Monitor phone calls** → Classify as voice (v) or data (d)

## 💡 Real-Life Analogy:

```
Rolling a die is like opening a birthday present:
- You KNOW it's something (1-6 or a gift)
- But you DON'T KNOW exactly what until you see it!
```

---

# 📖 SLIDE 6: Sample Space ⭐⭐⭐⭐

## 📝 What The Slide Says:

> "The sample space of a random experiment is a set S that includes ALL possible outcomes of the experiment."

## 🔤 Symbol: S

## 📊 Examples from Slide:

### Example 1: Rolling a Die
```
Experiment: Throw a die and record the outcome
Sample Space: S = {1, 2, 3, 4, 5, 6}
              └─────────────────────┘
              All possible outcomes
```

### Example 2: Quality Testing
```
Experiment: Test an integrated circuit
Possible outcomes: "accepted" (a) or "rejected" (r)
Sample Space: S = {a, r}
```

## 💡 Think of Sample Space as:

```
┌─────────────────────────────────────────────────────────┐
│  Sample Space = The COMPLETE MENU of possibilities     │
│                                                         │
│  Like a restaurant menu lists ALL dishes you can order │
│  Sample space lists ALL outcomes that can happen       │
└─────────────────────────────────────────────────────────┘
```

### More Examples:

| Experiment | Sample Space S |
|------------|----------------|
| Flip 1 coin | {H, T} |
| Flip 2 coins | {HH, HT, TH, TT} |
| Roll 2 dice | {(1,1), (1,2), ..., (6,6)} = 36 outcomes |
| Monitor 3 calls (voice/data) | {vvv, vvd, vdv, vdd, dvv, dvd, ddv, ddd} |

---

# 📖 SLIDE 7: Event ⭐⭐⭐⭐

## 📝 What The Slide Says:

> "An event is a SUBSET of the sample space of a random experiment."
> "An event is a set of outcomes of the experiment."

## 🤔 What This Means:

An event is **ONE OR MORE outcomes** that you're interested in.

### Example:

```
Sample Space (rolling a die): S = {1, 2, 3, 4, 5, 6}

Events (subsets of S):
├── Event A: "Getting an even number" = {2, 4, 6}
├── Event B: "Getting less than 3" = {1, 2}
├── Event C: "Getting a 5" = {5}
└── Event D: "Getting any number" = {1,2,3,4,5,6} = S
```

### Key Points from Slide:
- Event OCCURS if outcome is an element of the event set
- Event does NOT occur if outcome is not in the event set

## 💡 Analogy:

```
Sample Space = All students in class
Event = "Students who passed" (some students, not all)
```

---

# 📖 SLIDE 8: Complement of an Event ⭐⭐⭐

## 📝 What The Slide Says:

> "The complement of event A is the event consisting of all sample points that are NOT in A."
> "Denoted by Aᶜ (or A' or Ā)"

## 📊 Visual:

```
┌─────────────────────────────────────┐
│            Sample Space S           │
│                                     │
│    ┌─────────┐                      │
│    │    A    │    Aᶜ (complement)   │
│    │         │                      │
│    └─────────┘                      │
│                                     │
└─────────────────────────────────────┘
```

## 📝 Key Formula:

```
P(A) + P(Aᶜ) = 1

Therefore:
P(Aᶜ) = 1 - P(A)
```

### Example:
```
Event A = "Roll a 6"  → P(A) = 1/6
Event Aᶜ = "NOT roll a 6" → P(Aᶜ) = 1 - 1/6 = 5/6
```

---

# 📖 SLIDE 9: Union & Intersection ⭐⭐⭐⭐⭐

## 📝 What The Slide Says:

### UNION (A ∪ B):
> "The event containing all sample points that are in A OR B OR both"

### INTERSECTION (A ∩ B):
> "The set of all sample points that are in BOTH A AND B"

## 📊 Visual Diagrams:

```
        UNION (A ∪ B)                    INTERSECTION (A ∩ B)
   ┌──────────────────────┐          ┌──────────────────────┐
   │                      │          │                      │
   │   ┌────┬────┐        │          │   ┌────┬────┐        │
   │   │████│████│        │          │   │    │████│        │
   │   │ A ██ B  │        │          │   │ A ██ B  │        │
   │   │████│████│        │          │   │    │████│        │
   │   └────┴────┘        │          │   └────┴────┘        │
   │   ^^^^^^^^^^^^       │          │        ^^^^          │
   │   All shaded area    │          │   Only overlap       │
   └──────────────────────┘          └──────────────────────┘
```

## 💡 Simple Memory Trick:

```
∪ = Union = "OR" = A or B (either one or both)
∩ = Intersection = "AND" = A and B (must be in both)
```

### Example:
```
A = "Even numbers" = {2, 4, 6}
B = "Numbers > 3" = {4, 5, 6}

A ∪ B = {2, 4, 5, 6}  ← in A OR B or both
A ∩ B = {4, 6}        ← in BOTH A AND B
```

---

# 📖 SLIDE 10: Mutually Exclusive Events ⭐⭐⭐⭐⭐

## 📝 What The Slide Says:

> "Two events are said to be mutually exclusive if the events have NO sample points in common."
> "When one event occurs, the other CANNOT occur."

## 📊 Visual:

```
  Mutually Exclusive:           NOT Mutually Exclusive:

  ┌────┐    ┌────┐              ┌────┬────┐
  │ A  │    │ B  │              │ A ██ B  │
  │    │    │    │              │   ██    │
  └────┘    └────┘              └────┴────┘
  No overlap!                    Has overlap!

  P(A ∩ B) = 0                   P(A ∩ B) > 0
```

## 📝 Key Formula:

```
For Mutually Exclusive Events:
┌─────────────────────────────────────────┐
│  P(A ∩ B) = 0  (they can't both happen) │
│  P(A ∪ B) = P(A) + P(B)                 │
└─────────────────────────────────────────┘
```

### Example from Slide:
```
Coin flip:
- A = "Heads"
- B = "Tails"

Can you get BOTH heads AND tails on ONE flip? NO!
They are MUTUALLY EXCLUSIVE.

P(Heads ∩ Tails) = 0
P(Heads ∪ Tails) = P(H) + P(T) = 0.5 + 0.5 = 1
```

---

# 📖 SLIDE 11-13: Three Approaches to Probability ⭐⭐⭐⭐

## 📝 Approach 1: Classical (Slide 11)

```
                Number of favorable outcomes
P(Event) = ─────────────────────────────────────
           Total number of equally likely outcomes

                n(A)
P(A) = ─────────────
         n(S)
```

**When to use**: When all outcomes are EQUALLY LIKELY

**Example**: Rolling a fair die
```
P(getting a 4) = 1/6 = 0.167
```

## 📝 Approach 2: Empirical/Relative Frequency (Slide 12)

```
                Number of times event occurred
P(Event) = ─────────────────────────────────────
           Total number of trials (experiments)
```

**When to use**: When you have DATA from repeated experiments

**Example**: In 1000 tosses, heads appeared 520 times
```
P(Heads) ≈ 520/1000 = 0.52
```

## 📝 Approach 3: Axiomatic (Slide 13)

Three axioms (rules) that ALL probabilities must follow:

```
┌────────────────────────────────────────────────────────┐
│ AXIOM 1: P(A) ≥ 0     (Probability is non-negative)   │
│                                                         │
│ AXIOM 2: P(S) = 1     (Total probability = 1)          │
│                                                         │
│ AXIOM 3: If A and B are mutually exclusive:            │
│          P(A ∪ B) = P(A) + P(B)                        │
└────────────────────────────────────────────────────────┘
```

---

# 📖 SLIDE 14: Probability Scale ⭐⭐⭐

## 📝 What The Slide Shows:

```
     0                    0.5                    1
     |───────────────────────|───────────────────|
   Impossible           Equally              Certain
                     Likely/Unlikely

     P = 0              P = 0.5               P = 1
  "Never happens"   "50-50 chance"     "Always happens"
```

### Examples:
| Event | Probability | Interpretation |
|-------|-------------|----------------|
| Rolling a 7 on a die | 0 | Impossible |
| Getting heads on fair coin | 0.5 | Equally likely |
| Sun rises tomorrow | 1 | Certain |

---

# 📖 SLIDE 15: The Addition Rule ⭐⭐⭐⭐⭐

## 📝 What The Slide Says:

### General Addition Rule:
```
P(A ∪ B) = P(A) + P(B) - P(A ∩ B)
```

### For Mutually Exclusive Events:
```
P(A ∪ B) = P(A) + P(B)   {Since P(A ∩ B) = 0}
```

## 🤔 Why Subtract P(A ∩ B)?

```
When you add P(A) + P(B), you count the overlap TWICE!
So you subtract it once to correct.

  ┌────┬────┐
  │ A ██ B  │   ← This middle part (██) gets counted
  │   ██    │     in both P(A) and P(B)
  └────┴────┘
```

## 💡 Analogy:

```
Students in Math = 30
Students in Science = 25
Students in BOTH = 10

Total unique students = 30 + 25 - 10 = 45
(Not 55, because 10 students would be counted twice!)
```

---

# 📖 SLIDE 17-18: Independent vs Dependent Events ⭐⭐⭐⭐⭐

## 📝 What The Slides Say:

### Independent Events:
> "The occurrence of one event has NO EFFECT on the occurrence of the other"

### Dependent Events:
> "The occurrence of one event GIVES INFORMATION about the occurrence of the other"

## 📊 Comparison Table (from Slide 18):

| Feature | Mutually Exclusive | Independent |
|---------|-------------------|-------------|
| **Definition** | Cannot occur together | One doesn't affect the other |
| **P(A ∩ B)** | = 0 | = P(A) × P(B) |
| **Can occur together?** | NO | YES |
| **Example** | Heads AND Tails (1 flip) | Heads on flip 1 AND Heads on flip 2 |

## 📝 Key Formula for Independence:

```
Events A and B are INDEPENDENT if and only if:

P(A ∩ B) = P(A) × P(B)
```

## 🔢 Example from Slide 17:

```
Flipping a coin multiple times:
- P(Heads on 1st flip) = 0.5
- P(Heads on 2nd flip) = 0.5
- Does 1st flip affect 2nd? NO!

P(Both heads) = P(H₁) × P(H₂) = 0.5 × 0.5 = 0.25

They are INDEPENDENT.
```

## ⚠️ IMPORTANT: Independence ≠ Mutually Exclusive!

```
Independent events CAN occur together
Mutually exclusive events CANNOT occur together

These are DIFFERENT concepts!
```

---

# 📖 SLIDE 19-20: Example 1 - Probability Axiom Check ⭐⭐⭐

## 📝 Problem:

An experiment has four mutually exclusive outcomes A, B, C, D.
Check if these probability assignments are permissible:

## 📝 Rules to Check:

```
1. Each probability must be ≥ 0 (non-negative)
2. Each probability must be ≤ 1
3. Sum of all probabilities = 1 (for mutually exclusive exhaustive)
```

## 🔢 Solutions:

| Option | P(A) | P(B) | P(C) | P(D) | Sum | Valid? | Reason |
|--------|------|------|------|------|-----|--------|--------|
| **(a)** | 0.38 | 0.16 | 0.11 | 0.35 | 1.00 | ✅ YES | Sum = 1, all ≥ 0 |
| **(b)** | 0.31 | 0.27 | 0.28 | 0.16 | 1.02 | ❌ NO | Sum > 1 |
| **(c)** | 0.32 | 0.27 | -0.06 | 0.47 | 1.00 | ❌ NO | P(C) < 0 |
| **(d)** | 1/2 | 1/4 | 1/8 | 1/16 | 15/16 | ❌ NO | Sum < 1 |
| **(e)** | 5/8 | 1/6 | 1/3 | 2/9 | >1 | ❌ NO | Sum > 1 |

---

# 📖 SLIDE 21-24: Example 2 - Two Dice Problem ⭐⭐⭐⭐

## 📝 Problem:

If two dice are thrown, find probability that the sum is:
- a) Greater than 8
- b) Less than 6
- c) Neither 7 nor 11

## 📝 Total Sample Space:

```
When rolling 2 dice: Total outcomes = 6 × 6 = 36
```

## 🔢 Solution:

### Part (a): Sum > 8 (means sum = 9, 10, 11, or 12)

```
Sum = 9: (3,6), (4,5), (5,4), (6,3) → 4 ways
Sum = 10: (4,6), (5,5), (6,4) → 3 ways
Sum = 11: (5,6), (6,5) → 2 ways
Sum = 12: (6,6) → 1 way

Total favorable = 4 + 3 + 2 + 1 = 10

P(sum > 8) = 10/36 = 5/18
```

### Part (b): Sum < 6 (means sum = 2, 3, 4, or 5)

```
Sum = 2: (1,1) → 1 way
Sum = 3: (1,2), (2,1) → 2 ways
Sum = 4: (1,3), (2,2), (3,1) → 3 ways
Sum = 5: (1,4), (2,3), (3,2), (4,1) → 4 ways

Total favorable = 1 + 2 + 3 + 4 = 10

P(sum < 6) = 10/36 = 5/18
```

### Part (c): Neither 7 nor 11

```
Sum = 7: (1,6), (2,5), (3,4), (4,3), (5,2), (6,1) → 6 ways
Sum = 11: (5,6), (6,5) → 2 ways

P(7 or 11) = 8/36

P(neither 7 nor 11) = 1 - 8/36 = 28/36 = 7/9
```

---

# 📖 SLIDE 25-26: Example 3 - Passing Exams ⭐⭐⭐⭐⭐

## 📝 Problem:

- P(pass Statistics) = 2/3
- P(NOT pass Mathematics) = 5/9, so P(pass Math) = 4/9
- P(pass at least one) = 4/5

Find: P(pass BOTH exams)

## 🔢 Solution:

```
Let S = pass Statistics, M = pass Mathematics

Given:
P(S) = 2/3
P(M) = 1 - 5/9 = 4/9
P(S ∪ M) = 4/5

Using Addition Rule:
P(S ∪ M) = P(S) + P(M) - P(S ∩ M)

4/5 = 2/3 + 4/9 - P(S ∩ M)

P(S ∩ M) = 2/3 + 4/9 - 4/5

Finding common denominator (45):
= 30/45 + 20/45 - 36/45
= 14/45

Answer: P(pass both) = 14/45
```

---

# 📖 SLIDE 27-28: Example 4 - Investors ⭐⭐⭐⭐

## 📝 Problem:

- 75% invest in traditional annuities (A)
- 45% invest in stock market (B)
- 85% invest in stock market AND/OR annuities

What percentage invest in BOTH?

## 🔢 Solution:

```
Given:
P(A) = 0.75
P(B) = 0.45
P(A ∪ B) = 0.85

Using Addition Rule (rearranged):
P(A ∩ B) = P(A) + P(B) - P(A ∪ B)
         = 0.75 + 0.45 - 0.85
         = 0.35

Answer: 35% invest in BOTH
```

---

# 📖 SLIDE 29-30: Example 5 - Cable Specifications ⭐⭐⭐

## 📝 Problem:

Cable specifications: 2000 ± 10 mm (acceptable: 1990-2010 mm)
- P(meets specifications) = 0.99
- P(too large) = P(too small) (equally likely)

Find:
- a) P(cable too large)?
- b) P(cable > 1990 mm)?

## 🔢 Solution:

```
Let:
- L = too large (> 2010 mm)
- S = too small (< 1990 mm)
- OK = meets specs (1990-2010 mm)

Given: P(OK) = 0.99, P(L) = P(S)

(a) P(too large):
P(L) + P(S) + P(OK) = 1
P(L) + P(L) + 0.99 = 1  (since P(L) = P(S))
2 × P(L) = 0.01
P(L) = 0.005

(b) P(cable > 1990 mm):
= P(OK) + P(L)
= 0.99 + 0.005
= 0.995
```

---

# 📖 SLIDE 31: Example 6 - Maximum of P(A)×P(B) ⭐⭐⭐

## 📝 Problem:

A and B are mutually exclusive with A∪B = S.
What is the maximum value of P(A)×P(B)?

## 🔢 Solution:

```
Since A∪B = S and mutually exclusive:
P(A) + P(B) = 1

Let P(A) = p, then P(B) = 1-p

Product = p(1-p) = p - p²

To maximize, take derivative and set = 0:
d/dp(p - p²) = 1 - 2p = 0
p = 1/2

So P(A) = P(B) = 1/2

Maximum P(A)×P(B) = (1/2)(1/2) = 1/4
```

---

# 📖 SLIDE 32: Example 7 - Independence Check ⭐⭐⭐⭐

## 📝 Problem:

Two dice thrown. Are A and B independent?
- A = {(1,2), (2,1), (2,2)}
- B = {(2,2), (2,3), (2,4), (2,5), (2,6), (3,2), (4,2), (5,2), (6,2)}

## 🔢 Solution:

```
P(A) = 3/36
P(B) = 9/36
P(A ∩ B) = P({(2,2)}) = 1/36

Check independence:
P(A) × P(B) = (3/36) × (9/36) = 27/1296 = 3/144

P(A ∩ B) = 1/36 = 4/144

Since P(A ∩ B) ≠ P(A) × P(B):
A and B are DEPENDENT (not independent)
```

---

# 📖 SLIDE 33: Example 8 - Committee Selection ⭐⭐⭐

## 📝 Problem:

From 8 men and 4 women, choose a committee of 5.
Find P(majority are women).

## 🔢 Solution:

```
Majority of women means either:
- 3 women + 2 men, OR
- 4 women + 1 man

Total ways to choose 5 from 12: C(12,5) = 792

P(1M and 4W) = C(8,1) × C(4,4) / C(12,5)
             = 8 × 1 / 792 = 8/792

P(2M and 3W) = C(8,2) × C(4,3) / C(12,5)
             = 28 × 4 / 792 = 112/792

P(majority women) = 8/792 + 112/792 = 120/792 = 5/33
```

---

# 📝 MODULE 2 FORMULA CHEAT SHEET

```
┌──────────────────────────────────────────────────────────────┐
│                    BASIC DEFINITIONS                          │
├──────────────────────────────────────────────────────────────┤
│  Sample Space S = All possible outcomes                       │
│  Event A = Subset of S                                        │
│  Complement Aᶜ = Everything NOT in A                          │
│  P(Aᶜ) = 1 - P(A)                                            │
├──────────────────────────────────────────────────────────────┤
│                    UNION & INTERSECTION                       │
├──────────────────────────────────────────────────────────────┤
│  A ∪ B = A OR B (in either or both)                          │
│  A ∩ B = A AND B (in both)                                   │
├──────────────────────────────────────────────────────────────┤
│                    ADDITION RULE                              │
├──────────────────────────────────────────────────────────────┤
│  P(A ∪ B) = P(A) + P(B) - P(A ∩ B)                          │
│                                                               │
│  If Mutually Exclusive: P(A ∪ B) = P(A) + P(B)              │
├──────────────────────────────────────────────────────────────┤
│                    MUTUALLY EXCLUSIVE                         │
├──────────────────────────────────────────────────────────────┤
│  P(A ∩ B) = 0 (cannot happen together)                       │
│  P(A ∪ B) = P(A) + P(B)                                      │
├──────────────────────────────────────────────────────────────┤
│                    INDEPENDENCE                               │
├──────────────────────────────────────────────────────────────┤
│  P(A ∩ B) = P(A) × P(B)                                      │
│  (One event doesn't affect the other)                        │
├──────────────────────────────────────────────────────────────┤
│                    PROBABILITY AXIOMS                         │
├──────────────────────────────────────────────────────────────┤
│  1. P(A) ≥ 0                                                 │
│  2. P(S) = 1                                                 │
│  3. For ME events: P(A∪B) = P(A) + P(B)                      │
└──────────────────────────────────────────────────────────────┘
```

---

# ✅ MODULE 2 EXAM PREPARATION CHECKLIST

## Sample Space & Events:
- [ ] Identify sample space for any experiment
- [ ] Find complement of an event
- [ ] Calculate union and intersection

## Probability Rules:
- [ ] Apply classical probability formula: n(A)/n(S)
- [ ] Check if probability assignments are valid (Axioms)
- [ ] Use complement rule: P(Aᶜ) = 1 - P(A)

## Addition Rule:
- [ ] Apply general rule: P(A∪B) = P(A) + P(B) - P(A∩B)
- [ ] Recognize when events are mutually exclusive
- [ ] Simplify for ME: P(A∪B) = P(A) + P(B)

## Mutually Exclusive vs Independent:
- [ ] Identify ME events (P(A∩B) = 0)
- [ ] Check independence (P(A∩B) = P(A)×P(B))
- [ ] Understand: ME ≠ Independent!

## Problem Types:
- [ ] Two dice problems (36 outcomes)
- [ ] Card problems (52 cards)
- [ ] Committee selection (Combinations)
- [ ] "At least one" problems (use complement)

---

# 📚 PRACTICE PROBLEMS FROM SLIDES 34-39

## Q1 (Slide 34): Bank Accounts
```
40% savings, 35% current, 25% loan
- P(loan) = ?
- P(not savings) = ?
- P(not current) = ?
- P(current or loan) = ?
```

## Q2 (Slide 35): Truth Telling
```
A speaks truth 80%, B speaks truth 60%
P(they contradict each other) = ?
```

## Q3 (Slide 35): Internet & TV
```
60% get Internet, 80% get TV, 50% get both
- P(at least one service) = ?
- P(exactly one service) = ?
```

## Q4 (Slide 36): Motors
```
10 motors, 2 defective. Select 2 randomly.
- P(both work) = ?
- P(one works, one doesn't) = ?
```

## Q5 (Slide 37): Coffee & Soda
```
55% drink coffee, 45% drink soda, 70% drink at least one
- P(both) = ?
- P(neither) = ?
```

---

**📅 Created for**: BITS Pilani MTech WLP, AIML ZC418, Module 2 (CS-2)
**📖 Based on**: ISM_CS-2_PPT.pdf (41 Slides)
**⏱️ Estimated Study Time**: 3-4 hours for thorough understanding

