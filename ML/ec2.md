# ML Session 1: Introduction to Machine Learning — Exam-Ready Notes

**Importance for EC2: ⭐⭐⭐ (Conceptual, likely 1-2 MCQs/short answers)**

---

## Day-wise Plan
- **Day 1:** What is ML, applications, importance
- **Day 2:** Design a Learning System (checkers example)
- **Day 3:** Issues/Challenges in ML + Quick Revision

---

## 1. What is Machine Learning? ⭐⭐⭐

> **Tom Mitchell's Definition (IMPORTANT — often asked verbatim):**
> "A computer program is said to **learn** from experience **E** with respect to some class of tasks **T** and performance measure **P**, if its performance at tasks in T, as measured by P, improves with experience E."

**Simple definition:** ML is the field of study that gives computers the ability to learn from data without being explicitly programmed.

| Component | Example (Spam Filter) |
|-----------|------------------------|
| Task (T) | Classify emails as spam/not spam |
| Experience (E) | Watching you label emails |
| Performance (P) | % of emails correctly classified |

---

## 2. Why is ML Important? ⭐⭐

- Problems too complex for explicit rule-based programming (e.g., image recognition, speech)
- Systems that **adapt** to new data/environments automatically
- Can discover hidden patterns humans might miss (data mining)
- Handles problems with no known algorithm (e.g., face recognition)
- Fluctuating environments — ML systems can be retrained on new data

---

## 3. Application Areas ⭐⭐

| Domain | Application |
|--------|-------------|
| Computer Vision | Image classification, object detection |
| NLP | Spam detection, sentiment analysis, chatbots |
| Healthcare | Disease prediction, diagnosis |
| Finance | Fraud detection, credit scoring |
| Recommendation | Netflix, Amazon product suggestions |
| Robotics | Autonomous navigation (Reinforcement Learning) |

---

## 4. Design a Learning System ⭐⭐⭐ (Classic Checkers Example — Mitchell)

**Steps to design a learning system:**

1. **Choose the Training Experience (E)**
   - Direct vs indirect feedback
   - Degree of learner's control over training examples
   - How well training data represents distribution of test examples

2. **Choose the Target Function**
   - What exactly should be learned?
   - E.g., `ChooseMove: Board → Move` or evaluation function `V: Board → ℝ`

3. **Choose Representation for Target Function**
   - E.g., linear combination of board features:
   ```
   V̂(b) = w₀ + w₁x₁ + w₂x₂ + w₃x₃ + w₄x₄ + w₅x₅ + w₆x₆
   ```
   (xᵢ = board features like number of pieces, wᵢ = learned weights)

4. **Choose a Learning Algorithm**
   - Estimate training values (using rules like temporal difference)
   - Adjust weights (e.g., LMS — Least Mean Squares weight update rule):
   ```
   wᵢ ← wᵢ + η(V_train(b) − V̂(b)) × xᵢ
   ```

**Final System Design (4 modules):**
```
Performance System → Critic → Generalizer → Experiment Generator → (loop back)
```
| Module | Role |
|--------|------|
| Performance System | Plays the game using learned V̂ |
| Critic | Generates training examples (target values) |
| Generalizer | Learns/updates V̂ from training examples |
| Experiment Generator | Proposes new problems (board states) to explore |

---

## 5. Issues / Challenges in Machine Learning ⭐⭐⭐ (Frequently Asked)

### A. Data-related Issues
- **Insufficient quantity of training data** — ML needs LOTS of data
- **Non-representative training data** — sampling bias/noise
- **Poor quality data** — errors, outliers, missing values, noise
- **Irrelevant features** — garbage in, garbage out

### B. Model-related Issues
- **Overfitting** — model too complex, fits training data + noise, poor generalization
- **Underfitting** — model too simple, can't capture underlying pattern
- **Bias-Variance tradeoff**

### C. Other Challenges
- Choosing the right target function & representation
- Determining amount/type of training experience needed
- Computational cost (time & resources for training)
- Generalization to unseen data
- Feature engineering complexity
- Model interpretability vs accuracy tradeoff

---

## Quick Reference Card

| Concept | One-liner |
|---------|-----------|
| Mitchell's definition | Learn from E w.r.t T, improve by P |
| Design steps | Experience → Target Function → Representation → Learning Algorithm |
| Checkers example | V̂(b) = linear combo of board features |
| LMS weight update | wᵢ ← wᵢ + η(V_train − V̂)xᵢ |
| Overfitting | Too complex, memorizes noise |
| Underfitting | Too simple, misses pattern |

---

## Revision Checklist
- [ ] Can state Mitchell's T/E/P definition with an example
- [ ] Can list & explain the 4 steps of designing a learning system
- [ ] Can draw/explain the 4-module learning system architecture (Performance System, Critic, Generalizer, Experiment Generator)
- [ ] Can list at least 5 challenges/issues in ML
- [ ] Can differentiate overfitting vs underfitting
