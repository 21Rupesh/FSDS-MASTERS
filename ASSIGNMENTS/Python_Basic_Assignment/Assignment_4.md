1. What exactly is []?
Ans1.
The empty list value, which is a list value that contains no items.



2. In a list of values stored in a variable called spam, how would you assign the value 'hello' as the
   third value? (Assume [2, 4, 6, 8, 10] are in spam.)
Ans2.
spam = [2,4,6,8,10]
spam[2] = 'hello'
print(spam)

Output:
[2, 4, 'hello', 8, 10]




Let's pretend the spam includes the list ['a', 'b', 'c', 'd'] for the next three queries.

3. What is the value of spam[int(int('3' * 2) / 11)]?
Ans3.
spam[int(int('3' * 2) / 11)] that gives us spam[3],
and spam[3] = 'd'




4. What is the value of spam[-1]?
Ans4.
spam[-1] = 'd'



5. What is the value of spam[:2]?
Ans5.
spam[:2] = ['a', 'b']



Let's pretend bacon has the list [3.14, 'cat', 11, 'cat', True] for the next three questions.

6. What is the value of bacon.index('cat')?
Ans6.
bacon = [3.14, 'cat', 11, 'cat', True]
bacon.index('cat')

Output: 1



7. How does bacon.append(99) change the look of the list value in bacon?
Ans7.
bacon.append(99)
bacon

Output:
[3.14, 'cat', 11, 'cat', True, 99]



8. How does bacon.remove('cat') change the look of the list in bacon?
Ans8.
bacon = [3.14, 'cat', 11, 'cat', True, 99]
bacon.remove('cat')
bacon

Output:
[3.14, 11, 'cat', True, 99]



9. What are the list concatenation and list replication operators?
Ans9.
List concatrnation operator is +.
List Replication operator is * .




10. What is difference between the list methods append() and insert()?
Ans10.
Adding an item at the end of the list we use append()
eg:
bacon = [3.14, 11, 'cat', True, 99]
bacon.append('dog')
bacon

Output:
[3.14, 11, 'cat', True, 99, 'dog']

Adding an item to a specified position we use insert()
eg:
bacon = [3.14, 11, 'cat', True, 99, 'dog']
bacon.insert(2, 'lion')
bacon

Output:
[3.14, 11, 'lion', 'cat', True, 99, 'dog']



11. What are the two methods for removing items from a list?
Ans11.
pop() and remove() are the two methods for removing items from a list, pop() uses index number while remove() uses
item name.



12. Describe how list values and string values are identical.
Ans12.
Both strings and lists have lengths: a string's length is the number of characters in the string; a list's length is the number of items in the list. Each character in a string as well as each item in a list has a position, also called an index, both are  concatenated or replicated.



13. What's the difference between tuples and lists?
Ans13.
The main difference between lists and tuples is that lists are mutable that is in lists we can add, remove and change the value anytime while tuples are immutable the values cannot be changed.

List1 = []
Tuple1 = ()



14. How do you type a tuple value that only contains the integer 42?
Ans14.
Tuple2 = (42)



15. How do you get a list value's tuple form? How do you get a tuple value's list form?
Ans15.
tuple() function:
fruits = [1,2,3,4,5,6]
fruits = tuple(fruits)
fruits

Output:
(1, 2, 3, 4, 5, 6)

list() function:
fruits = (1, 2, 3, 4, 5, 6)
fruits = list(fruits)
fruits

Output:
[1, 2, 3, 4, 5, 6]



16. Variables that "contain" list values are not necessarily lists themselves. Instead, what do they
    contain?
Ans16.
Variables will contain references to list values rather than list values themselves. But for strings and integer values, variables simply contain the string or integer value.



17. How do you distinguish between copy.copy() and copy.deepcopy()?
Ans17.
copy.copy() can be used to make a duplicate copy of a mutable value like a list, not just a copy of a reference.
If the list you need to copy contains lists, then use the copy.deepcopy() function instead of copy.copy().
The deepcopy() function will copy these inner lists as well.

