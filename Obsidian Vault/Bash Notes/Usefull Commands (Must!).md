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