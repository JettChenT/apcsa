# Lesson 10-12

Justin 10-6

## Lesson 10

### the basic introduction of object-oriented programming

Object-oriented programming.

Model real-word entities as objects of a "genreal" class

a class can be though of as a document that describes the properties or functionalities objects/instances of that class

### what are the components of a class

1. class header

2. instance and static variables- represent properties.

3. constructors

4. methods

##### writing class: public, capital the first letter in the name of the class.

for example

```java
public class BankAccount{
}
```

### Instance variables

represent properties any of instance of the class.

Instance msut be declared as private.

Not initialized, not final

Examples

```java
public class BankAccount{
    //instance variables:
    private String password;
    private double balance;
}
```

### Static variables:

represent properties to the entire class

have the same value for all instances of the class

```java
Public class BankAccount{
    //static variables
    public static final double overdrawn-limit=0.0;
}
```

### public and private modifiers

private: visibile within the scope of class

public: can be access with outside the class

### constructor

initialize instance variables when object is being created during runtime

```java
Public class BankAccount{
    // instance variable
    private String password;
    ptivate double balance;

    //zero-parameter constructor
    public BankAccount(){}
    //the same with password="", balance=0.0;
    public BackAccount(String password, double balance)
    {
        this.password=password;
        this.balance=balance;
    }
    //this. refers to the line 3 and line 4, it means this variable is the class instance objects
}
```

Syntanx: public className(...){...}

When no constructor is written, Java provides a default zero-parameter

### This.

This.  is use for the class instance variable. Its use is to avoid the same name with the local variable.(However, you can still use another name for local variable)

### Create object in runtime

put the main method in a runner class

create object using the new keyword <u>followed</u> by the <u>constructor call</u>

Syntax: className variableName=new className(parameters)

example:

```java
public class BankAccountRunner{
    public static void main(String[] args)
    {
        //Create a BankAccount object(call constructor)
        BackAccount a = new BankAccount("123456",0);
        BankAccount b = new BankAccount();
        //use difference constructors
    } 
}
```

a and b are object reference variables, which are storing addfress of the actual objects

### Methods

Accessor(get) method

mutator(set) method

Syntax

public returntype methodname(type param1.....){

    ....

}

When returnType is not void, there must be a return statement, which returns the value of the type

When it is void, there is no return statement

examples of accessor and mutator

```java
public class BankAccount{
    //accessor
    public double getBalance(){
    return balance;
    }
    //mutator
    public void deposit(double amount){
        balance += amount;
    }
}
```

### encapsulation

the property of the object is private, so there is an implementation: private instance variables + public methods. It can take the instance objects outside of the class

```java
public class BankAccount{
    private double balance;
    public double getBalance(){
    return balance;
    }
    //since balance is private, we cannot use it outside the class. The method helps us to get the value of balance
}
```

### invoking instance methods in client class

syntax: variableName.methodName(param1...)

variable name must have already stored the address of an object.

### static method:

static methods are methods belonging to the class

Instance variables are not allowed to be accessed

```java
public static void main(String[] args){...}
```

## Lesson 11

### instance method invocation

call the method directly within other instance methods in the same class

equivalent to using this.

example

```java
public class BankAccount{
    public double getBalance(){
        return balance;
    }
    public double deposit(double amount)
    {
        double newAmount=getBalance()+amount;
        return newAmount;
    }
    //remember the parentheses
}
```

outside: use objectRefernce. MethodName(...)

### Static method invocation

use the static method directly inside all method

equivalent to using className.methodName(...)

use className.methodName

for example 

```java
public class BankAccount{
    public static void printlimit()
    {
        System.out.print(Overdeawn-LIMIT)
    }
}
public class BankAccountrunner{
    BankAccount,printlimit;
    BackAccount a=new BankAccount();
    a.printlimit();
}
```

Other examples: Math classes

a^b: Math.pow(a,b)

the square root of a: Math.sqrt(a)

absolute value of a: Math.abs(a)

Math.random(): give a random number bewteen 0 and 1( not containing 1)

examples:

find a random integer 0 and 100

int result=(int)(101*Math.random()). Because it does not include 1, so we need to use 101

### tostring

when an object reference variable is printed

If doesn't store anything: NullPointerException

When the reference variables stores the address of the object: toString()method is invoked, which returns a String.

example

```java
public class BankAccount{
    public String toString()
    {
        return "A";
    }
}
public class Runner{
    BankAccount bob;
    bob=new BankAccount(...);
    System.out.print(bob);
    //the same with bob.toString()
}
```

### Parameter passing during the method invocation

we can pass primitive type or variables storing a value

### object reference type

use a copy of the address

### Method overload

more than one method with the same names, but different parameters.

- same method name, different number of parameters.

- different number of parameters

- different types of parameters

- parameters listed in different orders

- be careful to distinguish the parameters type

### Wrapper classes

Classes/objects corresponds to primitive types.

Convenient

Convert primitive type variable initialization to object type variable initialization

example
```java
int a1=40;

Integer a2= new Integer(40); capitalize

double b1=3.14;

Double b2= new Double(3.14);

System.out.print(a2.intValue());

System.out.print(b2.doubleValue());
```

### Autoboxing

allowed to directly assign a primitive type value to the correspoding wrapper class.

```java
int a=1;
Integer x=a; // (equals to new Integer(1)
```

Double x=(int value) not allowed. It will not do autoboxing and change of the double and int value at the same time

### Autoboxing:

```java
Integer x=new Integer(2);
```

assign a object refernce to its corresponding primitive type variable.

```java
int a=x;
a=2
```

Wrapper classes are immutable

```java
Integer a1=1;
a1=2;
```

there are two objects 

## Lesson 12

String is an object type.

Syntax: variableName=new String(String literal);

variable Name=String literal;

The first one creates a new object. The second one means it is in the String Constant pool

### String initialization 1

zero parameter: new String()

one-parameter:new String("")

If you uses this type of initialization, it creates new objects.

```java
String a=new String("c");
String b=new String("c");
```

There are two objects.

### String initialization 2

```java
String a="a";
String b="a";
```

This will only creates one object because they both refer to "a" in the String constant pool

### "==" operator

== compares the contents. 

```java
String a="c";
System.out.print(a=="c");
Output:true
```

the content of a and the address of "c"

Another example:

```java
String a=new String("c");
String b=new String("c");
System.out.print(a==b);
```

They have difference address, so it will output: false.

### Equals method(boolean)

```java
String a=new String("c");
String b=new String("c");
System.out.print(a.equals(b));
```

Compare the values, which is the same.

### Length method(int)

Calculate the length of the string

### substring method(string)

one parameter: (int begin index)

##### remember that the first index is 0.

 The substring will be the part from the begin index to the end.

two parameter: (int begin index, int end index)

The substring will be the part from the begin index to the end index.

### indexOf method(int)

find out the first substring which appears in the string. It willreturn the first letter's index

### Compareto(string)

1. if two string are identical, return 0

2. if the first string is longer than the second one, and the content of the first few letters of the first string and the second one is the same, it will return how many units A more than B

3. If there is different letters, just make a calculations according to the ASCII table

