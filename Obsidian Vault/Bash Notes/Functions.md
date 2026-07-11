
okay so functions are like a reusable block of code that you can call multiple times without writing the same shit again and again its like making your own command

**How to make one:**

```bash
greet() {
  local name=$1
  echo "Hello $name"
}
```

- `greet()` — this is the name of your function, you call it by just typing `greet`
- `local name=$1` — `$1` here means first argument passed TO THE FUNCTION not the script, and `local` means this variable only lives inside this function and dies when function ends
- without `local` the variable leaks outside the function which is usually bad

**How to call it:**

```bash
greet "Atif"       # prints: Hello Atif
```

**Arguments in functions work same as scripts:**

- `$1` = first argument
- `$2` = second argument
- `$@` = all arguments

**Important difference:**

- `$1` in script = first thing you typed after `./script`
- `$1` in function = first thing you passed when calling the function

these are two different `$1`s depending on where you are

**Real example from my own code:**

```bash
greet() {
  local name=$1       # whatever i pass to greet() lands here
  echo "Hello $name"
}

for name in "$@"; do  # $@ = all args passed to the script
  greet "$name"       # calling greet and passing each name
done
```

running `./greeter foo bar baz` makes it loop through all three and call greet on each one

---

some links
[[Functions]]
[[Loops]]
[[If Else statements]]