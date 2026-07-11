
`#include <stdio.h>`

`int main() {`

	int age = 17 ;
	printf("I am %d years old", age);`
	return 0;`
`}`

- `int age = 17` mean a variable where `int` represent the integer values and `age` is like $age in bash and the value is 17 
- when we want it to print we use `%d` to i mean print the digit and then after ending printf with `"` we add our variable name like `printf("I am %d years old", age)` 
- and finally we end our program by return code to make sure everything run fine 

`#include <stdio.h>`

`int main() {`

	float resistence = 5.436 ;
	printf("The resistence in this wire is %.3f", resistence);`
	return 0;`
`}`

- now here we see a new variable called `float` which is not like `int`, it can print the decimals 
- for above example we set `float resistence = 5.436 ;` means the value of variable is `5.436` 
- not to print it we can use `printf("The resistence in this wire is %.3f", resistence);` where we see we did not use `%d` we use `%f` cause we are using float variable means f and we can see we also use `%.4f` where the `.4` means it shows the 4 decimals 

`#include <stdio.h>`

`int main() {`

	double pi = 3.14159265359 ;
	printf("The value of Pi is %lf", pi);`
	return 0;`
`}`

- now here we see a new variable `double` this is same as float but more precise  and use for long decimal numbers like value of Pi etc
- for print we here use `%lf` it means long float and we can do same here like `%.15lf` to get decimals up to 15  
- `%lf` only print decimals up to 6 

`#include <stdio.h>`

`int main() {`

	char block = 'A' ;
	printf("You are in Block %c\n", block);`
	return 0;`
`}`

- now here we see a new variable again `char` means character the char variable can store only one character it can be anything a letter, symbol or number 
- to printf it we use `%c` as its format to print 
- the char variable's value should be in `''` single quotation   

`#include <stdio.h>`

`int main() {`

	char name[] = "Atif" ;
	char food[] = "Biryani";
	
	printf("You are in Block %s\n", name);
	printf("I like %s too much\n", food);
	
	return 0;`
`}`

- now here we have variable with strings ( format - `%s` )  for above example we know that `char` store only 1 character but with string we can store words in it 
- the variable should be like `char name[]` where the name of the variable which is `name` should be with square brackets and the value of the variable should be in double quotation 

`#include <stdio.h>`
`#include <stdbool.h>`

`int main() {`

	bool isOnline = true;

	printf("Player is %d\n", isOnline);
	
	return 0;`
`}`

- Now we have the `bool` variable this is something new if we are using `bool` in our code than we need to include bool's standerd by `#include <stdbool.h>` 
- bool variable should be like `bool -name- = true/false` and to printf this code wse use the format `%d` in our printf
- it is like true/false and we can use 1/0 for truefalse too
- the output of printf will be `Player is 1` not online cause the 1 represent true 
- Most of the time Bool is used in if statements for example here is a simple if statement -

`if(isOnline) {`
	`printf(Player is Online);`
`}`
`else {`
	`printf(Player is Offline;)
`}

- we learn more about if statements in our course

## Summery 

- // variable = A reusable container for a value. Behaves as if it were the value it contains.
- // int = whole numbers (4 bytes in modern systems)
- // float = single-precision decimal number (4 bytes)
- // double = double-precision decimal number (8 bytes)
- // char = single character (1 byte)
- // char[] = array of characters (size varies)
- // bool = true or false (1 byte, requires <stdbool.h>)