We use process substitution because when we use a pipeline (`|`) with a `while` loop, Bash creates a **subshell**.

Example:

```bash
count=0

grep a words.txt | while read -r word; do
  ((count++))
done

echo "$count"
```

Output:

```text
0
```

Why?

Because the `while` loop runs inside a **subshell**. Everything changed inside that loop dies when the subshell exits.

So the parent shell still has:

```bash
count=0
```

---

# Process Substitution `<(...)`

The syntax:

```bash
<(COMMAND)
```

This runs a command and makes its output look like a temporary file.

Think like this:

```text
Command
   │
   ▼
Temporary File
   │
   ▼
Program
```

Example:

```bash
count=0

while read -r word; do
  echo "$word"
  ((count++))
done < <(grep a words.txt)

echo "Found $count"
```

Output:

```text
apple
banana
orange

Found 3
```

Now the loop is **NOT** running in a subshell.

The variable stays alive.

---

# Why there are two `<`

This confuses almost everyone.

```bash
done < <(...)
```

There are actually **two different things**.

First one:

```bash
<
```

means

> Read input from...

Second one:

```bash
<(command)
```

means

> Run this command and pretend its output is a file.

Together:

```bash
done < <(grep a words.txt)
```

means

> Read the input from the output of `grep`.

---

# Here Strings `<<<`

This is different.

Syntax:

```bash
COMMAND <<< "STRING"
```

or

```bash
COMMAND <<<"$variable"
```

This feeds a string directly into a command.

Think like this:

```text
Variable/String
      │
      ▼
Command
```

Example:

```bash
text="Hello World"

grep Hello <<<"$text"
```

Output

```text
Hello World
```

Another example:

```bash
name="Alex"

while read -r word; do
  echo "$word"
done <<<"$name"
```

Output

```text
Alex
```

It works because Bash secretly adds a newline and gives it to `read` just like if you typed it on your keyboard.

---

# `read` reads lines not words

Example

```bash
while read -r word; do
  echo "$word"
done <<<"apple banana"
```

Output

```text
apple banana
```

NOT

```text
apple
banana
```

Because there is only **one line**.

`read` stops at a newline (`\n`) not at spaces.

---

# Difference

Pipeline

```bash
grep a words.txt | while read -r word; do
done
```

Runs loop in a subshell.

Variables changed inside are lost.

---

Process Substitution

```bash
while read -r word; do
done < <(grep a words.txt)
```

No subshell.

Variables stay alive.

---

Here String

```bash
grep hello <<<"$text"
```

Feeds a string/variable directly into a command.

---

# Easy way to remember

```text
|        -> Pipe output to another command.

<<<      -> Give a string/variable to a command.

<(...)   -> Make command output look like a file.
```

---

# Examples

```bash
grep hello <<<"$text"
```

```bash
while read -r line; do
  echo "$line"
done <<<"$text"
```

```bash
while read -r line; do
  echo "$line"
done < <(grep a words.txt)
```

```bash
diff <(ls dir1) <(ls dir2)
```

---

# My Notes

- `<<<` = Here String
- `<(...)` = Process Substitution
- `|` with `while` creates a subshell.
- `< <(...)` keeps the loop in the current shell.
- `read` reads **lines**, not words.
- Process substitution is mostly used when another program expects a **file**, but you want to give it the output of a command instead.

---

## Some Links

[[Loops]]
[[If Else statements]]