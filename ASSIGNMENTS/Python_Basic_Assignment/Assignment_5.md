1. What does an empty dictionary's code look like?
Ans1.
An empty dictionary's code look like two curly brackets:
 {}



2. What is the value of a dictionary value with the key 'foo' and the value 42?
Ans2.
It looks like this:
Dictionary = {'foo': 42}



3. What is the most significant distinction between a dictionary and a list?
Ans3.
The most significant distinction is that lists are ordered while dictionaries are unorderd.
eg:
List1 = ['banana', 'mango', 'apple'] and List2 = ['mango', 'apple', 'banana']
these are two different lists.

Dic1 = {"brand": "Ford","model": "Mustang","year": 1964}
and Dic2 = {"model": "Mustang", "year": 1964, "brand": "Ford" }
these two dictionaries are same.



4. What happens if you try to access spam['foo'] if spam is {'bar': 100}?
Ans4.
We will get a KeyError because spam['foo'] is not present in dictinary.



5. If a dictionary is stored in spam, what is the difference between the expressions 'cat' in spam and 'cat' in spam.keys()?
Ans5.
There is no difference:
spam = {'cat' : 123}
'cat' in spam

and

'cat' in spam.keys()

both gives same output:
True
because both checks the key 'cat' present in dictionary.




6. If a dictionary is stored in spam, what is the difference between the expressions 'cat' in spam and 'cat' in spam.values()?
Ans6.
'cat' in spam checks for a 'cat' key in the dictionary, and 'cat' in spam.values() checks if there is a value 'cat' for one of the keys in spam.



7. What is a shortcut for the following code?
   if 'color' not in spam:
   spam['color'] = 'black'
Ans7.
spam.setdefault('color', 'black')



8. How do you "pretty print" dictionary values using which module and function?
Ans8.
import the pprint module and functions:
pprint() and pformat().
