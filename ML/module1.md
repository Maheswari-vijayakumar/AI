New topic — the big picture of Machine Learning itself. Let's go!

## 1. Course Overview — Objectives, Modules, Evaluation
Not really a "concept" to learn, more just the roadmap of a course:
- **Objectives**: what you're supposed to be able to do by the end (like "understand how ML models learn from data").
- **Modules**: the chunks/units the course is broken into (like the topics we've already covered — data, statistics, probability, etc.).
- **Evaluation**: how you'll be graded — quizzes, assignments, exams, projects.

Basically the syllabus. Nothing to memorize here, just context for how the course is structured.

## 2. What is ML? — Definition, T-P-E Framework, Use Cases
**Definition**: Machine Learning is when a computer **learns from data/experience** to get better at a task, instead of a human explicitly programming every single rule.

**T-P-E Framework** (a formal way to describe any ML problem):
- **T (Task)**: what the program is trying to do. (e.g., "classify emails as spam or not spam")
- **P (Performance measure)**: how you measure if it's doing well. (e.g., "% of emails correctly classified")
- **E (Experience)**: the data it learns from. (e.g., "a dataset of 10,000 emails already labeled spam/not spam")

A system "learns" if its performance (P) on a task (T) improves as it gets more experience (E).

**Use cases**: things like Netflix recommending shows, Instagram detecting faces in photos, banks flagging suspicious transactions, voice assistants understanding speech — literally anywhere a computer needs to spot patterns instead of following fixed rules.

## 3. Traditional Programming vs ML — Spam Filter Example
This is the classic example that makes the difference click.

- **Traditional programming**: a human writes explicit rules. Like: "IF email contains the word 'lottery' OR 'free money' OR 'click here' → mark as spam." The problem? Spammers just avoid those exact words, and you'd have to keep writing new rules forever.
- **Machine Learning approach**: instead, you feed the model thousands of emails already labeled "spam" or "not spam," and it learns the *patterns* on its own — word combos, sender behavior, formatting quirks — without a human hardcoding every rule. It can also adapt better when spam evolves.

The core shift: traditional programming = **human writes the rules**. ML = **computer discovers the rules from data**.

## 4. Why ML? — When & Why to Use It
ML isn't always the answer — it shines in specific situations:

- **When the rules are too complex to write by hand.** (Nobody can hand-write a rule for "what does a cat look like in every possible photo.")
- **When patterns are hidden in huge amounts of data** that a human couldn't manually spot.
- **When the environment changes over time**, so a fixed rule-based system would go stale (like fraud patterns constantly evolving).
- **When you need personalization at scale** (like Netflix recommending different things to millions of different users — impossible to hardcode per person).

If a task can be solved with a simple, stable rule (like "calculate someone's tax based on a fixed formula"), you probably don't need ML — just write the rule.

## 5. Types of ML — Supervised, Unsupervised, Reinforcement, Semi-supervised
This is the big one — four core "flavors" of machine learning:

- **Supervised Learning**: you train the model on data that's already **labeled** with the correct answer. Like showing it 1,000 photos labeled "cat" or "dog" — it learns to map input → correct output. Used for things like spam detection, predicting house prices.
  - Two sub-types: **Classification** (predicting a category, like spam/not spam) and **Regression** (predicting a number, like predicting a house's price).

- **Unsupervised Learning**: the data has **no labels** — the model has to find patterns or groupings on its own. Like giving it a pile of customer data with no categories, and it groups customers into clusters based on similar shopping habits, without you telling it what the groups should be.

- **Reinforcement Learning**: the model (called an "agent") learns by **trial and error**, getting rewards for good actions and penalties for bad ones — like training a dog with treats. Think of a game-playing AI that learns to play chess by playing millions of games and getting "rewarded" for winning.

- **Semi-supervised Learning**: a mix — you have a **small amount of labeled data** and a **large amount of unlabeled data**. The model uses the small labeled chunk to help make sense of the much bigger unlabeled chunk. Useful when labeling data is expensive/slow (like labeling requires an expert doctor for medical images), but you have tons of raw unlabeled data available.

**Quick way to remember:** Supervised = learning with an answer key. Unsupervised = finding patterns with no answer key. Reinforcement = learning by getting rewarded/punished. Semi-supervised = a little answer key + a lot of extra unlabeled practice.

## 6. ML Tools — Scikit-Learn, PyTorch, TensorFlow
These are just the popular software libraries people use to actually build ML models in code (mostly in Python):

- **Scikit-Learn**: great for beginners and "classic" ML algorithms (like the ones we've been discussing — classification, regression, clustering). Simple and clean.
- **PyTorch**: a library made by Meta, super popular for **deep learning** (neural networks) — especially loved in research because it's flexible and easy to debug.
- **TensorFlow**: a library made by Google, also for deep learning — historically popular in industry/production settings for deploying large-scale ML systems.

You don't need to memorize technical details — just know: Scikit-Learn = classic ML basics, PyTorch/TensorFlow = deep learning / neural networks.

## 7. ML Workflow — The 7-Step Process
This is the general pipeline you follow anytime you build an ML model (and it actually ties together everything we've learned so far!):

1. **Define the problem** — what are you trying to predict/solve?
2. **Collect data** — gather the raw data you'll learn from.
3. **Preprocess/clean the data** — handle missing values, outliers, duplicates (remember this from before?).
4. **Split the data** — train/test split, maybe stratified sampling (also from before!).
5. **Choose & train a model** — pick an algorithm (supervised/unsupervised/etc.) and let it learn from the training data.
6. **Evaluate the model** — test it on the test set, check performance (accuracy, errors, etc.).
7. **Deploy & monitor** — put the model into real-world use, and keep watching it since data patterns can change over time (this is why models sometimes need retraining).

---

**Quick mental map:** ML = computers learning from data instead of hardcoded rules (T-P-E framework describes this formally). It's most useful when rules are too complex or patterns are hidden. There are 4 main flavors (supervised/unsupervised/reinforcement/semi-supervised) depending on what kind of data/feedback you have. Tools like Scikit-Learn/PyTorch/TensorFlow help you build it, following a repeatable 7-step workflow — and notice how steps 3-4 are literally everything we covered in the last lesson about data preprocessing and sampling!

Want a quiz on this batch, or should I put together one big cheat-sheet artifact covering all four topics we've done so far (probability, statistics, data preprocessing, and ML basics)?
