# Python 2nd step

## Variables and Data type

In case of C or other compile langueage, variables need to be declared with data type.
In Python, *Object* have data type, variables just refer *Object*. Following sequence is valid in Python.

```
    >>> x = 1
    >>> type(x)
    <class 'int'>
    >>> x = 'x is string now'
    >>> type(x)
    <class 'str'>
```

In the following example, the data of the *Object* which x refered did not change but x refered new *Object*.

```

    >>> x = 1
    >>> id(x)
    10914368
    >>> x += 1
    >>> id(x)
    10914400
    >>> x
    2

```

# Basic(?) Data type

Plese refer **Python3 reference** for detail.

    1. Boolean
    1. Integer
    1. Float
    1. None
    1. String

Except above, Python support Complex as well.

```
    >>> cplx = 0+1j
    >>> cplx ** 2
    (-1+0j)
```


		## Boolean

*True* and *False* are reserved word for Boolean value. Not only Boolean but also other type such as Integer,String or List can be used for True/False check of *if* and *while*.

```
    >>> x = True
    >>> x
    True
    >>> type(x)
    <class 'bool'>
    >>> x = False
    >>> type(x)
    <class 'bool'>
    >>> x = (1==1)
    >>> type(x)
    <class 'bool'>
    >>> x
    True
    >>> x = (1>2)
    >>> x
    False

    >>> 
    >>> def check_true(b):
    ...     if b:
    ...          print(b,"is treated as true")
    ...     else:
    ...          print(b,"is treated as false")
    ... 
    >>> check_true('')
     is treated as false
    >>> check_true(' ')
      is treated as true
    >>> check_true(0.0)
    0.0 is treated as false
    >>> check_true(0.1)
    0.1 is treated as true
    >>> check_true(-2)
    -2 is treated as true
    >>> check_true([])
    [] is treated as false
    >>> check_true([0])
    [0] is treated as true
```

### Boolean operators

**and,or,not** are the reserved words and used as boolean operators. (same as && || ! of *C*)

### Value comparisons
Same as *C*. **>, >=, <, <=, ==, !=** can be used to compare 2 objects. The objects do not need to have the same type (some combination such as Integer and String are not allowed)

### Identity comparisons
The operators **is** and **is not** test for object identity: `x is y` is true if and only if x and y are the same object.
Object identity is determined using the **id()** function. `x is not y` yields the inverse truth value.

```
    >>> x = 'abc'
    >>> y = 'abc'
    >>> x is y
    True
    >>> x += 'd'
    >>> y += 'd'
    >>> x is y
    False
    >>> x == y
    True
    >>> x
    'abcd'
    >>> id (x)
    140163002134320
    >>> id (y)
    140162970400176
```

### Membership test
The operators **in** and **not in** test for membership. x in s evaluates to true if x is a member of s, and false
otherwise. x not in s returns the negation of x in s . All built-in sequences and set types support this as well
as dictionary.

```
    >>> s = 'abc'
    >>> 'x' in s
    False
    >>> 'b' in s
    True
    >>> 'ab' in s
    True
    >>> list = [1,2,3,4]
    >>> 5 in list
    False
    >>> 3 in list
    True
    >>> tuple = ('a','b',3,0.1)
    >>> 0.1 in tuple
    True
    >>> 'c' not in tuple
    True
```


## Integer

0, 100, -10000, 0b1001, 0o664, 0x01a0 etc. The size of integer is **Unlimited** in Python. *int()* function can be used to convert from float or string to integer.

```
    >>> x = 2**1000
    >>> x
    107150860718626732094842504906000181056140481170553360744375038837035105112
    493612249319837881569585812759467291755314682518714528569231404359845775746
    985748039345677748242309854210746050623711418779541821530464749835819412673
    987675591655439460770629145711964776865421676604298316526243868372056680693
    76
```


## Float

0.1, 10e3 etc. The result of the operation of integer and float is float. *float()* function can be used to convert from integer or string to float.


## Numeric operation

**+,-,\*,/,//,%,\*\*** are numerical operators of Python. It's almost same as *C*, except devide (/ and //), and power (\*\*). / always returns float, // returns integer (which will be converted to float, if one of the argument is float). The behavior of // is similar to *C*, but not same for negative result.


