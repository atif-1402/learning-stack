# Bash Arithmetic `$((...))` Divided Index

## 1. Basic Arithmetic Operators
*For standard calculations.*

| Operator | Action             | Example       | Result          |
| :------- | :----------------- | :------------ | :-------------- |
| `+`      | Addition           | `$((10 + 5))` | `15`            |
| `-`      | Subtraction        | `$((10 - 5))` | `5`             |
| `*`      | Multiplication     | `$((10 * 5))` | `50`            |
| `/`      | Integer Division   | `$((7 / 2))`  | `3` (Truncated) |
| `%`      | Modulo (Remainder) | `$((7 % 2))`  | `1`             |
| `**`     | Exponentiation     | `$((2 ** 3))` | `8`             |

---

## 2. Increment & Decrement Operators
*For changing variable values by 1.*

| Operator | Type           | Behavior                             | Example (if i=5)                     |
| :------- | :------------- | :----------------------------------- | :----------------------------------- |
| `id++`   | Post-increment | Returns old value first, then adds 1 | `$((i++))` returns `5` (i becomes 6) |
| `++id`   | Pre-increment  | Adds 1 first, then returns new value | `$((++i))` returns `6` (i becomes 6) |
| `id--`   | Post-decrement | Returns old value first, then subs 1 | `$((i--))` returns `5` (i becomes 4) |
| `--id`   | Pre-decrement  | Subs 1 first, then returns new value | `$((--i))` returns `4` (i becomes 4) |

---

## 3. Comparison Operators
*Outputs `1` for True and `0` for False.*

| Operator | Meaning | Example | Result |
| :--- | :--- | :--- | :--- |
| `==` | Equal to | `$((5 == 5))` | `1` |
| `!=` | Not equal to | `$((5 != 5))` | `0` |
| `<` | Less than | `$((3 < 5))` | `1` |
| `>` | Greater than | `$((3 > 5))` | `0` |
| `<=` | Less than or equal to | `$((5 <= 5))` | `1` |
| `>=` | Greater than or equal to | `$((5 >= 6))` | `0` |

---

## 4. Logical Operators
*Used to combine multiple conditions.*

| Operator | Meaning                  | Example         | Result |
| :------- | :----------------------- | :-------------- | :----- |
| `&&`     | Logical AND (Both true)  | `$((1 && 0))`   | `0`    |
| `\|\|`   | Logical OR (Either true) | `$((1 \|\| 0))` | `1`    |
| `!`      | Logical NOT (Invert)     | `$((! 1))`      | `0`    |

---

## 5. Bitwise Operators
*Manipulates individual binary bits of numbers.*

| Operator | Meaning                   | Example       | Result |     |
| :------- | :------------------------ | :------------ | :----- | --- |
| `&`      | Bitwise AND               | `$((5 & 3))`  | `1`    |     |
| `\|`     | Bitwise OR                | `$((5 \| 3))` | `7`    |     |
| `^`      | Bitwise XOR               | `$((5 ^ 3))`  | `6`    |     |
| `~`      | Bitwise NOT (Invert bits) | `$((~ 0))`    | `-1`   |     |
| `<<`     | Bitwise Left Shift        | `$((1 << 2))` | `4`    |     |
| `>>`     | Bitwise Right Shift       | `$((4 >> 2))` | `1`    |     |
```
<< 1  = multiply by 2

<< 2  = multiply by 4

<< 3  = multiply by 8

~ = -( x + 1 )
```

---

## 6. Shorthand Assignment Operators
*Modifies the variable in place without repeating its name.*

| Shortcut | Equivalent To | Example (if x=10) | New x Value |
| :--- | :--- | :--- | :--- |
| `x += 5` | `x = x + 5` | `$((x += 5))` | `15` |
| `x -= 5` | `x = x - 5` | `$((x -= 5))` | `5` |
| `x *= 2` | `x = x * 2` | `$((x *= 2))` | `20` |
| `x /= 2` | `x = x / 2` | `$((x /= 2))` | `5` |
| `x %= 3` | `x = x % 3` | `$((x %= 3))` | `1` |
| `x <<= 2`| `x = x << 2`| `$((x <<= 2))`| `40` |
| `x >>= 1`| `x = x >> 1`| `$((x >>= 1))`| `5` |
| `x &= 2` | `x = x & 2` | `$((x &= 2))` | `2` |
| `x ^= 2` | `x = x ^ 2` | `$((x ^= 2))` | `8` |
| `x \|= 2`| `x = x \| 2`| `$((x \|= 2))`| `10` |

---

## Code Example: Using Sections Together

```bash
#!/usr/bin/env bash

# Setup
score=10
bonus=5

# 1. Comparison & Logic combined
# Checks if score is 10 AND bonus is greater than 3
if [ \$(( (score == 10) && (bonus > 3) )) -eq 1 ]; then
    echo "Conditions met!"
fi

# 2. In-place modification shortcut
echo "Current score: \$score"
(( score += bonus )) # Adds bonus directly to score
echo "Updated score: \$score"
```

---
##  Quick Links
* [Bash Math Tutorial](https://ryanstutorials.net) - Simplest step-by-step guide with basic examples.
* [Official Bash Math Manual](https://gnu.org) - Short, official text reference.
* [GeeksforGeeks Bash Math](https://geeksforgeeks.org) - Clear examples for each operator.
---
##  Notes links

- [[If Else statements]]
- [[Case Statements]]
- [[Loops]]
