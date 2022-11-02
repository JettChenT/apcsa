# Lesson 6-9

10-3 Dennis 袁梓晨


## Lesson 6

### Rewrite of nested if statement

nested if statement has several if and else-if statement that implanted in one logic

Example:

```java
if (expr 1){
    if(expr 2){
        oper 1;
    }
    else{
        oper 2;
    }
}
else if (expr 3){
    if (expr 4)
        oper 3
    else
        oper 4
```

we can rewrite nested if statements using compound logic

```java
if (expr1 && expr2){
    oper 1;
}
else if(expr2){
    oper 2;
}
else if (expr3 && expr4){
    oper 3
}
else{
    oper4
}
```

> Practice Example 1

```java
int a=10;
int b=20;

if(a==10){

   if(b!=20){
      System.out.println("GeeksforGeeks");
}

   else{
      System.out.println("GFG");
```

output:    GFG

Notice: Pay attention to the position of the implanted statements

```java
if (expr1){ \\ outer if statement
    if(expr2){
        State 1;
    else \\implanted in the outer if statement
        State 2;
    }
}
```

### Defusion of the compound logic in if statement

- &&       and

- ||        or

- !           not

*notice that：*

```java
!(c == d) is equivalent to (c != d)
!(c != d) is equivalent to (c == d)
!(c < d) is equivalent to (c >= d)
!(c > d) is equivalent to (c <= d)
!(c <= d) is equivalent to (c > d)
!(c >= d) is equivalent to (c < d)
```

### Example: loop year

Loop year has three characteristics

- divisible by 4

- not divisible by 100

- can divisible by 400

original

```java
boolean isLoopyear;
int year = //user input;
if (year%4==0)
    if(year%400==0)
        return true;
    else if(year%100==0)
        return false;
    else
        return true;
```

using compound logic

```java
if (year%4==0&&year%100!=0||year%400==0)
    return true;
else
    return false;
```



## Lesson 7

**While loop**

a while loop will countinuing running until the statement is false

```java
// if statements just run once if the condition is true
if (condition){
    statements;
}
// while statements are repeated while the condition is true
while (condition){
  statements;
}
```

**-Reminders**

1. while (true) or while (false) is an **infinite loop**

2. make sure the truth value of the boolean **can change** during iteration

3. If the while loop is false at first, it will never be executed

4. make sure that the variable in while loop **may be refreshed** everytime the statement executed

**-Infinite loop**it is a not a compile error, and the program will countinuing executed

**-while loop with if statements**

> Example

```java
int i = 0;
int a = 0;
while i<10{
    if (i%2==0){
        a++
    }
}
...print(a)
```

*Notice: Remember these 3 steps to writing a loop*:

1. Initialize the loop variable (before the while loop)

2. Test the loop variable (in the loop header)

3. Change the loop variable (in the while loop body at the end)

> **Practice example 1**

Consider the following code segment. Which of the following can be used as a replacement for the missing loop header so that the loop prints out “0 2 4 6 8 10”?

```
int count = 0;
/* missing loop header */
{
    System.out.print(count + " ");
    count += 2;
}
```

answer:      while (count <= 10)



## Lesson 8

### -For loop

For loops have three parts 

- initialize

- test condition

- update

If test condition remains true, the loop will be executed; if false, execution will continue at the next statement after the body of the loop.

    *Notice that initialization and update are optional to matian the loop*

![](./assets/ForLoopFlow.png)

             *figure 8.1*

### -Comparison between while & for loop

For loop is a more clear way to show a while loop:

![](https://runestone.academy/ns/books/published/csjava/_images/compareForAndWhile.png)

               *figure 8.2:  for loop & while loop switch*

We can alway rewrite a while loop into a for loop, rewrite a for loop into a while loop.

### -Infinite for loop

an infinite for loop occurs due to a test condition that always remain true

```java
for (int i = 100, i>0){
    i++
}
Infinite loop!
```

### -off by one error

It is a common situation that we may get a wrong output that we want due to off by one error, that is often occur due to the wrong test condition.

*Notice that in each iteration of a for loop, the increment or decrement statement is executed after the entire loop body is executed and before the Boolean expression is evaluated again.*

```java
for (int num=0; num<=10; num++)
output: 11
```

> Practice Example 1

```java
for (int i = 3; i <= 9; i++)
{
   System.out.print("*");
}
```

How many times does * printed?   7



## Lesson 9

### Nested loops

Examples of Iterations and loops that can be write as nested loops

- while loop

- for loop

- nested control structure

A nested loop is literally a group of loops that occurs in sequential order

![](https://runestone.academy/ns/books/published/csjava/_images/nestedloops.png)

                                                    *Figure 9.1: nested for loop*

*<u>Notice that in each iteration of the outer loop, the inner loop will be re-started. The inner loop must finish all of its iterations before the outer loop can continue to its next iteration.</u>*

> Example of nested for loop

```java
for (int row = 1; row <= 3; row++)
       {
           for (int col = 1; col <= 5; col++)
           {
               System.out.print("*");
           }
           System.out.println();
       }
```

> Example of nested while loop

```java
while(cond_outer){
    con1
    while(cond_inner){
        con2
    }
}
```

> Practice Example 1

Print out the following right triangle 

```
****
***
**
*
```

Program:

```java
for (i=0, i<4, i++){
    for (j=0,j<4-i,j++){
        ...print('*')
    }
    ...println()
}
```

> Practice example 2

print a isoceles triangle

```java
int row = 5;
int col = 2*row-1;
for (int i = 0; i<row; i++){
    for (int j = 0; j<col/2-i; j++){
        ...print("");
    }
    for (int j = 0; j<2*i+1; j++){
        ...print("*")
    }
    ...println();
}
```
