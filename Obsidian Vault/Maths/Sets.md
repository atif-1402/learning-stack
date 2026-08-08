# 📘 NIOS Class 12 (Code 311) — Revision: Set Theory
---
## 🧭 Quick Navigation

**Jump to a section:**
[[#🔷 SECTION 1: WHAT IS A SET?|1. What is a Set?]] · [[#🔷 SECTION 2: REPRESENTATION OF SETS|2. Representation]] · [[#🔷 SECTION 3: STANDARD NUMBER SYSTEMS (SETS OF NUMBERS)|3. Number Systems]] · [[#🔷 SECTION 4: TYPES OF SETS|4. Types of Sets]] · [[#🔷 SECTION 5: CARDINAL NUMBER OF A SET|5. Cardinal Number]] · [[#🔷 SECTION 6: SUBSETS|6. Subsets]] · [[#🔷 SECTION 7: NUMBER OF SUBSETS & POWER SET|7. Power Set]] · [[#🔷 SECTION 8: UNIVERSAL SET|8. Universal Set]] · [[#🔷 SECTION 9: VENN DIAGRAMS|9. Venn Diagrams]] · [[#🔷 SECTION 10: OPERATIONS ON SETS|10. Operations]] · [[#🔷 SECTION 11: ALGEBRAIC LAWS OF SETS (COMPLETE LIST)|11. Algebraic Laws]] · [[#🔷 SECTION 12: INTERVAL NOTATION ON THE REAL LINE|12. Intervals]] · [[#🔷 SECTION 13: TRICKY EXAM EDGE CASES (HIGH-YIELD FOR EXAMS)|13. Edge Cases]] · [[#🔷 SECTION 14: COUNTING FORMULA BANK (FOR WORD PROBLEMS)|14. Counting Formulas]] · [[#🔷 SECTION 15: SYMBOLS QUICK-REFERENCE SHEET|15. Symbols]] · [[#🔷 SECTION 16: COMMON MISTAKES CHECKLIST (FINAL REVISION)|16. Common Mistakes]]

**⚡ Fastest routes to reference tables (for last-minute revision):**
- 📐 [[#11.10 Master Summary Table of All Laws|All Algebraic Laws — Master Table]]
- 📏 [[#12.5 Summary Table|Interval Notation — Summary Table]]
- 🔢 [[#14.7 Quick-Reference Formula Table|Counting Formula Bank — Quick-Reference Table]]
- 🔤 [[#🔷 SECTION 15: SYMBOLS QUICK-REFERENCE SHEET|Symbols Cheat Sheet]]
- ⚠️ [[#🔷 SECTION 16: COMMON MISTAKES CHECKLIST (FINAL REVISION)|Common Mistakes Checklist]]
- 🧩 [[#13.1 Membership ($\in$) vs. Inclusion ($\subset$) — The Most Commonly Confused Concept|Nested Set / ∈ vs ⊆ Trap]]
- 🕳️ [[#13.2 The Empty Set $\emptyset$ vs. the Singleton Set $\{\emptyset\}$|∅ vs {∅} Trap]]

---
## 🔷 SECTION 1: WHAT IS A SET?

A **set** is a **well-defined collection of distinct objects**. "Well-defined" means that given any object, we must be able to decide, without ambiguity, whether it belongs to the collection or not.

- The objects in a set are called its **elements** or **members**.
- Sets are usually denoted by **capital letters**: $A, B, C, X, Y, \dots$
- Elements are denoted by **small letters**: $a, b, c, x, y, \dots$
- Elements are enclosed in **curly braces** ${ }$.
- If $x$ is an element of set $A$, we write $x \in A$ (read as "$x$ belongs to $A$").
- If $x$ is not an element of set $A$, we write $x \notin A$ (read as "$x$ does not belong to $A$").

**Example:** $$A = {1, 2, 3, 4}$$ Here $1 \in A$, $3 \in A$, but $5 \notin A$.

### ✔️ Well-Defined Collections (Valid Sets)

- ${1, 2, 3, 4}$ — the collection of the first four natural numbers.
- ${a, e, i, o, u}$ — the collection of vowels in the English alphabet.
- The collection of all even numbers between 1 and 11: ${2, 4, 6, 8, 10}$.

### ❌ Not Well-Defined Collections (NOT Valid Sets)

- The collection of "beautiful flowers" — beauty is subjective, so we cannot say with certainty whether a given flower belongs to this collection.
- The collection of "intelligent students in a class" — intelligence is not precisely defined, so membership cannot be decided objectively.
- The collection of "tall boys in a school" — tallness is a relative/vague term.

**Key takeaway:** A collection is a set only when membership can be decided with 100% certainty for every object in the universe.

---

## 🔷 SECTION 2: REPRESENTATION OF SETS

There are two standard methods of describing a set.

### 2.1 Roster Form (Tabular Form / Listing Method)

In this method, we list **all** the elements of the set, separated by commas, inside curly braces. Each element is written only once (no repetition), and the order of elements does not matter.

**Example 1:** $$A = {2, 4, 6, 8}$$ This is the set of the first four even natural numbers.

**Example 2:** $$B = {a, e, i, o, u}$$ This is the set of vowels of the English alphabet.

**Example 3 (infinite set in roster form using dots):** $$N = {1, 2, 3, 4, \dots}$$ The three dots ($\dots$) indicate that the pattern continues without end.

### 2.2 Set-Builder Form (Property Method / Rule Method)

In this method, instead of listing elements, we state a **common property** that all elements of the set — and no other object — must satisfy. The general syntax is:

$$A = {x \mid x \text{ has property } P}$$

Read as: _"A is the set of all $x$ such that $x$ has property $P$."_ (The symbol $\mid$ or $:$ both mean "such that".)

**Example 1:** $$A = {x \mid x \text{ is an even natural number less than } 10}$$ In Roster form, this is the same set as: $A = {2, 4, 6, 8}$.

**Example 2:** $$B = {x : x \in N, \ x^2 < 30}$$ In Roster form: $B = {1, 2, 3, 4, 5}$ (since $5^2 = 25 < 30$ but $6^2 = 36 \not< 30$).

**Example 3:** $$C = {x \mid x \text{ is a vowel of the English alphabet}}$$ In Roster form: $C = {a, e, i, o, u}$.

**Converting between the two forms — Practice Table:**

|Set-Builder Form|Roster Form|
|---|---|
|${x \mid x \in N, x < 6}$|${1, 2, 3, 4, 5}$|
|${x \mid x \text{ is a prime number}, x < 10}$|${2, 3, 5, 7}$|
|${x \mid x^2 = 9, x \in Z}$|${-3, 3}$|
|${x \mid x \text{ is a multiple of } 5, 1 \le x \le 25}$|${5, 10, 15, 20, 25}$|

---

## 🔷 SECTION 3: STANDARD NUMBER SYSTEMS (SETS OF NUMBERS)

These standard sets are used constantly throughout the syllabus and must be memorized exactly.

### 3.1 Natural Numbers — $\mathbb{N}$

The set of all positive counting numbers, starting from 1. $$\mathbb{N} = {1, 2, 3, 4, 5, \dots}$$ **Example use:** $7 \in \mathbb{N}$, but $0 \notin \mathbb{N}$ and $-3 \notin \mathbb{N}$.

### 3.2 Whole Numbers — $W$

The set of natural numbers together with zero. $$W = {0, 1, 2, 3, 4, \dots}$$ **Example use:** $0 \in W$, $5 \in W$, but $-2 \notin W$.

### 3.3 Integers — $\mathbb{Z}$

The set of all whole numbers and their negatives (positive numbers, negative numbers, and zero). The symbol $\mathbb{Z}$ comes from the German word _Zahlen_ (numbers). $$\mathbb{Z} = {\dots, -3, -2, -1, 0, 1, 2, 3, \dots}$$ **Example use:** $-5 \in \mathbb{Z}$, $0 \in \mathbb{Z}$, $12 \in \mathbb{Z}$, but $\frac{1}{2} \notin \mathbb{Z}$.

### 3.4 Positive Integers — $\mathbb{Z}^{+}$

The set of integers strictly greater than zero. Note that $\mathbb{Z}^{+} = \mathbb{N}$ (they are equal sets). $$\mathbb{Z}^{+} = {1, 2, 3, 4, \dots}$$

**Negative Integers** — $\mathbb{Z}^{-}$ (the set of integers strictly less than zero): $$\mathbb{Z}^{-} = {-1, -2, -3, -4, \dots}$$

### 3.5 Rational Numbers — $\mathbb{Q}$

The set of all numbers that can be expressed in the form $\frac{p}{q}$, where $p, q \in \mathbb{Z}$ and $q \neq 0$. $$\mathbb{Q} = \left{ x ;\middle|; x = \frac{p}{q},\ p, q \in \mathbb{Z},\ q \neq 0 \right}$$ **Example use:** $\frac{1}{2} \in \mathbb{Q}$, $\frac{-3}{4} \in \mathbb{Q}$, and every integer is rational since e.g. $5 = \frac{5}{1}$, so $5 \in \mathbb{Q}$. But $\sqrt{2} \notin \mathbb{Q}$.

### 3.6 Real Numbers — $\mathbb{R}$

The set of all numbers that can be represented on the number line — this includes **all rational numbers and all irrational numbers combined**. $$\mathbb{R} = \mathbb{Q} \cup (\mathbb{R} - \mathbb{Q})$$ **Example use:** $3, \ -7, \ \frac{2}{5}, \ \sqrt{2}, \ \pi$ are all elements of $\mathbb{R}$.

### 3.7 Irrational Numbers — $\mathbb{R} - \mathbb{Q}$

The set of real numbers that are **not** rational, i.e., numbers that cannot be written as $\frac{p}{q}$ form. This set is written as the difference of $\mathbb{R}$ and $\mathbb{Q}$. $$\mathbb{R} - \mathbb{Q} = {x \mid x \in \mathbb{R} \text{ and } x \notin \mathbb{Q}}$$ **Example use:** $\sqrt{2}, \ \sqrt{3}, \ \sqrt{5}, \ \pi, \ e \in (\mathbb{R} - \mathbb{Q})$.

### 3.8 Chain of Inclusion (Very Important for Exams)

$$\mathbb{N} \subset W \subset \mathbb{Z} \subset \mathbb{Q} \subset \mathbb{R}$$ Every natural number is a whole number; every whole number is an integer; every integer is a rational number; every rational number is a real number. This chain is a favorite exam fill-in-the-blank/true-false question.

---

## 🔷 SECTION 4: TYPES OF SETS

### 4.1 Empty Set (Null Set / Void Set)

A set that contains **no elements at all**. It is denoted by $\emptyset$ or ${\ }$. Its cardinal number is $0$, i.e., $n(\emptyset) = 0$.

**Example 1:** $$A = {x \mid x < 0, \ x \in \mathbb{N}} = \emptyset$$ (There is no natural number less than 0.)

**Example 2:** $$B = {x \mid x^2 = -1, \ x \in \mathbb{R}} = \emptyset$$ (No real number squares to give a negative number.)

**⚠️ Important edge case:** $\emptyset$ (the empty set) is **not the same** as ${0}$. The set ${0}$ is a singleton set containing the single element $0$; it is not empty because it has one element. Also, $\emptyset \neq {\emptyset}$ — this is explained in detail in the "Tricky Edge Cases" section below.

### 4.2 Singleton Set

A set that contains **exactly one** element.

**Example 1:** $A = {5}$ — contains only the element $5$.

**Example 2:** $B = {x \mid x \in \mathbb{N}, \ 3 < x < 5} = {4}$ — contains only the element $4$.

### 4.3 Finite Set

A set whose elements can be **counted completely** — the counting process comes to an end. It has a definite, limited number of elements.

**Example:** $A = {1, 2, 3, 4}$ is finite because $n(A) = 4$.

**Example:** The set of letters in the English alphabet is finite because $n = 26$.

### 4.4 Infinite Set

A set in which the process of counting elements **never ends** — it has an unlimited number of elements.

**Example:** $\mathbb{N} = {1, 2, 3, 4, \dots}$ is infinite.

**Example:** ${x \mid x \in \mathbb{R}, \ 0 < x < 1}$ is infinite (there are infinitely many real numbers between 0 and 1).

### 4.5 Equal Sets

Two sets $A$ and $B$ are **equal** if they contain **exactly the same elements**, regardless of the order in which the elements are written or whether any element is repeated in the listing. Notation: $A = B$.

**Example:** $$A = {1, 2, 3}, \quad B = {3, 2, 1}$$ Here every element of $A$ is in $B$ and every element of $B$ is in $A$, so $A = B$.

**Example:** $$A = {1, 2, 2, 3}, \quad B = {1, 2, 3}$$ Since repetition is ignored, $A = {1, 2, 3}$ as well, so $A = B$.

### 4.6 Equivalent Sets

Two sets $A$ and $B$ are **equivalent** if they have the **same number of elements** (same cardinal number), even though the actual elements may be completely different. Notation: $A \leftrightarrow B$ or simply $n(A) = n(B)$.

**Example:** $$A = {1, 2, 3}, \quad B = {a, b, c}$$ $$n(A) = n(B) = 3 \implies A \text{ and } B \text{ are equivalent sets.}$$

**⚠️ Important distinction:** _Equal sets_ must have identical elements, so equal sets are always equivalent. But _equivalent sets_ need only match in count — they are **not necessarily equal**. Example: ${1,2,3}$ and ${a,b,c}$ are equivalent but NOT equal, because their elements are different.

### 4.7 Disjoint Sets

Two sets are **disjoint** if they have **no elements in common** — their intersection is the empty set. $$A \cap B = \emptyset$$

**Example:** $$A = {1, 2}, \quad B = {3, 4}$$ Since no element of $A$ is in $B$ (and vice versa), $A \cap B = \emptyset$, so $A$ and $B$ are disjoint.

### 4.8 Overlapping Sets

Two sets are **overlapping** (also called intersecting sets) if they have **at least one element in common**, but neither is a subset of the other.

**Example:** $$A = {1, 2, 3}, \quad B = {3, 4, 5}$$ Here $A \cap B = {3} \neq \emptyset$, so $A$ and $B$ are overlapping sets.

---

## 🔷 SECTION 5: CARDINAL NUMBER OF A SET

The **cardinal number** of a finite set $A$, written $n(A)$, is the total count of distinct elements in $A$.

**Example:** $$A = {1, 2, 3, 4} \implies n(A) = 4$$

**Example:** $$B = {x \mid x \text{ is a letter in the word "MATHEMATICS"}}$$ Distinct letters: ${M, A, T, H, E, I, C, S} \implies n(B) = 8$ (repeated letters M, A, T are counted only once).

---

## 🔷 SECTION 6: SUBSETS

### 6.1 Definition

A set $A$ is said to be a **subset** of set $B$ if **every element of $A$ is also an element of $B$**. Notation: $A \subseteq B$ (read "A is a subset of B" or "A is contained in B").

$$A \subseteq B \iff \text{for every } x, \ (x \in A \implies x \in B)$$

**Example:** $$A = {1, 2}, \quad B = {1, 2, 3, 4}$$ Every element of $A$ (namely 1 and 2) is present in $B$, so $A \subseteq B$.

If $A$ is a subset of $B$, we also say $B$ is a **superset** of $A$, written $B \supseteq A$.

### 6.2 Proper Subset

$A$ is a **proper subset** of $B$, written $A \subset B$, if $A \subseteq B$ **and** $A \neq B$ — that is, $B$ must contain **at least one element that is not in $A$**.

$$A \subset B \iff (A \subseteq B) \text{ and } (A \neq B)$$

**Example:** $$A = {1, 2}, \quad B = {1, 2, 3}$$ $A \subseteq B$ is true, and $A \neq B$ (since $3 \in B$ but $3 \notin A$), so $A \subset B$ (proper subset).

**Non-example:** $$A = {1, 2, 3}, \quad B = {1, 2, 3}$$ Here $A \subseteq B$ is true, but $A = B$, so $A$ is **NOT** a proper subset of $B$ (it is only an "improper" subset, i.e., the sets are equal).

### 6.3 Important Facts about Subsets (Frequently Tested)

**Fact 1 — Every set is a subset of itself:** $$A \subseteq A \quad \text{(this is called the reflexive property)}$$

**Fact 2 — The empty set is a subset of every set:** $$\emptyset \subseteq A \quad \text{for any set } A$$ This is true even for $A = \emptyset$ itself: $\emptyset \subseteq \emptyset$.

**Fact 3 — If $A$ is a proper subset of $B$, then $A$ and $B$ cannot be equal:** $$A \subset B \implies A \neq B$$

**Fact 4 — Transitivity:** If $A \subseteq B$ and $B \subseteq C$, then $A \subseteq C$.

**Fact 5 — Antisymmetry:** If $A \subseteq B$ and $B \subseteq A$, then $A = B$. (This is actually the formal test used to _prove_ two sets are equal in proof-based questions.)

### 6.4 Subset vs. Not a Subset — Quick Test

**Example (not a subset):** $$A = {1, 5}, \quad B = {1, 2, 3, 4}$$ Since $5 \in A$ but $5 \notin B$, $A \not\subseteq B$ (A is NOT a subset of B). Notation for "not a subset": $A \not\subseteq B$ (or $A \nsubseteq B$).

---

## 🔷 SECTION 7: NUMBER OF SUBSETS & POWER SET

### 7.1 Formula: Number of Subsets of a Set

If a set $A$ contains $n$ elements, then the **total number of subsets** of $A$ (including $A$ itself and $\emptyset$) is given by:

$$\text{Number of subsets of } A = 2^{n}$$

**Worked Example 1:** If $n = 2$, e.g. $A = {1, 2}$: $$\text{Number of subsets} = 2^2 = 4$$ The 4 subsets are: $\emptyset, \ {1}, \ {2}, \ {1,2}$.

**Worked Example 2:** If $n = 3$, e.g. $A = {1, 2, 3}$: $$\text{Number of subsets} = 2^3 = 8$$ The 8 subsets are: $\emptyset, \ {1}, \ {2}, \ {3}, \ {1,2}, \ {1,3}, \ {2,3}, \ {1,2,3}$.

**Worked Example 3:** If $n = 5$: $$\text{Number of subsets} = 2^5 = 32$$

### 7.2 Formula: Number of PROPER Subsets

Since the only subset excluded when counting proper subsets is $A$ itself (the set is never a proper subset of itself), the formula is:

$$\text{Number of proper subsets of } A = 2^{n} - 1$$

**Worked Example 1:** $A = {1, 2}$, $n = 2$: $$\text{Proper subsets} = 2^2 - 1 = 3$$ These are: $\emptyset, \ {1}, \ {2}$ (note ${1,2}$ itself is excluded).

**Worked Example 2:** $A = {1, 2, 3}$, $n = 3$: $$\text{Proper subsets} = 2^3 - 1 = 7$$

**⚠️ Exam Note on Convention:** Some textbooks/questions ask for "proper subsets excluding $\emptyset$ as well" — always read the question carefully. Under the **standard NIOS convention**, $\emptyset$ **is** counted as a proper subset of any non-empty set, and the formula $2^n - 1$ applies as shown above.

### 7.3 Power Set

The **power set** of $A$, denoted $P(A)$, is defined as **the set of all possible subsets of $A$** (including $\emptyset$ and $A$ itself). Note carefully: $P(A)$ is a set _whose elements are themselves sets_.

$$P(A) = {X \mid X \subseteq A}$$

**Worked Example:** $$A = {a, b}$$ $$P(A) = \Big{\ \emptyset,\ {a},\ {b},\ {a,b}\ \Big}$$

**Cardinal number of the power set:** $$n(P(A)) = 2^{n(A)}$$

**Worked Example (continued):** Since $n(A) = 2$, we get $n(P(A)) = 2^2 = 4$, which matches — $P(A)$ has exactly 4 elements as listed above.

**Second Worked Example:** $A = {1, 2, 3}$ $$P(A) = \Big{\ \emptyset,\ {1},\ {2},\ {3},\ {1,2},\ {1,3},\ {2,3},\ {1,2,3}\ \Big}$$ $$n(P(A)) = 2^3 = 8$$

**⚠️ Common mistake to avoid:** Never write $a \in P(A)$ — the _elements_ of $P(A)$ are sets, not the original elements. The correct statement is ${a} \in P(A)$, and also $a \in A$.

---

## 🔷 SECTION 8: UNIVERSAL SET

The **universal set**, denoted $U$, is a "master set" that contains **all the elements under consideration** in a particular discussion or problem — every other set being discussed is treated as a subset of $U$.

**Example:** If we are discussing sets of digits, we might fix: $$U = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9}$$ Then any set such as $A = {2, 4, 6}$ (even digits) is understood to be a subset of this $U$.

**Example:** If we are discussing the alphabet, $U = {a, b, c, \dots, z}$.

The universal set is essential for defining the **complement** of a set (Section 10).

---

## 🔷 SECTION 9: VENN DIAGRAMS

A **Venn diagram** is a pictorial/geometric representation of sets using closed figures (usually circles), drawn inside a rectangle that represents the universal set $U$.

**Conventions:**

- The rectangle represents $U$.
- Each circle inside the rectangle represents one set.
- Overlapping circles represent common elements (intersection).
- Points/dots or labels are used to mark specific elements.

Venn diagrams are used to visualize and solve problems involving:

- Union
- Intersection
- Difference
- Complement
- Disjoint vs. overlapping relationships
- Word problems requiring the inclusion-exclusion counting formulas (Section 14)

---

## 🔷 SECTION 10: OPERATIONS ON SETS

### 10.1 Union of Sets

The **union** of two sets $A$ and $B$, written $A \cup B$, is the set of **all elements that belong to $A$, or to $B$, or to both**.

$$A \cup B = {x \mid x \in A \text{ or } x \in B}$$

**Worked Example:** $$A = {1, 2, 3}, \quad B = {3, 4, 5}$$ $$A \cup B = {1, 2, 3, 4, 5}$$ (Note: the common element $3$ is written only once.)

**Worked Example (disjoint sets):** $$A = {1, 2}, \quad B = {5, 6}$$ $$A \cup B = {1, 2, 5, 6}$$

### 10.2 Intersection of Sets

The **intersection** of two sets $A$ and $B$, written $A \cap B$, is the set of **all elements that are common to both $A$ and $B$**.

$$A \cap B = {x \mid x \in A \text{ and } x \in B}$$

**Worked Example:** $$A = {1, 2, 3}, \quad B = {2, 3, 4}$$ $$A \cap B = {2, 3}$$

**Worked Example (disjoint sets):** $$A = {1, 2}, \quad B = {5, 6}$$ $$A \cap B = \emptyset$$

### 10.3 Difference of Sets

The **difference** $A - B$ (also written $A \setminus B$) is the set of **all elements that are in $A$ but NOT in $B$**.

$$A - B = {x \mid x \in A \text{ and } x \notin B}$$

**Worked Example:** $$A = {1, 2, 3}, \quad B = {2, 3, 4}$$ $$A - B = {1}$$ $$B - A = {4}$$

**⚠️ Important — Difference is NOT Commutative:** $$A - B \neq B - A \quad \text{(in general)}$$ From the example above, $A - B = {1}$ while $B - A = {4}$ — clearly different sets. Difference is only equal both ways if $A = B$.

### 10.4 Complement of a Set

The **complement** of $A$, written $A'$ (or $A^{c}$), is the set of **all elements of the universal set $U$ that are NOT in $A$**. It is really just a special case of difference: $A' = U - A$.

$$A' = {x \mid x \in U \text{ and } x \notin A}$$

**Worked Example:** $$U = {1, 2, 3, 4, 5}, \quad A = {2, 4}$$ $$A' = {1, 3, 5}$$

**⚠️ Complement always depends on the universal set.** The same set $A$ can have a different complement if $U$ changes.

**Second Worked Example (change of $U$):** $$U = {1, 2, 3, 4, 5, 6, 7, 8}, \quad A = {2, 4}$$ $$A' = {1, 3, 5, 6, 7, 8}$$ (Notice $A'$ changed because $U$ changed, even though $A$ stayed the same.)

## 🔷 SECTION 11: ALGEBRAIC LAWS OF SETS (COMPLETE LIST)

These laws hold for all sets $A$, $B$, $C$ that are subsets of a universal set $U$. Each law is given in full, along with a small numerical verification.

### 11.1 Idempotent Laws

$$A \cup A = A$$ $$A \cap A = A$$

**Verification:** Let $A = {1, 2, 3}$. $A \cup A = {1,2,3} \cup {1,2,3} = {1,2,3} = A$. ✔️ $A \cap A = {1,2,3} \cap {1,2,3} = {1,2,3} = A$. ✔️

### 11.2 Identity Laws

$$A \cup \emptyset = A$$ $$A \cap U = A$$ (and additionally, for completeness): $$A \cap \emptyset = \emptyset$$ $$A \cup U = U$$

**Verification:** Let $A = {1, 2}$, $U = {1,2,3,4}$. $A \cup \emptyset = {1,2} \cup {} = {1,2} = A$. ✔️ $A \cap U = {1,2} \cap {1,2,3,4} = {1,2} = A$. ✔️ $A \cap \emptyset = {1,2} \cap {} = \emptyset$. ✔️ $A \cup U = {1,2} \cup {1,2,3,4} = {1,2,3,4} = U$. ✔️

### 11.3 Commutative Laws

$$A \cup B = B \cup A$$ $$A \cap B = B \cap A$$

**Verification:** Let $A = {1,2,3}$, $B = {3,4,5}$. $A \cup B = {1,2,3,4,5}$, and $B \cup A = {3,4,5,1,2} = {1,2,3,4,5}$. Equal. ✔️ $A \cap B = {3}$, and $B \cap A = {3}$. Equal. ✔️

**Note:** Union and intersection are commutative, but as shown in Section 10.3, the **difference operation is NOT commutative**: $A - B \neq B - A$ in general.

### 11.4 Associative Laws

$$(A \cup B) \cup C = A \cup (B \cup C)$$ $$(A \cap B) \cap C = A \cap (B \cap C)$$

**Verification:** Let $A = {1,2}$, $B = {2,3}$, $C = {3,4}$.

Left side: $(A \cup B) \cup C = ({1,2} \cup {2,3}) \cup {3,4} = {1,2,3} \cup {3,4} = {1,2,3,4}$

Right side: $A \cup (B \cup C) = {1,2} \cup ({2,3} \cup {3,4}) = {1,2} \cup {2,3,4} = {1,2,3,4}$

Both sides equal ${1,2,3,4}$. ✔️

Similarly for intersection: $(A \cap B) \cap C = ({1,2} \cap {2,3}) \cap {3,4} = {2} \cap {3,4} = \emptyset$, and $A \cap (B \cap C) = {1,2} \cap ({2,3} \cap {3,4}) = {1,2} \cap {3} = \emptyset$. Both sides equal $\emptyset$. ✔️

### 11.5 Distributive Laws

$$A \cup (B \cap C) = (A \cup B) \cap (A \cup C)$$ $$A \cap (B \cup C) = (A \cap B) \cup (A \cap C)$$

**Verification of first law:** Let $A = {1,2}$, $B = {2,3}$, $C = {3,4}$.

Left side: $A \cup (B \cap C) = {1,2} \cup ({2,3} \cap {3,4}) = {1,2} \cup {3} = {1,2,3}$

Right side: $(A \cup B) \cap (A \cup C) = ({1,2}\cup{2,3}) \cap ({1,2}\cup{3,4}) = {1,2,3} \cap {1,2,3,4} = {1,2,3}$

Both sides equal ${1,2,3}$. ✔️

**Verification of second law:** Using the same $A, B, C$:

Left side: $A \cap (B \cup C) = {1,2} \cap ({2,3}\cup{3,4}) = {1,2} \cap {2,3,4} = {2}$

Right side: $(A \cap B) \cup (A \cap C) = ({1,2}\cap{2,3}) \cup ({1,2}\cap{3,4}) = {2} \cup \emptyset = {2}$

Both sides equal ${2}$. ✔️

### 11.6 De Morgan's Laws

$$(A \cup B)' = A' \cap B'$$ $$(A \cap B)' = A' \cup B'$$

**Verification of first law:** Let $U = {1,2,3,4,5}$, $A = {1,2}$, $B = {2,3}$.

Left side: $A \cup B = {1,2,3}$, so $(A \cup B)' = {4,5}$

Right side: $A' = {3,4,5}$, $B' = {1,4,5}$, so $A' \cap B' = {4,5}$

Both sides equal ${4,5}$. ✔️

**Verification of second law:** Using the same sets:

Left side: $A \cap B = {2}$, so $(A \cap B)' = {1,3,4,5}$

Right side: $A' \cup B' = {3,4,5} \cup {1,4,5} = {1,3,4,5}$

Both sides equal ${1,3,4,5}$. ✔️

**How to remember De Morgan's Laws:** "The complement of a union is the intersection of the complements; the complement of an intersection is the union of the complements." (The operation flips: $\cup \leftrightarrow \cap$.)

### 11.7 Complement Laws

$$A \cup A' = U$$ $$A \cap A' = \emptyset$$

**Verification:** $U = {1,2,3,4,5}$, $A = {1,2}$, so $A' = {3,4,5}$. $A \cup A' = {1,2} \cup {3,4,5} = {1,2,3,4,5} = U$. ✔️ $A \cap A' = {1,2} \cap {3,4,5} = \emptyset$. ✔️

### 11.8 Law of Double Complement (Involution Law)

$$(A')' = A$$

**Verification:** $U = {1,2,3,4,5}$, $A = {1,2}$. $A' = {3,4,5}$ $(A')' = U - A' = {1,2,3,4,5} - {3,4,5} = {1,2} = A$. ✔️

### 11.9 Complements of $U$ and $\emptyset$

$$U' = \emptyset$$ $$\emptyset' = U$$

**Verification:** $U = {1,2,3,4,5}$. Every element of $U$ is in $U$, so nothing is left outside — hence $U' = \emptyset$. Conversely, every element of $U$ is outside $\emptyset$ (since $\emptyset$ has nothing), so $\emptyset' = U$.

### 11.10 Master Summary Table of All Laws

| Law Name                       | Statement 1                             | Statement 2                             |
| ------------------------------ | --------------------------------------- | --------------------------------------- |
| Idempotent                     | $A \cup A = A$                          | $A \cap A = A$                          |
| Identity                       | $A \cup \emptyset = A$                  | $A \cap U = A$                          |
| Domination                     | $A \cup U = U$                          | $A \cap \emptyset = \emptyset$          |
| Commutative                    | $A \cup B = B \cup A$                   | $A \cap B = B \cap A$                   |
| Associative                    | $(A\cup B)\cup C = A\cup(B\cup C)$      | $(A\cap B)\cap C = A\cap(B\cap C)$      |
| Distributive                   | $A\cup(B\cap C)=(A\cup B)\cap(A\cup C)$ | $A\cap(B\cup C)=(A\cap B)\cup(A\cap C)$ |
| De Morgan's                    | $(A\cup B)' = A'\cap B'$                | $(A\cap B)' = A'\cup B'$                |
| Complement                     | $A \cup A' = U$                         | $A \cap A' = \emptyset$                 |
| Double Complement              | $(A')' = A$                             | —                                       |
| Complement of $U$, $\emptyset$ | $U' = \emptyset$                        | $\emptyset' = U$                        |

## 🔷 SECTION 12: INTERVAL NOTATION ON THE REAL LINE

Intervals are special subsets of $\mathbb{R}$ used to describe a continuous range of real numbers between two endpoints $a$ and $b$ (where $a < b$).

### 12.1 Open Interval

$$(a, b) = {x \mid x \in \mathbb{R}, \ a < x < b}$$ **Excludes both endpoints** $a$ and $b$.

**Example:** $(2, 5) = {x \mid 2 < x < 5}$ includes numbers like $2.001, 3, 4, 4.999$ but does **not** include $2$ or $5$ themselves.

### 12.2 Closed Interval

$$[a, b] = {x \mid x \in \mathbb{R}, \ a \le x \le b}$$ **Includes both endpoints** $a$ and $b$.

**Example:** $[2, 5] = {x \mid 2 \le x \le 5}$ includes $2$ and $5$ themselves, along with every real number between them.

### 12.3 Left-Closed, Right-Open Interval (Semi-Open)

$$[a, b) = {x \mid x \in \mathbb{R}, \ a \le x < b}$$ **Includes $a$, excludes $b$.**

**Example:** $[2, 5) = {x \mid 2 \le x < 5}$ includes $2$ but not $5$.

### 12.4 Left-Open, Right-Closed Interval (Semi-Closed)

$$(a, b] = {x \mid x \in \mathbb{R}, \ a < x \le b}$$ **Excludes $a$, includes $b$.**

**Example:** $(2, 5] = {x \mid 2 < x \le 5}$ includes $5$ but not $2$.

### 12.5 Summary Table

|Interval Symbol|Set-Builder Notation|Includes $a$?|Includes $b$?|Also called|
|---|---|---|---|---|
|$(a,b)$|${x \mid a < x < b}$|❌ No|❌ No|Open Interval|
|$[a,b]$|${x \mid a \le x \le b}$|✔️ Yes|✔️ Yes|Closed Interval|
|$[a,b)$|${x \mid a \le x < b}$|✔️ Yes|❌ No|Left-Closed / Right-Open (Semi-Open)|
|$(a,b]$|${x \mid a < x \le b}$|❌ No|✔️ Yes|Left-Open / Right-Closed (Semi-Closed)|

### 12.6 Unbounded (Infinite) Intervals

Sometimes an interval extends infinitely in one direction, using the infinity symbol $\infty$ (which is always used with an open bracket/parenthesis, since infinity is not a number that can be "reached" or "included"):

$$(a, \infty) = {x \mid x \in \mathbb{R}, \ x > a}$$ $$[a, \infty) = {x \mid x \in \mathbb{R}, \ x \ge a}$$ $$(-\infty, b) = {x \mid x \in \mathbb{R}, \ x < b}$$ $$(-\infty, b] = {x \mid x \in \mathbb{R}, \ x \le b}$$ $$(-\infty, \infty) = \mathbb{R} \quad \text{(the entire real line)}$$

**Example:** $[3, \infty) = {x \mid x \ge 3}$ represents all real numbers from 3 onward, including 3 itself.

---

## 🔷 SECTION 13: TRICKY EXAM EDGE CASES (HIGH-YIELD FOR EXAMS)

### 13.1 Membership ($\in$) vs. Inclusion ($\subset$) — The Most Commonly Confused Concept

- $\in$ (belongs to) is used **only** between an **element** and a **set**.
- $\subseteq$ / $\subset$ (subset) is used **only** between **two sets**.

**Worked Example with a nested set:** $$A = {1, 2, {3, 4}}$$

Here $A$ has exactly **3 elements**: the number $1$, the number $2$, and the _set_ ${3, 4}$ (treated as a single object/element). So $n(A) = 3$.

Now test each statement carefully:

|Statement|True or False?|Reason|
|---|---|---|
|$1 \in A$|✔️ True|$1$ is a direct element of $A$.|
|${1} \in A$|❌ False|$A$ does not contain the _set_ ${1}$ as an element — it contains the _number_ $1$.|
|${1} \subseteq A$|✔️ True|Since $1 \in A$, the set ${1}$ is a valid subset of $A$.|
|${3, 4} \in A$|✔️ True|The set ${3,4}$ is itself one of the three listed elements of $A$.|
|${3, 4} \subseteq A$|❌ False|For ${3,4} \subseteq A$, BOTH $3 \in A$ and $4 \in A$ would need to be true individually — but $3$ and $4$ are **not** direct elements of $A$ (only the _set_ ${3,4}$ is an element of $A$).|
|$3 \in A$|❌ False|$3$ is not a direct/top-level element of $A$; it is hidden inside the nested set ${3,4}$.|
|${{3,4}} \subseteq A$|✔️ True|Since ${3,4} \in A$, the set containing it, ${{3,4}}$, is a valid subset of $A$.|

**Golden Rule:** Always ask — "Is this a bare element, or is it packaged inside curly braces (i.e., a set)?" Use $\in$ for the former relationship (element-to-set) and $\subseteq$/$\subset$ for the latter (set-to-set).

### 13.2 The Empty Set $\emptyset$ vs. the Singleton Set ${\emptyset}$

This is one of the most-tested conceptual traps in Set Theory.

- $\emptyset$ is a set with **zero elements**. $n(\emptyset) = 0$.
- ${\emptyset}$ is a set with **exactly one element** — and that one element happens to be the empty set itself. $n({\emptyset}) = 1$.

$$\emptyset \neq {\emptyset}$$

**Why they are different:** Think of $\emptyset$ as an _empty box_ — literally nothing inside. Think of ${\emptyset}$ as a _box containing one empty box_ — this outer box is NOT empty, because it contains something (namely, the empty box).

**Testing membership and subset relations:**

|Statement|True or False?|Reason|
|---|---|---|
|$\emptyset \in {\emptyset}$|✔️ True|The single element of ${\emptyset}$ is $\emptyset$ itself.|
|$\emptyset \subseteq {\emptyset}$|✔️ True|The empty set is a subset of every set (Fact 2, Section 6.3), so this always holds too.|
|$\emptyset = {\emptyset}$|❌ False|The left side has $0$ elements; the right side has $1$ element. Not equal.|
|${\emptyset} \in \emptyset$|❌ False|$\emptyset$ has no elements at all, so nothing can belong to it.|
|$n(\emptyset)$|$= 0$|By definition.|
|$n({\emptyset})$|$= 1$|It contains exactly one element (the empty set).|

### 13.3 Equal Sets vs. Equivalent Sets (Re-emphasized)

$$A = B \implies A \text{ and } B \text{ are equivalent (same elements means same count)}$$ $$A \text{ and } B \text{ equivalent} ; \not\Rightarrow ; A = B \text{ (same count does NOT guarantee same elements)}$$

**Example distinguishing the two:** $A = {1,2,3}$ and $B = {7, 8, 9}$ are **equivalent** ($n(A) = n(B) = 3$) but **not equal** (different elements).

### 13.4 Proper Subset Never Equals the Original Set

If $A \subset B$ (proper subset), it is a **direct logical consequence** that $A \neq B$. A set can never be a proper subset of itself: $A \not\subset A$ (compare with $A \subseteq A$, which is always true).

### 13.5 A Common Notational Trap: ${x}$ vs. $x$

Writing $x \in A$ is correct when $x$ is treated as an element. Writing ${x} \subseteq A$ means the same underlying fact but expressed as a subset relation. However, ${x} \in A$ is a completely different (and usually false, unless $A$ specifically contains that nested set) statement. Always keep single elements and singleton sets conceptually distinct, exactly as demonstrated in Section 13.1.

## 🔷 SECTION 14: COUNTING FORMULA BANK (FOR WORD PROBLEMS)

This is the most important section for solving practical word problems (surveys, "how many students like X", etc.) using set theory. All formulas below assume finite sets.

### 14.1 Number of Subsets and Proper Subsets (Recap)

$$\text{Total subsets of a set with } n \text{ elements} = 2^n$$ $$\text{Total proper subsets} = 2^n - 1$$

### 14.2 Two-Set Inclusion-Exclusion Principle

For any two finite sets $A$ and $B$:

$$n(A \cup B) = n(A) + n(B) - n(A \cap B)$$

**Worked Example:** In a class, $n(A) = 20$ students like Maths, $n(B) = 15$ students like Science, and $n(A \cap B) = 8$ students like both. How many like at least one subject?

$$n(A \cup B) = 20 + 15 - 8 = 27$$

**Rearranged forms (useful for finding a missing value):** $$n(A \cap B) = n(A) + n(B) - n(A \cup B)$$ $$n(A) = n(A \cup B) - n(B) + n(A \cap B)$$

**Special case — Disjoint sets** ($A \cap B = \emptyset$, so $n(A \cap B) = 0$): $$n(A \cup B) = n(A) + n(B)$$

### 14.3 Three-Set Inclusion-Exclusion Principle

For any three finite sets $A$, $B$, and $C$:

$$n(A \cup B \cup C) = n(A) + n(B) + n(C) - n(A \cap B) - n(B \cap C) - n(A \cap C) + n(A \cap B \cap C)$$

**Worked Example:** In a survey of 60 people: 25 read newspaper $A$, 26 read $B$, 26 read $C$; 9 read both $A$ and $B$; 11 read both $A$ and $C$; 8 read both $B$ and $C$; 3 read all three. How many read at least one newspaper?

$$n(A \cup B \cup C) = 25 + 26 + 26 - 9 - 11 - 8 + 3 = 52$$

### 14.4 Set Difference / Complement Counting Formulas

**Number of elements in a set that are NOT in another set (subtraction rule), when $B \subseteq U$:** $$n(A - B) = n(A) - n(A \cap B)$$

**Worked Example:** $n(A) = 20$, $n(A \cap B) = 8$. $$n(A - B) = 20 - 8 = 12$$

**Complement rule (requires knowing $n(U)$):** $$n(A') = n(U) - n(A)$$

**Worked Example:** $n(U) = 50$, $n(A) = 30$. $$n(A') = 50 - 30 = 20$$

**Complement of a union (De Morgan applied to counting), i.e. "neither A nor B":** $$n((A \cup B)') = n(U) - n(A \cup B)$$

**Worked Example:** $n(U) = 50$, $n(A \cup B) = 27$. $$n((A \cup B)') = 50 - 27 = 23 \quad \text{(people who like neither subject)}$$

### 14.5 "Exactly One Set" Formulas (Very Frequently Tested)

**Exactly in $A$ only (not in $B$):** $$n(A \text{ only}) = n(A) - n(A \cap B)$$

**Exactly in $B$ only (not in $A$):** $$n(B \text{ only}) = n(B) - n(A \cap B)$$

**Number of people/items in EXACTLY ONE of the two sets (in $A$ only, OR in $B$ only, but not both):** $$n(\text{exactly one of } A, B) = n(A) + n(B) - 2 \cdot n(A \cap B)$$

**Worked Example:** $n(A) = 20$, $n(B) = 15$, $n(A \cap B) = 8$. $$n(A \text{ only}) = 20 - 8 = 12$$ $$n(B \text{ only}) = 15 - 8 = 7$$ $$n(\text{exactly one}) = 12 + 7 = 19 \quad \text{(equivalently, } 20+15-2(8)=19\text{)}$$

### 14.6 "Exactly Two Sets" Formula (For Three-Set Problems)

When dealing with three sets $A$, $B$, $C$, the number of elements that belong to **exactly two** of the three sets (not all three, and not just one) is:

$$n(\text{exactly two of } A,B,C) = n(A\cap B) + n(B \cap C) + n(A \cap C) - 3\cdot n(A \cap B \cap C)$$

**Worked Example (using Section 14.3 data):** $n(A \cap B) = 9$, $n(B \cap C) = 8$, $n(A \cap C) = 11$, $n(A \cap B \cap C) = 3$. $$n(\text{exactly two}) = 9 + 8 + 11 - 3(3) = 28 - 9 = 19$$

**Related — Number in exactly ONE of three sets:** $$n(\text{exactly one of } A,B,C) = n(A)+n(B)+n(C) - 2\big[n(A\cap B)+n(B\cap C)+n(A\cap C)\big] + 3\cdot n(A\cap B\cap C)$$

**Related — Number in ALL three sets** is simply $n(A \cap B \cap C)$ (already given/found directly).

### 14.7 Quick-Reference Formula Table

|Quantity to Find|Formula|
|---|---|
|Subsets of an $n$-element set|$2^n$|
|Proper subsets|$2^n - 1$|
|Power set cardinality|$n(P(A)) = 2^{n(A)}$|
|Union of two sets|$n(A\cup B) = n(A)+n(B)-n(A\cap B)$|
|Union of two disjoint sets|$n(A\cup B) = n(A)+n(B)$|
|Union of three sets|$n(A\cup B\cup C)=n(A)+n(B)+n(C)-n(A\cap B)-n(B\cap C)-n(A\cap C)+n(A\cap B\cap C)$|
|Set difference|$n(A-B) = n(A)-n(A\cap B)$|
|Complement|$n(A') = n(U)-n(A)$|
|Neither A nor B|$n((A\cup B)') = n(U)-n(A\cup B)$|
|A only (not B)|$n(A)-n(A\cap B)$|
|Exactly one of A, B|$n(A)+n(B)-2,n(A\cap B)$|
|Exactly two of A, B, C|$n(A\cap B)+n(B\cap C)+n(A\cap C)-3,n(A\cap B\cap C)$|
|Exactly one of A, B, C|$n(A)+n(B)+n(C)-2[n(A\cap B)+n(B\cap C)+n(A\cap C)]+3,n(A\cap B\cap C)$|

---

## 🔷 SECTION 15: SYMBOLS QUICK-REFERENCE SHEET

|Symbol|Meaning|
|---|---|
|$\in$|belongs to / is an element of|
|$\notin$|does not belong to|
|$\subseteq$|subset of (or equal)|
|$\subset$|proper subset of|
|$\not\subseteq$|not a subset of|
|$\supseteq$|superset of|
|$\cup$|union|
|$\cap$|intersection|
|$-$ or $\setminus$|difference|
|$'$ (e.g. $A'$)|complement|
|$\emptyset$ or ${}$|empty/null set|
|$U$|universal set|
|$P(A)$|power set of $A$|
|$n(A)$|cardinal number (count of elements) of $A$|
|$\mid$ or $:$|"such that" (used in set-builder notation)|
|$\mathbb{N}$|natural numbers|
|$W$|whole numbers|
|$\mathbb{Z}$|integers|
|$\mathbb{Z}^+$|positive integers|
|$\mathbb{Q}$|rational numbers|
|$\mathbb{R}$|real numbers|
|$\mathbb{R}-\mathbb{Q}$|irrational numbers|

---

## 🔷 SECTION 16: COMMON MISTAKES CHECKLIST (FINAL REVISION)

- ❌ Do NOT think order of elements matters in a set — ${1,2,3} = {3,1,2}$.
- ❌ Do NOT count duplicate elements twice — ${1,1,2} = {1,2}$, so $n = 2$, not $3$.
- ❌ Do NOT confuse **equal sets** (identical elements) with **equivalent sets** (same count only).
- ❌ Do NOT say a set is a "proper subset" of itself — $A \subset A$ is always **false**; only $A \subseteq A$ is true.
- ❌ Do NOT assume $A - B = B - A$ — difference is **not commutative**.
- ❌ Do NOT compute a complement without reference to $U$ — complement is **always** relative to the universal set.
- ❌ Do NOT confuse $\emptyset$ (0 elements) with ${\emptyset}$ (1 element, namely the empty set itself).
- ❌ Do NOT write $3 \in A$ when $A = {1,2,{3,4}}$ — the number $3$ is buried inside a nested set, not a direct element of $A$.
- ❌ Do NOT forget that $\emptyset \subseteq A$ for **every** set $A$, including $A = \emptyset$ itself.
- ❌ Do NOT mix up open vs. closed interval brackets — round brackets $( \ )$ exclude endpoints, square brackets $[ \ ]$ include endpoints.
- ❌ Do NOT forget the $-2n(A\cap B)$ term when calculating "exactly one" in two-set problems — a very common silent error.
- ❌ Do NOT forget the $-3n(A\cap B\cap C)$ correction term when calculating "exactly two" in three-set problems.

---

## 📚 References

**Official NIOS Lesson 1:** https://nios.ac.in/media/documents/SrSec311NEW/311_Maths_Eng/311_Maths_Eng_Lesson1.pdf

**Official NIOS Worksheet 1:** https://nios.ac.in/media/documents/WorkSheets_Senior_Secondary/Maths_311/maths_311_english_w1.pdf

---

_End of Chapter 1 — Sets: Master Revision Guide_