1. In Python, what is the difference between a built-in function and a user-defined function? Provide an
   example of each.
Ans.1.
If you define the function yourself, it is a user-defined function. On the other hand, the Python function that come along with Python are known as in-built functions. All the functions apart from in-built functions and library functions come under the category of user-defined functions.

eg: The most common built in function is
print()

print('hello')
Output:
hello

User defined function:
def greetings():
    print('good morning')
    
greetings()

Output:
good morning



2. How can you pass arguments to a function in Python? Explain the difference between positional
   arguments and keyword arguments.
Ans.2.
Information can be passed into functions as arguments. Arguments are specified after the function name, inside the parentheses. You can add as many arguments as you want, just separate them with a comma. We can pass the argument to a function at the time when we call a function.

Difference between Positional Arguments and keyword arguments:

Positional Arguments:
Arguments are passed in the order of parameters. The order defined in the order function declaration.Order of values cannot be changed to avoid the unexpected output.
eg:
def nameAge(name, age):
    print("Hi, I am", name)
    print("My age is ", age)
    
#You will get correct output because argument is given in order
print("Case-1:")
nameAge("Prince", 20)

#You will get incorrect output because argument is not in order
print("\nCase-2:")
nameAge(20, "Prince")

Output:
Case-1:
Hi, I am Prince
My age is  20

Case-2:
Hi, I am 20
My age is  Prince

keyword arguments:
Parameter Names are used to pass the argument during the function call.Order of parameter Names can be changed to pass the argument(or values).
eg:
def nameAge(name, age):
    print("Hi, I am", name)
    print("My age is ", age)
 
nameAge(name="Prince", age=20)
 
nameAge(age=20, name="Prince")

Output:
Hi, I am Prince
My age is  20
Hi, I am Prince
My age is  20



3. What is the purpose of the return statement in a function? Can a function have multiple return
   statements? Explain with an example.
Ans.3.
A return statement is used to end the execution of the function call and “returns” the result (value of the expression following the return keyword) to the caller. The statements after the return statements are not executed. If the return statement is without any expression, then the special value None is returned.

A function can have multiple return statements. When any of them is executed, the function terminates. A function can return multiple types of values. Python functions can return multiple values in a single return statement.To do so, return a data structure that contains multiple values, like a list.
eg:
def fun():
    str = "Hello James Bond"
    x = 7 
    return [str, x];  
   
print(fun()) 

Output:
['Hello James Bond', 7]


```python

```

4. What are lambda functions in Python? How are they different from regular functions? Provide an
   example where a lambda function can be useful.
Ans.4.
Python Lambda Functions are anonymous function means that the function is without a name. As we already know that the def keyword is used to define a normal function in Python. Similarly, the lambda keyword is used to define an anonymous function in Python.

eg:
def cube(y):
    return y*y*y
 
lambda_cube = lambda y: y*y*y

print("Using function defined with `def` keyword, cube:", cube(5))
 
print("Using lambda function, cube:", lambda_cube(5))

Output:
Using function defined with `def` keyword, cube: 125
Using lambda function, cube: 125

Lambda functions are useful for small tasks that are not reused throughout your code.

eg:
ages = (13, 90, 17, 59, 21, 60, 5)
 
adults = tuple(filter(lambda age: age > 18, ages))
 
print(adults)

Output:
(90, 59, 21, 60)



5. How does the concept of "scope" apply to functions in Python? Explain the difference between local
   scope and global scope.
Ans.5.
The location where we can find a variable and also access it if required is called the scope of a variable.How does the concept of "scope" apply to functions in Python that we can see with the help of examples below.

Python Local variable:
Local variables are those that are initialized within a function and are unique to that function. It cannot be accessed outside of the function. Let’s look at how to make a local variable.
eg:
def fun():
    
    #local varriable
    s = 'Hello there'
    print(s)
    
fun()

Python Global variables:
Global variables are the ones that are defined and declared outside any function and are not specified to any function. They can be used by any part of the program.
eg:
#Global scope
s = 'Hello there'
def fun():
    print(s)
 
fun()

def fun1():
    print(s)
fun1()



6. How can you use the "return" statement in a Python function to return multiple values?
Ans.6.
You can return multiple values from a function in Python. To do so, return a data structure that contains multiple values, like a list.
eg:
def fun():
    str = "Hello James Bond"
    x = 7 
    return [str, x];  
   
print(fun()) 

Output:
['Hello James Bond', 7]



7. What is the difference between the "pass by value" and "pass by reference" concepts when it
   comes to function arguments in Python?
Ans.7.
Pass by value:
In this approach, we pass a copy of actual variables in function as a parameter. Hence any modification on parameters inside the function will not reflect in the actual variable.
eg:
num1 = 20
num2 = num1
num1 = 30

print(num1)
print(num2)

Output:
30
20

Pass by reference:
When you assign a list to a variable, you are actually assigning a list reference to the variable. A reference is a value that points to some bit of data, and a list reference is a value that points to a list.
eg:
num1 = [1,2,3,4,5]
num2 = num1
num1[1] = 45

print(num1)
print(num2)

Output:
[1, 45, 3, 4, 5]
[1, 45, 3, 4, 5]
here both the varriable points to same list that's why change in num1 will also reflect in num2.



8. Create a function that can intake integer or decimal value and do following operations:
a. Logarithmic function (log x)
b. Exponential function (exp(x))
c.Power function with base 2 (2**x)
d. Square root
Ans.8.
a. Logarithmic function (log x):
import math

def log_fun(x):
    if x > 0:
        print (f'Natural logarithm of {x} is : ', end="")
        print (math.log(x))
    else:
        print('Wrong number')
        

log_fun(20)

Output:
Natural logarithm of 20 is : 2.995732273553991

b. Exponential function (exp(x)):
import math

def expo_fun(x):
        print (f'exponential of {x} is : ', end="")
        print (math.exp(x))
        

expo_fun(20)

Output:
exponential of 20 is : 485165195.4097903

c.Power function with base 2 (2**x):
import math

def power_fun(x):
        print (f'value of 2 raised to the power of {x} is : ', end="")
        print (math.pow(2,x))
        
power_fun(4)

Output:
value of 2 raised to the power of 4 is : 16.0

d. Square root:
import math

def square_root(x):
        print (f'Square root of {x} is : ', end="")
        print (math.sqrt(x))
    
square_root(64)

Output:
Square root of 64 is : 8.0



9. Create a function that takes a full name as an argument and returns first name and last name.
Ans.9.
def name_fun(full_name):
    x = full_name.split()
    print(f'first name: {x[0]}')
    print(f'last name: {x[1]}')
    
name_fun('John Cena')

Output:
first name: John
last name: Cena




