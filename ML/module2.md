New topic — this one's more about getting data *ready* for machine learning. Same style, let's go.

## 1. Understanding Data — Attributes (NOIR)
NOIR is just a memory trick for the 4 types of data attributes (basically the same idea as before, but with the official names):

- **N — Nominal**: categories, no order. (hair color, country, blood type)
- **O — Ordinal**: categories WITH order, but the gaps between them aren't measurable. (movie rating: 1 star to 5 stars — 5 is better than 3, but you can't say it's "exactly 2 units better")
- **I — Interval**: numbers with equal gaps, but **no true zero**. (temperature in °C — 0°C doesn't mean "no temperature," it's just a point on the scale. Also: 20°C isn't "twice as hot" as 10°C)
- **R — Ratio**: numbers with equal gaps AND a true zero, where ratios make sense. (height, weight, money — 0 means "none," and $20 really is twice $10)

Quick test: "does 0 mean *nothing*, and can I say one value is 'twice' another?" If yes to both → Ratio. If numbers but no true zero → Interval. If it's just ranked labels → Ordinal. If it's just labels → Nominal.

## 2. Data Quality — Noise, Outliers, Missing, Duplicates
Real-world data is messy. Here's the mess you'll run into:

- **Noise**: random errors or weirdness in your data — like a typo, a sensor glitch, or someone typing "25" instead of "2.5." It's junk that doesn't reflect reality.
- **Outliers**: real values that are just... unusually extreme compared to everything else (like a billionaire's income in a dataset of regular salaries). Not necessarily wrong — just unusual.
- **Missing values**: blank spots — someone skipped a survey question, a sensor failed to record, etc.
- **Duplicates**: the same record accidentally appearing more than once — like if you accidentally submitted the same Google Form twice.

All four of these need to be dealt with before you can trust your data.

## 3. Preprocessing — Aggregation, Cleansing, IQR, Z-score
This is the "cleaning and prepping" stage before you actually use the data.

- **Aggregation**: combining multiple data points into a summary. Like turning "every single purchase a customer made this year" into "total amount spent this year."
- **Cleansing**: fixing or removing bad data — filling in missing values, removing duplicates, correcting typos.
- **IQR method** (for finding outliers): remember Q1, Q3, and IQR = Q3 − Q1 from before? Anything beyond Q1 − 1.5×IQR or Q3 + 1.5×IQR gets flagged as an outlier and possibly removed.
- **Z-score method** (another way to find outliers): measures how many standard deviations a value is from the mean.
  $$z = \frac{x - \text{mean}}{\text{standard deviation}}$$
  Usually, if |z| > 3, that point is considered a serious outlier — it's really far from the "typical" pattern.

## 4. Sampling — Train/Test Split, Stratified, Imbalanced
Before training a machine learning model, you split your data up smartly.

- **Train/Test split**: you don't use ALL your data to train the model — you hold some back. Like: train the model on 80% of your data, then test it on the other 20% it's never seen, to check if it actually learned or just memorized. It's like studying with practice questions (train) then taking the real exam (test) with new questions.
- **Stratified sampling**: making sure your split keeps the same proportions as the original data. If your full dataset is 70% cats and 30% dogs, a stratified split makes sure both train and test sets ALSO have roughly 70% cats and 30% dogs — not a random split that might accidentally grab mostly cats.
- **Imbalanced data**: when one category massively outnumbers another. Like a fraud-detection dataset where 99% of transactions are normal and only 1% are fraud. This is tricky because a lazy model could just guess "not fraud" every time and still be 99% "accurate" — while being useless at its actual job.

## 5. Feature Scaling — Normalization vs Standardization
Different features (columns) in your data often have wildly different number ranges — like "age" (0–100) vs "income" (0–500,000). Some ML models get confused by this, treating the bigger numbers as more important just because they're bigger. So we rescale everything to be fair.

- **Normalization**: squishes all values into a fixed range, usually 0 to 1.
  $$x_{new} = \frac{x - min}{max - min}$$
  Good when you want everything on the same tidy scale.
- **Standardization**: rescales data so it has a mean of 0 and a standard deviation of 1 (using that Z-score formula from before!).
  $$x_{new} = \frac{x - mean}{standard\ deviation}$$
  Good when your data might have outliers or isn't evenly distributed.

Think of it like converting everyone's test scores (out of different total marks — one test was out of 50, another out of 100) onto the same fair scale so you can actually compare them.

## 6. Feature Engineering — Extraction, Selection, Encoding
This is about shaping your raw data into the best possible input for your model.

- **Feature Extraction**: creating NEW, more useful features from existing ones. Like turning a "birthdate" column into an "age" column — age is often more directly useful than a raw date.
- **Feature Selection**: picking only the most important/useful columns and dropping the useless ones. If "favorite color" has zero relationship to whether someone passes a class, drop it — it's just noise that confuses the model.
- **Encoding**: converting categorical data (text labels) into numbers, since ML models need numbers, not words. Like turning "red, blue, green" into 0, 1, 2 — or better, into separate yes/no columns for each color (called one-hot encoding), so the model doesn't accidentally think "green (2) is greater than red (0)."

## 7. ML Concepts — Inductive Learning, Hypothesis
- **Inductive Learning**: this is literally how most machine learning works — the model looks at a bunch of specific EXAMPLES (your training data) and tries to figure out a GENERAL pattern or rule from them. It's like if you saw 100 photos labeled "cat" or "dog" and started noticing "okay, pointy ears + whiskers = probably cat" — you're inducing a general rule from specific examples.
- **Hypothesis**: in ML, this is the specific rule/function the model comes up with to make predictions, based on what it learned from the training data. It's the model's "best guess" at the pattern connecting your inputs to your outputs. As it trains more, it keeps refining this hypothesis to get more accurate.

---

**Quick mental map:** Understand your data's type first (NOIR) → clean it up (handle noise/outliers/missing/duplicates) → preprocess it (aggregate, clean, detect outliers) → split it smartly for training (sampling) → scale it fairly (normalize/standardize) → engineer the best features (extract, select, encode) → then the model uses inductive learning to build a hypothesis from all of that.

Want a practice quiz on this batch, or should I bundle everything into one big cheat-sheet artifact you can scroll through and study from?
