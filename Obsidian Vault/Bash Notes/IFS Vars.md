# IFS (Internal Field Separator)

IFS stands for **Internal Field Separator**.

It tells Bash:

> "Where should I split text?"

By default Bash uses:

- Space
- Tab
- Newline

That means if Bash sees

```text
fname lname country
```

it automatically sees it as

```text
fname
lname
country
```

because spaces are separators.

---

# Changing IFS

We can change it.

```bash
IFS=,
```

Now Bash treats commas as separators instead.

Input

```text
fname,lname,country
```

becomes

```text
fname
lname
country
```

---

# IFS with Arrays

Suppose we have

```bash
foods=(
    "biryani"
    "korma"
    "Chicken Tikka"
    "Butter Chicken"
)
```

If we print

```bash
echo "${foods[@]}"
```

Output

```text
biryani korma Chicken Tikka Butter Chicken
```

Changing IFS

```bash
IFS=,
```

does **not** change anything here because `[@]` already treats every element separately.

---

# IFS with *

This is where IFS becomes useful.

```bash
IFS=,

echo "${foods[*]}"
```

Output

```text
biryani,korma,Chicken Tikka,Butter Chicken
```

Notice every array element is joined using a comma.

---

# @ vs *

Remember this:

```bash
"${array[@]}"
```

means

> Every element separately.

```bash
"${array[*]}"
```

means

> Join every element into one string.

The separator used is the **first character** of IFS.

Example

```bash
IFS="|"

echo "${foods[*]}"
```

Output

```text
biryani|korma|Chicken Tikka|Butter Chicken
```

If

```bash
IFS="abc"
```

only

```text
a
```

is used.

Output

```text
biryaniakormaChicken TikkaaButter Chicken
```

---

# IFS with read

Normally

```bash
read first second
```

Input

```text
fname lname
```

Output

```text
first  -> fname
second -> lname
```

because the default IFS contains spaces.

---

# Using Another Separator

```bash
IFS=,

read first second
```

Input

```text
fname,lname
```

Output

```text
first  -> fname
second -> lname
```

Now Bash splits on commas instead of spaces.

---

# If the Separator Doesn't Exist

```bash
IFS=,

read first second
```

Input

```text
fname lname
```

Output

```text
first  -> fname lname
second ->
```

Nothing is split because no comma exists.

---

# Reading Three Variables

```bash
IFS=,

read first second third
```

Input

```text
fname,lname,country
```

Output

```text
first  -> fname
second -> lname
third  -> country
```

---

# More Values Than Variables

```bash
IFS=,

read first second
```

Input

```text
hello,world,test
```

Output

```text
first  -> hello
second -> world,test
```

The **last variable gets everything that is left**.

---

# Fewer Values Than Variables

```bash
IFS=,

read first second third
```

Input

```text
hello,world
```

Output

```text
first  -> hello
second -> world
third  ->
```

The remaining variable becomes empty.

---

# Mental Model

Imagine Bash reading one character at a time.

Input

```text
fname,lname
```

IFS

```bash
IFS=,
```

Bash reads

```text
A
t
i
f
,
```

It found a separator.

Store

```text
fname
```

Continue reading

```text
K
h
a
n
```

End of line.

Store

```text
lname
```

That's exactly how Bash thinks.

---

# Cheat Sheet

```bash
IFS=,

echo "${array[*]}"      # joins array using comma

echo "${array[@]}"      # prints each element normally

read first second       # split input

read -p "Name: " name   # prompt and read

IFS="|"                 # change separator

IFS="abc"               # first character (a) is used for joining with *
```

---

# Some links

[[Arrays]]