```
    >>> 1+1
    2
    >>> x = 1+1
    >>> x
    2
    >>> type(x)
    <class 'int'>
    >>> 3-1
    2
    >>> 4/2
    2.0
    >>> 5//2
    2
    >>> 5//(-2)
    -3
    >>> (-5)//(-2)
    2
    >>> 5//2.0
    2.0
    >>> 2*8
    16
    >>> 5%2
    1
    >>> 2**8
    256
    >>> 2**(1/2)
    1.4142135623730951
```

## None

This type has a single value. There is a single object with this value. This object is accessed through the built-in
name None. It is used to signify the absence of a value in many situations, e.g., it is returned from functions
that don’t explicitly return anything. Its truth value is false.


```
    >>> x = None
    >>> x == True
    False
    >>> x == False
    False

    >>> if x: print ('x is treated as True')
    ... else: print('x is treated as False')
    ... 
    x is treated as False

    >>> def do_nothing():
    ...     return
    ... 
    >>> x = 1
    >>> x = do_nothing()
    >>> x

    >>> type(x)
    <class 'NoneType'>
    >>> id(x)
    10743840
    >>> id(None)
    10743840
```


## String

String can be made using single quate (*'*), double quate(**"**), triple single quate or double quate. str() function converts numeric value to string.  
The biggest difference of String between *C* and *Python* is that the String is **immutable**(not changeable) in Python, and String of Python has its own method.

```
    >>> 'string'
    'string'
    >>> "it's string too"
    "it's string too"
    >>> 'double quatation(") can be written without escape'
    'double quatation(") can be written without escape'
    
    >>> s = 'a\'b\"c'
    >>> s
    'a\'b"c'
    >>> print (s[0],s[1],s[2],s[3],s[4])
    a ' b " c

    >>> '''Triple quatation is OK too'''
    'Triple quatation is OK too'
    >>> """which is usually used to make multiple line
    ... string"""
    'which is usually used to make multiple line\nstring'
```

### docstring

The first string in the module or function is called docstring. It is **strongly** recommended to write docstring. Indent of the quatation need to be alligned.

```
    #!/usr/bin/python3
    # -*- coding: utf-8 -*-
    
    '''
        This is a module docstring
        This program displays number from 1 to 10 horizontally
    '''
    
    def show_num(first,last):
        """
        first: Start number
        last:  End Number - 1
        Return: None
        """
        for i in range(first,last):
            print (i, end = ' ')
    
    show_num(1,11)
```

### Concatenation and Repetation

**+** operator can be used to concatenate strings, **\*** operator can be used to repeat a string.

```
    >>> 'abc'+'xyz'
    'abcxyz'
    >>> 3*'123'
    '123123123'
```

### Indexed reference and Slice

Strings can be indexed (subscripted), with the first character having index 0. There is no separate character type; a character is simply a string of size one:  
In addition to indexing, slicing is also supported. While indexing is used to obtain individual characters, slicing allows you to obtain substring:

```
    >>> word = 'python'
    >>> word[0]
    'p'
    >>> word[1]
    'y'
    >>> word[-1]
    'n'
    >>> word[-2]
    'o'
    >>> word[0:2]
    'py'
    >>> word[2:5]
    'tho'
    >>> word[:2]
    'py'
    >>> word[2:]
    'thon'
    >>> word[:]
    'python'
    >>> word[::2]
    'pto'
```

### Length

The built-in function len() returns the length of a string:

```
    >>> len('Hello world!')
    12
```

### Method

String has many method. See <https://docs.python.org/3.1/library/stdtypes.html#string-methods> for detail.


```
    >>> s = 'test string'
    >>> s.capitalize()
    'Test string'
    >>> s
    'test string'
    >>> s.count()
    Traceback (most recent call last):
      File "<stdin>", line 1, in <module>
    TypeError: count() takes at least 1 argument (0 given)
    >>> s.count('t')
    3
    >>> s.find('str')
    5
    >>> s.find('stx')
    -1
    >>> "1+2= {}".format(1+2)
    '1+2= 3'
    >>> s.islower()
    True
    >>> s.upper()
    'TEST STRING'
    >>> s.split()
    ['test', 'string']
```
