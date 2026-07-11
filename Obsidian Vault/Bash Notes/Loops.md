# 1. **For Loops**

this is the thing that repeat a line with different variable you set i know what i am trying to say is wrong but for me its correct the basic syntax is 

`for VAR in LIST; do `
`    echo "Here is you $VAR"`
`done`

so here you can see VAR and LIST the var is the variable we use in our command or echo or idk anywhere you want and LIST is amount of thing you want to list with the same echo or lines or whatever here is the example script

`for food in biryani korma kebab paneer; do` 
	`echo "your fav food is $food"`
`done`

here you get the output of lines exactly the amount of items in your list like there is 4 then you get 4 only 

your fav food is biryani
...
till the amount of items in list ends

get it?


Now lets discuss more about loop we can use {a..b}
or {1..10} instead of what thing we want (instead of foo bar baz bat thing) this will print the alphabets or numbers from set to end that use set for example a..x print a to x and 1..500 print numbers from 1 to 500 there is some problem if we set max value of thing in this for this typa shit we use C style for loops kinda complicated

# 2. **C-Style For loops**

basic structure:

```bash
for (( init; condition; increment )); do
  # stuff
done
```

all the increment/decrement options:

```bash
i++      # i + 1
i--      # i - 1
i+=2     # i + 2 (any number)
i-=2     # i - 2
i*=2     # double
i/=2     # halve
```

common patterns:

```bash
# count up
for (( i=0; i<10; i++ )); do echo $i; done

# count down
for (( i=10; i>=0; i-- )); do echo $i; done

# skip by 2
for (( i=0; i<=10; i+=2 )); do echo $i; done

# double each time
for (( i=1; i<=100; i*=2 )); do echo $i; done

# using a variable as limit
max=5
for (( i=0; i<max; i++ )); do echo $i; done
```

conditions you can use:

```bash
i < max    # less than
i <= max   # less than or equal
i > max    # greater than
i >= max   # greater than or equal
i == max   # equal
i != max   # not equal
```

---

Some links

[[If Else statements]]