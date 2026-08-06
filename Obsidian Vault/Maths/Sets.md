# 📘 Chapter 1 - Sets

---

# What is a Set?

A **set** is a **well-defined collection of objects**.

- Objects are called **elements** or **members**.
- Elements are enclosed in **curly braces `{}`**.

### Examples

✔️ `{1,2,3,4}`

✔️ `{a,e,i,o,u}`

❌ Collection of beautiful flowers (not well-defined)

---

# Representation of Sets

## 1. Roster (Tabular) Form

List all elements inside braces.

### Example

```
A = {2,4,6,8}
```

---

## 2. Set Builder Form

Describe the property of elements.

### Example

```
A = {x | x is an even natural number less than 10}
```

Read as:

> "A is the set of all x such that x is an even natural number less than 10."

---

# Common Sets

| Symbol | Meaning |
|---------|---------|
| N | Natural Numbers |
| W | Whole Numbers |
| Z | Integers |
| Q | Rational Numbers |
| R | Real Numbers |

---

# Types of Sets

## Empty (Null) Set

Contains no elements.

```
∅
```

Example:

```
{x | x < 0 and x ∈ N}
```

---

## Singleton Set

Contains exactly one element.

Example:

```
{5}
```

---

## Finite Set

Number of elements is limited.

Example:

```
{1,2,3,4}
```

---

## Infinite Set

Infinitely many elements.

Example:

```
N = {1,2,3,...}
```

---

## Equal Sets

Two sets are equal if every element is the same.

Example

```
A={1,2,3}

B={3,2,1}

A = B
```

Order doesn't matter.

---

## Equivalent Sets

Have the same number of elements.

Example

```
A={1,2,3}

B={a,b,c}
```

```
n(A)=n(B)=3
```

---

## Disjoint Sets

No common elements.

```
A∩B=∅
```

Example

```
A={1,2}

B={3,4}
```

---

# Cardinal Number

Number of elements in a set.

Example

```
A={1,2,3,4}

n(A)=4
```

---

# Subset

A is a subset of B if every element of A belongs to B.

```
A⊆B
```

Example

```
A={1,2}

B={1,2,3,4}
```

---

## Proper Subset

```
A⊂B
```

Every element belongs to B **and**

```
A ≠ B
```

---

## Important Facts

Every set is a subset of itself.

```
A⊆A
```

The empty set is a subset of every set.

```
∅⊆A
```

If

```
A⊂B
```

then

```
A≠B
```

---

# Number of Subsets

If a set contains

```
n
```

elements,

then

```
Number of subsets = 2ⁿ
```

Examples

```
n=2

Subsets=4
```

```
n=3

Subsets=8
```

```
n=5

Subsets=32
```

---

# Power Set

The set of all subsets.

Notation

```
P(A)
```

Example

```
A={a,b}
```

```
P(A)=
{
∅,
{a},
{b},
{a,b}
}
```

```
n(P(A))=2ⁿ
```

---

# Universal Set

Contains all elements under discussion.

Notation

```
U
```

---

# Venn Diagram

Uses closed curves (usually circles) to represent sets.

Useful for

- Union
- Intersection
- Difference
- Complement

---

# Union

All elements belonging to A or B or both.

Notation

```
A∪B
```

Example

```
A={1,2,3}

B={3,4,5}

A∪B={1,2,3,4,5}
```

---

# Intersection

Common elements only.

Notation

```
A∩B
```

Example

```
A={1,2,3}

B={2,3,4}

A∩B={2,3}
```

---

# Difference

Elements in A but not in B.

Notation

```
A−B
```

Example

```
A={1,2,3}

B={2,3,4}

A−B={1}
```

---

# Complement

Elements in U but not in A.

Notation

```
A'
```

Example

```
U={1,2,3,4,5}

A={2,4}

A'={1,3,5}
```

---

# Interval Notation

## Closed Interval

```
[a,b]
```

Includes both endpoints.

---

## Open Interval

```
(a,b)
```

Excludes both endpoints.

---

## Left Closed Right Open

```
[a,b)
```

---

## Left Open Right Closed

```
(a,b]
```

---

# Most Important Formulae

```
n(P(A))=2ⁿ
```

```
A⊆A
```

```
∅⊆A
```

```
A∩B=∅
```

(Disjoint Sets)

---

# Symbols to Remember

```
∈    belongs to

∉    does not belong to

⊆    subset

⊂    proper subset

⊄    not a subset

∪    union

∩    intersection

−    difference

∅    empty set

U    universal set

P(A) power set
```

---

# Common Mistakes

- Order of elements does **not** matter.
- Duplicate elements are ignored.
- Equal sets ≠ Equivalent sets.
- Proper subset is **not** equal to the original set.
- Difference (`A-B`) is **not** commutative.
- Complement is always taken with respect to the **Universal Set**.

---

# References

## Official NIOS Lesson 1

https://nios.ac.in/media/documents/SrSec311NEW/311_Maths_Eng/311_Maths_Eng_Lesson1.pdf

## Official NIOS Worksheet 1

https://nios.ac.in/media/documents/WorkSheets_Senior_Secondary/Maths_311/maths_311_english_w1.pdf