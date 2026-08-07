# 📘 Master Study Notes: Set Theory (NIOS Senior Secondary Code 311)

---

## 1. Complete Law Bank: Algebra of Sets
In long-answer questions (4 or 6 marks), you will need these named properties to simplify expressions or solve theoretical proofs.

### Idempotent Laws
A set operated with itself remains unchanged.
* **Union**: $A \cup A = A$
* **Intersection**: $A \cap A = A$

### Identity Laws
Operating a set with the Universal Set ($U$) or Empty Set ($\phi$).
* **Union Identity**: $A \cup \phi = A$
* **Intersection Identity**: $A \cap U = A$
* **Universal Domination**: $A \cup U = U$
* **Empty Domination**: $A \cap \phi = \phi$

### Commutative Laws
The order of operations does not change the result.
* **Union**: $A \cup B = B \cup A$
* **Intersection**: $A \cap B = B \cap A$

### Associative Laws
The grouping of parentheses does not change the result when the operations are the same.
* **Union**: $(A \cup B) \cup C = A \cup (B \cup C)$
* **Intersection**: $(A \cap B) \cap C = A \cap (B \cap C)$

### Distributive Laws
Mixing union and intersection operations allows you to "multiply" them across brackets.
* **Intersection over Union**: $A \cap (B \cup C) = (A \cap B) \cup (A \cap C)$
* **Union over Intersection**: $A \cup (B \cap C) = (A \cup B) \cap (A \cup C)$

### De Morgan's Laws
The complement switches unions to intersections and vice versa when distributing.
* **Law 1**: $(A \cup B)' = A' \cap B'$
* **Law 2**: $(A \cap B)' = A' \cup B'$

### Complement Laws
* $A \cup A' = U$
* $A \cap A' = \phi$
* $(A')' = A$ (Law of Double Complement)
* $U' = \phi$
* $\phi' = U$

---

## 2. Real Number Subsets & Interval Notations
For continuous line values on the real number line ($\mathbb{R}$), we cannot write standard elements. We must use intervals.

* **Open Interval $(a, b)$**: $\{x : x \in \mathbb{R} \text{ and } a < x < b\}$. The endpoints are **excluded**.
* **Closed Interval $[a, b]$**: $\{x : x \in \mathbb{R} \text{ and } a \le x \le b\}$. The endpoints are **included**.
* **Semi-Open / Semi-Closed**:
  * $[a, b) = \{x : x \in \mathbb{R} \text{ and } a \le x < b\}$ ($a$ is included, $b$ is excluded).
  * $(a, b] = \{x : x \in \mathbb{R} \text{ and } a < x \le b\}$ ($a$ is excluded, $b$ is included).

---

## 3. The Core Concept Checklist

### Roster vs. Set-Builder Form
* **Roster Form**: Listing actual objects inside brackets. Repetition does not matter, order does not matter.
  * *Example*: Distinct letters of "SCHOOL" $\implies \{S, C, H, O, L\}$.
* **Set-Builder Form**: Describing elements via a shared formula property.
  * *Example*: $\{2, 4, 8, 16, 32\} \implies \{x : x = 2^n, n \in \mathbb{N} \text{ and } 1 \le n \le 5\}$.

### Belongs to ($\in$) vs. Subset ($\subset$)
* **$\in$ (Membership)**: Stating that an exact individual component as it appears inside the set is a member.
* **$\subset$ or $\subseteq$ (Inclusion)**: Stating that a group enclosed in a fresh layer of outer set curly braces is contained inside another set.
  * *Trick Example*: Let $A = \{1, 2, \{3, 4\}\}$. Here, $\{3, 4\} \in A$ is **True**, but $\{3, 4\} \subset A$ is **False**. To make it a subset, it needs to be written as $\{\{3, 4\}\} \subseteq A$.

### Null Set ($\phi$) vs. Singleton Null Set ($\{\phi\}$)
* $\phi$ or $\{\}$ represents a completely empty set with **zero** elements.
* $\{\phi\}$ is a **singleton set** because it contains exactly one element inside its brackets (which happens to be the null symbol).

### Subset Calculations
If a finite set contains $n$ total elements:
1. **Total number of subsets** $= 2^n$
2. **Total number of proper subsets** $= 2^n - 1$
3. **Power Set $P(A)$**: The massive set that contains every single possible sub-combination as its internal elements.

---

## 4. Complete Formula Bank for Word Problems
These formulas are essential for 2-set and 3-set application problems.

### Two-Set Formula
$$n(A \cup B) = n(A) + n(B) - n(A \cap B)$$

### Three-Set Formula
$$n(A \cup B \cup C) = n(A) + n(B) + n(C) - n(A \cap B) - n(B \cap C) - n(A \cap C) + n(A \cap B \cap C)$$

### "Exactly" & "Only" Formulas
* Number of elements in **only set A**: $n(A \text{ only}) = n(A) - n(A \cap B)$
* Number of elements in **exactly one set** (out of two): $n(A \text{ only}) + n(B \text{ only})$
* Number of elements in **exactly two sets** (out of three): 
  $$\text{Total} = [n(A \cap B) + n(B \cap C) + n(A \cap C)] - 3 \cdot n(A \cap B \cap C)$$
* Number of elements in **exactly one set** (out of three): 
  $$\text{Total} = n(A) + n(B) + n(C) - 2 \cdot [n(A \cap B) + n(B \cap C) + n(A \cap C)] + 3 \cdot n(A \cap B \cap C)$$

---

## 5. Direct Official NIOS Links for Your Exam
* **Official NIOS Lesson 1 PDF Booklet**: [Download Lesson 1: Sets PDF Direct Link](https://nios.ac.in)
* **Official Board Exam Blueprints**: [NIOS 12th Maths Topic Breakdowns](https://nios.ac.in)

---

6. Some Important question 

	![[Pasted image 20260807181341.png]]