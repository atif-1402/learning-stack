## 1. cut

it is use to remove section from each lines of files. Its syntax is simple 

```bash
cut [option] [file]
```

lets talk about some most useful option/flags 

- -d (delimiter) - we use to specify delimiter which is `;/,:` type things. The default delimiter is `<TAB>`.

- -f (fields) - this is use to specify fields we can use it like 
  `-f1 or -f1,2 or -f1-4` 

- -c (character position..) - we use it to extract specific length i think of the word for example - it is gonna print `abc` only

```bash
echo "abc123xyz" | cut -c1-3
``` 

# to learn more check MAN page

---
## 2. tr

it is use to translate or delete characters. The syntax is simple

```bash
tr [option]... STRING1 [STRING2] 
```

lets talk about some flag of tr -

### -d (delete) - it is use to delete the selected chars from line

```bash
echo "abcxyz123" | tr -d 'abc'
```

it is gonna print xyz123

### -s (squeeze) - it is use to remove repeateted chars or reduce to one smartly making it good flag

```bash
echo "i    am      fast  " | tr  -s ' '
```

it is gonna remove those tons of space and make them one cause we specified it in `-s ' '` 

we can translate our text in many ways with tr check the MAN page for it 

---
## 3. sed

it is a stream editor and text transformer. the syntax is simple 

```bash
sed 's/OLD/NEW/flag'
```

lets talk about falgs in sed 

s/ - it means substitute 

### p - this is use to print the chosen line only this below example print only 2 cause there is another flag -n

```bash
(
	echo "Biryani"
	echo "Chicken-tikka"
) | sed -n '2p'
```

### -n - this say to print nothing until user specify you can see above example where we use -n to print nothing and then 2p to just print second line

### d - this is use to delete the specific line to stop printing it like in below example it is gonna delete the second line  

```bash
(
	echo "Biryani"
	echo "Chicken-tikka"
) | sed '2d'
```

/i - this is ignore which ignore the letter cases mean upper case or lower case like in below example it is gonna igonre the cases

```bash
echo "Biryani Chicken Steak" | sed 's/biryani/korma/i'
```

/g - this is global which is gonna change the text globally defauly it just change the first selected word but if the same word is somewhere else this is gonna change it too

```bash
echo "biryani korma kebab steak biryani" | sed 's/biryani/lamb/g'
```

-i - it is use to edit file using sed currently we just use it to modify result but we can edit it too see the below example

```bash
sed -i 's/OLD/NEW/flag' file.txt
```

-e - it is use to do multiple expression something like 

```bash
sed -e 's/OLD/NEW/' -e 's/NEW/FUTURE/'
```
---
## 4. awk

it is a text-processing language used for extracting,analyzing, formatting, and reporting structured text.

---

# What is AWK?

Think of the Unix tools like this:

| Tool | Purpose |
|------|---------|
| `cut` | Extract columns |
| `tr` | Transform characters |
| `sed` | Edit text |
| `awk` | Process structured text |

Common uses:

- CSV files
- Log files
- Reports
- Counting
- Filtering
- Formatting
- Statistics

---

# Basic Syntax

```bash
awk 'program' file
```

Example:

```bash
awk '{ print }' file.txt
```

Print every line.

---

# Field Separator

Default separator = whitespace.

Use `-F` to specify one.

Comma:

```bash
awk -F',' '{ print $1 }' menu.csv
```

Colon:

```bash
awk -F':' '{ print $1 }' /etc/passwd
```

Pipe:

```bash
awk -F'|' '{ print $2 }' file.txt
```

---

# Fields

```
$1
```

First field.

```
$2
```

Second field.

```
$3
```

Third field.

...

```
$NF
```

Last field.

---

Example

Input

```text
Biryani,250
Korma,180
Kebab,120
```

```bash
awk -F',' '{ print $1 }'
```

Output

```text
Biryani
Korma
Kebab
```

---

# Built-in Variables

## NR

Current Record Number (Current Line)

Example

```bash
awk -F',' '{ print NR, $1 }'
```

Output

```text
1 Biryani
2 Korma
3 Kebab
```

---

## NF

Number of Fields.

Input

```text
Biryani,250,Chicken
Korma,180
Kebab
```

```bash
awk -F',' '{ print NF }'
```

Output

```text
3
2
1
```

---

## $NF

Print last field.

Input

```text
Biryani,250,Chicken
Korma,180
Kebab,120,Beef,Spicy
```

```bash
awk -F',' '{ print $NF }'
```

Output

```text
Chicken
180
Spicy
```

---

# BEGIN

Runs once before processing input.

```awk
BEGIN {
    print "===== MENU ====="
}
```

---

# Processing Block

Runs for EVERY line.

```awk
{
    print $1
}
```

---

# END

