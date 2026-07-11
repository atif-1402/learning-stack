The `case` statement in Bash is like a cleaner version of a long `if-elif-else` chain. It is basically equivalent of `else` in an `if` statement.

here is the syntax of case statements

```bash
case "$variable" in
    pattern1)
        # commands
        ;;
    pattern2)
        # commands
        ;;
    pattern3)
        # commands
        ;;
    *)
        # default (matches anything)
        ;;
esac
```

the * is hell something it is the eque to else in an if statement 
here is the simple case statement script 

```bash
#!/usr/bin/env bash

s='atif'

case "$s" in
atif | a* | *f)
  echo "Hello $s"
  ;;
*)
  echo "didnt match i think"
  ;;
esac
```

- in first patter `atif | a* | *f` it checks the variable value like s is set to atif so it checks if it matchs first thing in pattern which is clearly atif and after that we see a pipe but its eque to 'or' mean yk bro... so the a* check the variable value start with a and after that star f means end with f if all three conditions of the first pattern match it runs the command given to it now in second pattern we see `*)` which means anything if something else came it runs the command it given

# Bash case terminators

;;   → Stop after this case.
       Do NOT check any other patterns.
       (Most commonly used.)

;&   → Execute the NEXT case's commands
       WITHOUT checking if its pattern matches.
       (Fall-through.)

;;&  → Check the NEXT pattern normally.
       If it matches, execute it.
       Continue testing from there.

---
Some links

[[If Else statements]] 
[[Loops]]
