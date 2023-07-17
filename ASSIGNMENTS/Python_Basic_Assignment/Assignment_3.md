1. Why are functions advantageous to have in your programs?
Ans1.
The main advantage of a function in a programme is code reusability,Functions reduce the need for duplicate code. This makes programs shorter, easier to read, and easier to update.



2. When does the code in a function run: when it's specified or when it's called?
Ans2.
The code in a function run only when it's called.



3. What statement creates a function?
Ans3.
The def statement creates and defines a function.



4. What is the difference between a function and a function call?
Ans4.
A function is code that describes what a function should do when it is executed (but does not execute that code), it is define by def keyword. A function call is when the function gets executed, it uses a value and makes a return.



5. How many global scopes are there in a Python program? How many local scopes?
Ans5.
There is one global scope, and a local scope is created whenever a function is called.



6. What happens to variables in a local scope when the function call returns?
Ans6.
The local varriables are destroyed when the function call returns.



7. What is the concept of a return value? Is it possible to have a return value in an expression?
Ans7.
A return value is a value that a function returns to when it completes its task. 
Yes it is possible to have a return value in an expression.



8. If a function does not have a return statement, what is the return value of a call to that function?
Ans8.
If there is no return statement for a function, its return value is None.



9. How do you make a function variable refer to the global variable?
Ans9.
Normally, when you create a variable inside a function, that variable is local, and can only be used inside that function. To create a global variable inside a function, you can use the global keyword.
eg:
def myfunc():
  global x
  x = "fantastic"

myfunc()

print("Python is " + x)



10. What is the data type of None?
Ans10.
The None keyword is used to define a null value, or no value at all. None is a data type of its own (NoneType).



11. What does the sentence import areallyourpetsnamederic do?
Ans11.
That import statement imports a module named areallyourpetsnamederic. Though it isn't a real Python module.



12. If you had a bacon() feature in a spam module, what would you call it after importing spam?
Ans12.
This function can be called with spam. bacon().



13. What can you do to save a programme from crashing if it encounters an error?
Ans13.
We can put the programme which may be cause an error in try clause and if error does happen than it executes the Except clause.



14. What is the purpose of the try clause? What is the purpose of the except clause?
Ans14.
try clause: Code that cause an error will go in this.

except clause: if an error occurs than the code in this clause is executed.
