
# 1. What are Arrays?

A normal variable stores **one value**.

``` bash
food="biryani"
```

An array stores **multiple values** inside one variable.

``` bash
food=(biryani korma chicken-tikka tandoori-chicken)
```

Think of an array like a list.

Internally Bash stores it like this:

``` text
Index   Value

0       biryani
1       korma
2       chicken-tikka
3       tandoori-chicken
```

The numbers (`0`, `1`, `2`...) are called **indices**.

The first element always starts at **0**.

------------------------------------------------------------------------

# 2. Accessing Elements

If you print an array without specifying an index:

``` bash
food=(biryani korma chicken-tikka)

echo "$food"
echo "${food}"
```

Output:

``` text
biryani
biryani
```

Bash expands to the first element.

To print another element, specify its index.

``` bash
echo "${food[0]}"
echo "${food[1]}"
echo "${food[2]}"
```

Output:

``` text
biryani
korma
chicken-tikka
```

If an index doesn't exist:

``` bash
echo "${food[10]}"
```

Output:

``` text
```

Nothing is printed because there is no value stored there.

------------------------------------------------------------------------

# 3. Using a Variable as an Index

The index does not have to be written directly.

``` bash
food=(
    biryani
    korma
    chicken-tikka
    tandoori-chicken
)

idx=2

echo "${food[$idx]}"
```

Output

``` text
chicken-tikka
```

What Bash does:

1.  Reads `$idx`
2.  `$idx` is `2`
3.  Changes `${food[$idx]}` into `${food[2]}`
4.  Prints the value at index `2`

------------------------------------------------------------------------

# 4. Looping Through Every Value

``` bash
food=(
    chicken
    lamb
    wagyu-beef
    biryani
)

for item in "${food[@]}"; do
    echo "$item"
done
```

Output

``` text
chicken
lamb
wagyu-beef
biryani
```

`[@]` means:

> Give me every value stored in the array.

Always prefer

``` bash
"${food[@]}"
```

instead of

``` bash
${food[@]}
```

because quoting keeps elements with spaces together.

------------------------------------------------------------------------

# 5. Difference Between @ and \*

Inside quotes:

``` bash
"${food[@]}"
```

passes every element separately.

``` bash
"${food[*]}"
```

joins every element into one string.

Example:

``` bash
food=("fried chicken" "biryani")

for item in "${food[@]}"; do
    echo "$item"
done
```

Output

``` text
fried chicken
biryani
```

Using `*`:

``` bash
for item in "${food[*]}"; do
    echo "$item"
done
```

Output

``` text
fried chicken biryani
```

Only one loop iteration happens because everything became one string.

------------------------------------------------------------------------

# 6. Looping Through Indices

Instead of getting every value, sometimes we need every index.

``` bash
food=(chicken lamb wagyu-beef)

for idx in "${!food[@]}"; do
    echo "$idx"
done
```

Output

``` text
0
1
2
```

`!` means:

> Give me all indices.

------------------------------------------------------------------------

# 7. Using the Index to Get the Value

``` bash
food=(chicken lamb wagyu-beef)

for idx in "${!food[@]}"; do
    echo "$idx -> ${food[$idx]}"
done
```

Output

``` text
0 -> chicken
1 -> lamb
2 -> wagyu-beef
```

This is useful because the loop gives us the index and we use that index
to access the correct value.

------------------------------------------------------------------------

# 8. Counting Elements

``` bash
food=(chicken lamb wagyu-beef)

echo "${#food[@]}"
```

Output

``` text
3
```

`#` means:

> Count how many elements are inside the array.

------------------------------------------------------------------------

# 9. Appending Elements

Suppose the array is:

``` bash
food=(chicken lamb)
```

Internally:

``` text
0 -> chicken
1 -> lamb
```

Now:

``` bash
food+=("biryani")
```

Bash automatically puts it at the next available index.

``` text
0 -> chicken
1 -> lamb
2 -> biryani
```

You don't have to specify the next index yourself.

------------------------------------------------------------------------

# 10. Updating an Existing Value

