Q.1. Create two int type variables, apply addition, subtraction, division and multiplications
and store the results in variables. Then print the data in the following format by calling the
variables:
First variable is __ & second variable is __.
Addition: __ + __ = __
Subtraction: __ - __ = __
Multiplication: __ * __ = __
Division: __ / __ = __

Ans.1.
num1=30
num2=15

add= num1+num2
sub= num1-num2
mul= num1*num2
div= num1/num2

print(f'First variable is {num1} & second variable is {num2}.')
print(f'Addition: {num1} + {num2} = {add}')
print(f'Subtraction: {num1} - {num2} = {sub}')
print(f'Multiplication: {num1} * {num2} = {mul}')
print(f'Division: {num1} / {num2} = {div}')



Q.2. What is the difference between the following operators:
(i) ‘/’ & ‘//’
(ii) ‘**’ & ‘^’

Ans.2.
'/' is simple division and '//' is floor division.
eg:
32/15 gives 2.1333333333333333 and 32//15 gives only 2 that it gives only floor value.

'**' is Exponent operator and '^' is a bitwise operator 'XOR', Sets each bit to 1 if only one of two bits is 1.
eg:
2**4 gives 16, simply 2 to the power 4.

10^2 gives 8 because
bin(10) = 1010
bin(2) = 0010
if we apply XOR in this than we get
1000 it is bin(8).



Q.3. List the logical operators.
Ans3.
In Python, Logical operators are used on conditional statements (either True or False). They perform Logical AND, Logical OR and Logical NOT operations.

and: Returns True if both statements are true, eg- x<5 and x<10.

or: Returns True if one of the statements is true, eg- x < 5 or x < 4.

not: Reverse the result, returns False if the result is true, eg- not(x < 5 and x < 10).




Q.4. Explain right shift operator and left shift operator with examples.
Ans.4.
Right shift operator:
Shifts the bits of the number to the right and fills 0 on voids left( fills 1 in the case of a negative number) as a result. Similar effect as of dividing the number with some power of two.

eg:
a = 10 = 0000 1010 (Binary)
a >> 1 = 0000 0101 = 5

Left shift operator:
Shifts the bits of the number to the left and fills 0 on voids right as a result. Similar effect as of multiplying the number with some power of two.

eg:
a = 5 = 0000 0101 (Binary)
a << 1 = 0000 1010 = 10
a << 2 = 0001 0100 = 20




Q.5. Create a list containing int type data of length 15. Then write a code to check if 10 is
     present in the list or not.
Ans.5.
number = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
if 10 in number:
    print(f'{10} is present in the list ')
else:
    print(f'{10} is not present in the list ')
    
Output:
10 is present in the list 