Runs once after all lines.

```awk
END {
    print "Finished"
}
```

---

Execution Order

```
BEGIN

↓

Line 1

↓

Line 2

↓

Line 3

↓

END
```

---

# Variables

Variables don't require declaration.

```awk
price = $2
```

```awk
item = $1
```

---

# Arithmetic

```awk
print $2 + 50
```

```awk
print $2 - 20
```

```awk
print $2 * 2
```

```awk
print $2 / 10
```

AWK automatically treats numeric fields as numbers.

---

# Counting

```awk
{
    count++
}

END {
    print count
}
```

---

# Sum

```awk
{
    total += $2
}

END {
    print total
}
```

---

# Average

```awk
{
    total += $2
    count++
}

END {
    print total / count
}
```

---

# Conditions

Short form

```awk
$2 >= 200 {
    print $1
}
```

Meaning

```
If field 2 >= 200

↓

Print field 1
```

---

# if

```awk
{
    if ($2 >= 200) {
        print $1
    }
}
```

---

# if / else

```awk
{
    if ($2 >= 200) {
        print "Expensive"
    } else {
        print "Affordable"
    }
}
```

---

# Pattern Matching

General syntax

```awk
/pattern/ {
    action
}
```

Example

```awk
/Kebab/ {
    print
}
```

Meaning

```
If line contains Kebab

↓

Print line
```

---

# print

Simple output.

```awk
print $1
```

Automatically adds newline.

---

# printf

Formatted output.

```awk
printf "%s costs ₹%d\n", $1, $2
```

Unlike `print`, `printf` does **NOT** add a newline automatically.

---

## Common Format Specifiers

String

```awk
%s
```

Integer

```awk
%d
```

Float

```awk
%f
```

---

Example

```awk
printf "%s costs ₹%d\n", $1, $2
```

Output

```
Biryani costs ₹250
```

---

# Full Example

```awk
awk -F',' '

BEGIN {
    printf "====== MENU ======\n"
}

{
    printf "%s costs ₹%d\n", $1, $2

    count++
    total += $2
}

END {
    printf "------------------\n"
    printf "Items   : %d\n", count
    printf "Total   : ₹%d\n", total
    printf "Average : %.1f\n", total / count
}
' menu.csv
```

---

# Flow

```
Read Line

↓

Split into Fields

↓

Run Program

↓

Repeat

↓

END
```

---

# Quick Cheat Sheet

| Expression | Meaning |
|------------|---------|
| `-F','` | Field Separator |
| `$1` | First Field |
| `$2` | Second Field |
| `$NF` | Last Field |
| `NR` | Current Line Number |
| `NF` | Number of Fields |
| `BEGIN` | Before Processing |
| `END` | After Processing |
| `print` | Simple Output |
| `printf` | Formatted Output |
| `count++` | Increment Counter |
| `total += $2` | Sum Values |
| `/pattern/` | Match Lines |
| `if` | Conditional |
| `else` | Alternative Branch |

---

## 5. find 

what you think by the name of it obviously it just find and it is very simple 

```bash
find [location] [flags]...
```

lets talk about some flags 

-type - this set the type of things we need to look for commenly f for file and d for dirs something like this 

```bash
find . -type f
find . -type d
```

-name - specify the name or from what it start or end by using * in

```bash
find . -type f -name "cat"
find . -type d -name "*sh"
find . -name "*.png"
```

-iname - it is same as -name just ignore the upper or lower cases

-maxdepth - this one is good shhii.. with this we can set the level to dig in only for example with this we can just see the things in level one of the tree 

```bash
find . -maxdepth 1
```

-empty - this is jackas.. just gonna show the empty files or dirs 

---

## 6. sort

this thing just sort out the output of things in alphabatical order and case sensitive by default

```bash
sort [flags]...
```

-r - just reverse the sorted output 

-n - use to sort numbers actually not wierdly

-u - remove unique chars (repetitive chars or maybe something more unique shi...)

---

## 7. uniq

this remove the repetitive chars that are in order kinda suck i think but most of the time pair it with sort or just use sort -u and uniq -c flag just add the amount of time the char get uniqued typa shit like 5 apple...

---

## 8. wc

this is word count simple as hell without any flag it shows the line word bytes but with flags we can specify

```bash
wc [flags]...
```

-l - just print the amount of lines

-w - just print the amount of words 

-c - just prints the bytes

---

## 9. xargs

i think this as a wild card cause it can conver the output of something to run with command i know what i am saying is completely bad but here is the example

```bash
echo "chicken steak wagyu" | xargs echo
find . -type f -name "*.tmp" | xargs rm 
```

in second command you can see that firs when find commands run it list the files like ./eafbia.tmp then xargs execute its work by adding rm at start something like rm ./eafbia.tmp 