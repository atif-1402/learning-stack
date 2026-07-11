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
---
## 4. awk