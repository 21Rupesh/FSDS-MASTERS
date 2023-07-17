1. What are the two values of the Boolean data type? How do you write them?
Ans1.
True and False are two values of the boolean data type and we can write them as
True-  First capital letter and rest of them in small letters
False- First capital letter and rest of them in small letters.




2. What are the three different types of Boolean operators?
Ans2.
Three different types of boolean operators are:

and - It gives output True only when all the inputs are True.

or- It gives output True if any one of the  input is True.

not- It gives output True if input is False.



3. Make a list of each Boolean operator's truth tables (i.e. every possible combination of Boolean
   values for the operator and what it evaluate ).
Ans3.
True and True is True.
True and False is False.
False and True is False.
False and False is False.
True or True is True.
True or False is True.
False or True is True.
False or False is False.
not True is False.
not False is True.



4. What are the values of the following expressions?
(5 > 4) and (3 == 5)

not (5 > 4)

(5 > 4) or (3 == 5)

not ((5 > 4) or (3 == 5))

(True and True) and (True == False)

(not False) or (not True)

Ans4.
(5 > 4) and (3 == 5)
False

not (5 > 4)
False

(5 > 4) or (3 == 5)
True

not ((5 > 4) or (3 == 5))
False

(True and True) and (True == False)
False

(not False) or (not True)
True





5. What are the six comparison operators?
Ans5.
Six comparison operators are:
== : equal to
> : greater than
< : less than
>= : greater than equal to
<= : less than equal to
!= : not equal to




6. How do you tell the difference between the equal to and assignment operators?Describe a
   condition and when you would use one.
Ans6.
Equal to (==) operator is used to compare two values which results in boolean, and assignment(=) operator is used to assign a value to a varriable.
eg:                     
                      if x == 10:
                          print('Hello')
                          
Here x == 10 is a condition in 'if' statement by using 'eqaul to' operator, so basically condition is a expression which is generally used in  'if else' statements and loops.



7. Identify the three blocks in this code:
   spam = 0
   if spam == 10:
       print('eggs')
       if spam > 5:
           print('bacon')
       else:
           print('ham')
       print('spam')
   print('spam')
Ans7.
    spam = 0
   if spam == 10:
       print('eggs') -      Block 1 starts
       if spam > 5:
           print('bacon') - Block 2
       else:
           print('ham')  -  Block 3
       print('spam') -      Block 1 ends
   print('spam')




8. Write code that prints Hello if 1 is stored in spam, prints Howdy if 2 is stored in spam, and prints
   Greetings! if anything else is stored in spam.
Ans8.
spam=0
if spam == 1:
    print('Hello')
elif spam == 2:
    print('Howdy')
else:
    print('Greetings')



9. If your programme is stuck in an endless loop, what keys you’ll press?
Ans9.
ctrl + c



10. How can you tell the difference between break and continue?
Ans10.
Break:A break statement in Python alters the flow of a loop by terminating it once a specified condition is met. 
Continue: The continue statement in Python is used to skip the remaining code inside a loop for the current iteration only.
eg:Break

for char in "Aditya":
    if char == "t":
        break
    print(char)

print("Over")

Output:
A
d
i
Over

eg:Continue

for char in "Aditya":
    if char == "t":
        continue
    print(char)

print("Over")

Output:
A
d
i
y
a
Over



11. In a for loop, what is the difference between range(10), range(0, 10), and range(0, 10, 1)?
Ans11.
They all do the same thing. The range(10) call ranges from 0 up to (but not including) 10, range(0,10) explicitly tells the loop to start at 0 , and range (0,10,1) explicitly tells the loop to increase the variable by 1 on each iteration.
eg:
for i in range(10): or for i in range(0,10): or for i in range(0,10,1)
    print(i)               print(i)                 print(i)

Output:All gives the same output

0
1
2
3
4
5
6
7
8
9



12. Write a short program that prints the numbers 1 to 10 using a for loop. Then write an equivalent
    program that prints the numbers 1 to 10 using a while loop.
Ans12.
for i in range(1,11):
    print(i)
    
and
i = 1
while i <= 10:
    print(i)
    i+=1



13. If you had a function named bacon() inside a module named spam, how would you call it after
    importing spam?
Ans13.
We can call our function like this:
spam.bacon()


