# Review-1

## Data conversion

- integer and string can be converted with int() and str() function
- list(iterable-object) function returns list

```
>>> s = '123'
>>> print(int(s)+1)
124
>>> i = 456
>>> print(str(i)*3)
456456456

>>> type(s)
<class 'str'>
>>> type(int(s))
<class 'int'>
>>> type(i)
<class 'int'>
>>> type(str(i))
<class 'str'>
```

## List data

### Empty list

2 ways to create empty list. Personally list() is recommended, because tupple and set can not be made with () or {}.

```
>>> x = []
>>> type(x)
<class 'list'>
>>> y = list()
>>> type(y)
<class 'list'>
```

### Add element

Use append() method to add element to the end of the list

```
>>> x.append(1)
>>> x.append('a')
>>> x
[1, 'a']
```

### Converting from iterable object

List, Tupple, Ditionary, Set and String are iterable object (they can be used at ```for xxx in ...```)


```
>>> s = 'abcd'
>>> x = list(s)
>>> x
['a', 'b', 'c', 'd']
>>> t = (2, 3, 5, 7)
>>> x = list(t)
>>> x
[2, 3, 5, 7]
>>> d = {1:2, 2:3, 3:5, 4:7}
>>> x = list(d)
>>> x
[1, 2, 3, 4]
```

range() and map() function return iterable object. That can be converted to list.


```
>>> x = list(range(4))
>>> x
[0, 1, 2, 3]
>>> m = map(int,('11', '13', '17'))
>>> type(m)
<class 'map'>
>>> x = list(m)
>>> x
[11, 13, 17]
```

### Initialize using List comprehension

```
>>> x = [i**2 for i in range(5)]
>>> x
[0, 1, 4, 9, 16]
```

It can be written like following, but it's necessary to understand because Comprehension is often used. And whether the programmer can use Comprehension is the measure to chech if he/she is a begginer or not :-)


```
>>> x = list()
>>> for i in range(5):
...    x.append(i**2)
... 
>>> x
[0, 1, 4, 9, 16]
```

## Practice

1. Convert following fomula strings to the lists of tokens.

```
'(1+2)*(34+567)'  -> ['(', '1', '+', '2', ')', '*', '(', '34', '+', '567', ')']
```


2. As above, convert numeric token to integer

```
'(987-65)/(-2)' -> ['(', 987, '-', 65, ')', '/', '(', '-', 2, ')']
```