Suppose:

``` bash
food=(chicken lamb)
```

Replace one element:

``` bash
food[1]="biryani"
```

Now:

``` text
0 -> chicken
1 -> biryani
```

`=` replaces the old value.

`+=` appends a new value.

------------------------------------------------------------------------

# 11. Sparse Arrays

Normally:

``` bash
food=(biryani chicken)
```

looks like

``` text
0 -> biryani
1 -> chicken
```

Bash also allows custom indices.

``` bash
food=(
    [2]="biryani"
    [5]="chicken"
)
```

Now:

``` text
2 -> biryani
5 -> chicken
```

Indices `0`, `1`, `3` and `4` do not exist.

Looping over indices:

``` bash
for idx in "${!food[@]}"; do
    echo "$idx"
done
```

prints

``` text
2
5
```

Bash skips indices that don't exist.

------------------------------------------------------------------------

# 12. Negative Indices

Bash supports negative indices.

``` bash
food=("A" "B" "C" "D")
```

Internally:

``` text
-1 -> D
-2 -> C
-3 -> B
-4 -> A
```

Example:

``` bash
echo "${food[-1]}"
```

Output

``` text
D
```

------------------------------------------------------------------------

# 13. Indexed Array Cheat Sheet

``` bash
${food[0]}      # value at index 0

${food[@]}      # all values

${food[*]}      # all values as one string

${!food[@]}     # all indices

${#food[@]}     # number of elements

food+=("item")  # append

food[2]="item"  # replace
```

------------------------------------------------------------------------

# 14. Associative Arrays

Indexed arrays use numbers.

``` text
0 -> chicken
1 -> lamb
```

Associative arrays use words called **keys**.

``` text
name -> Atif
age -> 17
country -> India
```

Create one:

``` bash
declare -A user

user[name]="Atif"
user[age]="17"
user[country]="India"
```

------------------------------------------------------------------------

# 15. Accessing Values

``` bash
echo "${user[name]}"
```

Output

``` text
Atif
```

------------------------------------------------------------------------

# 16. Variable Keys

``` bash
search="country"

echo "${user[$search]}"
```

Output

``` text
India
```

Exactly like indexed arrays, except the index is a word instead of a
number.

------------------------------------------------------------------------

# 17. Looping Through Keys

``` bash
for key in "${!user[@]}"; do
    echo "$key : ${user[$key]}"
done
```

Possible output

``` text
country : India
age : 17
name : Atif
```

The order is not guaranteed.

------------------------------------------------------------------------

# 18. Looping Through Values

``` bash
for value in "${user[@]}"; do
    echo "$value"
done
```

Possible output

``` text
India
17
Atif
```

------------------------------------------------------------------------

# 19. Updating Values

``` bash
user[age]="18"
```

The old value is replaced.

------------------------------------------------------------------------

# 20. Indexed vs Associative Arrays

  -----------------------------------------------------------------------
  Indexed Arrays                  Associative Arrays
  ------------------------------- ---------------------------------------
  Use numbers                     Use words

  `${food[0]}`                    `${user[name]}`

  `${food[@]}` -\> values         `${user[@]}` -\> values

  `${!food[@]}` -\> indices       `${!user[@]}` -\> keys

  `${#food[@]}` -\> number of     `${#user[@]}` -\> number of elements
  elements                        
  -----------------------------------------------------------------------

------------------------------------------------------------------------

# 21. Practice Script

``` bash
#!/usr/bin/env bash

declare -A laptop

laptop[cpu]="i5-5300U"
laptop[ram]="8GB"
laptop[ssd]="256GB"

features=("WiFi" "Bluetooth" "Webcam")

echo "=== Laptop Specs ==="

for key in "${!laptop[@]}"; do
    echo "$key : ${laptop[$key]}"
done

echo

echo "=== Features ==="

for idx in "${!features[@]}"; do
    echo "$((idx + 1)). ${features[$idx]}"
done
```

# Some links
[[Loops]]
[[Conditionals]]
[[If Else statements]]
[[Arithmetic Expressions in Bash]]