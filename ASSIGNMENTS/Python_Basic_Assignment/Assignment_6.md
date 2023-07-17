Q.1. What are keywords in python? Using the keyword library, print all the python keywords.
Ans1.
Python Keywords are some predefined and reserved words in python that have special meanings. Keywords are used to define the syntax of the coding. The keyword cannot be used as an identifier, function, or variable name. All the keywords in python are written in lowercase except True, False and None.

import keyword

print(keyword.kwlist)

Output:
['False', 'None', 'True', 'and', 'as', 'assert', 'async', 'await', 'break', 'class', 'continue', 'def', 'del', 'elif', 'else', 'except', 'finally', 'for', 'from', 'global', 'if', 'import', 'in', 'is', 'lambda', 'nonlocal', 'not', 'or', 'pass', 'raise', 'return', 'try', 'while', 'with', 'yield']



Q.2. What are the rules to create variables in python?
Ans2.
A Python variable name must start with a letter or the underscore character.

A Python variable name cannot start with a number.

A Python variable name can only contain alpha-numeric characters and underscores (A-z, 0-9, and _ ).

Variable in Python names are case-sensitive (name, Name, and NAME are three different variables).

The reserved words(keywords) in Python cannot be used to name the variable in Python.

Variables are declared by writing the variable name and assigning it a value using the equals sign (=).
eg:
       Name = 'John'
       
Python is dynamically typed, which means that you don't have to declare the type of a variable when you create one.



Q.3. What are the standards and conventions followed for the nomenclature of variables in
     python to improve code readability and maintainability?
Ans3.
Variable names should follow the lowercase convention.

Have the underscore as a separator while naming a multi-word variable.

Begin a non-public variable name with a single underscore.

Use two consecutive underscores at the beginning of an variable. It will get the name mangled (kind of like a private member).




Q.4. What will happen if a keyword is used as a variable name?
Ans4.
We cannot use a keyword in varriable name but if we use by mistake it will gives us:
SyntaxError.



Q.5. For what purpose def keyword is used?
Ans5.
The def keyword is used to create, (or define) a function.



Q.6. What is the operation of this special character ‘\’?
Ans6.
In Python strings, the backslash "\" is a special character, also called the "escape" character. It is used in representing certain whitespace characters: "\t" is a tab, "\n" is a newline, and "\r" is a carriage return.



Q.7. Give an example of the following conditions:
(i) Homogeneous list
(ii) Heterogeneous set
(iii) Homogeneous tuple
Ans7.
Homogeneous list:
animals = ["lion", "tiger", "dog"]

Heterogeneous set:
set1 = {"Tom", 48, "blue", 68}

Homogeneous tuple:
tuple1 = (1, 2, 3, 4, 5)



Q.8. Explain the mutable and immutable data types with proper explanation & examples.
Ans8.
Mutable data types:
Which means their elements can be changed (added, modified, or deleted) after they are created.
eg:
Lists are mutable data types
animals = ["lion", "tiger", "dog"]
animals.append("cat")
animals

Output:
['lion', 'tiger', 'dog', 'cat']

Immutable data types:
Which means their elements cannot be changed (no addition, modification, or deletion) after they are created.
eg:
Tuples are immutable data types
tuple1 = (1, 2, 3, 4, 5)
now they cannot be changed.



Q.9. Write a code to create the given structure using only for loop.
        *
       ***
      *****
     *******
    *********
Ans9.
n=4
for i in range(0,9,2):
    for k in range(0, n):
        print(end= ' ')
    for j in range(0,i+1):
        print('*', end= '')
    print()
    n=n-1



Q.10. Write a code to create the given structure using while loop.
|||||||||
 |||||||
  |||||
   |||
    |
Ans10.
m=0
n=9
i=0
while i<9:
    k=0
    while k<m:
        print(end=' ')
        k=k+1
    j=0
    while j<n-i:
        print('|', end='')
        j=j+1
    i=i+2
    print()
    m=m+1






