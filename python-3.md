# List and Tuple

List and Tuple are similar classes. Both of them can have any type of objects in it. In order to make List use [] or list() function. In order to make Tuple, use tuple() function or comma + ().
Python does not support array (without external library). List is used where array is required in *C*.

```
    >>> list_x = []
    >>> list_x = list()
    >>> list_x = [1,2,3]
    >>> tuple_x = (1,2,3)
    
    >>> tuple_x = tuple(range(5))
    >>> tuple_x
    (0, 1, 2, 3, 4)
    >>> list_x = list(tuple_x)
    >>> list_x
    [0, 1, 2, 3, 4]
    
    >>> tuple_x = (1)
    >>> type (tuple_x)
    <class 'int'>
    >>> tuple_x = (1,)
    >>> type (tuple_x)
    <class 'tuple'>
```

## Mutable and Immutable

The difference of Tuple and List is that List is **Mutable**(changeable), but Tuple is **Immutable**(Not changeable).  
When copying list, care must be taken. *list_new = list_old* just refers same object, so modification to one will affect another. In order to avoid that condition, use copy() method or slice.

```
    >>> list_x[0] = 10
    >>> list_x
    [10, 2, 3]
    >>> tuple_x[0] = 10
    Traceback (most recent call last):
      File "<stdin>", line 1, in <module>
    TypeError: 'tuple' object does not support item assignment
    >>> list_x = [tuple_x, [1,2,3], ['x','yy','zzz'],'abc']
    >>> list_x
    [(1, 2, 3), [1, 2, 3], ['x', 'yy', 'zzz'], 'abc']

    >>> list_old = [1,2,3]
    >>> list_new = list_old
    >>> id (list_old)
    140167209246856
    >>> id (list_new)
    140167209246856
    >>> list_new.append(4)
    >>> list_old
    [1, 2, 3, 4]
    
    >>> list_new = list_old.copy()
    >>> id (list_new)
    140167209238408
    
    >>> list_new = list_old[:]
    >>> id (list_new)
    140167166761736
```

## Index and Slice

Like String, Tuple and List support Index and Slice.

```
    >>> list_x
    [(1, 2, 3), [1, 2, 3], ['x', 'yy', 'zzz'], 'abc']
    >>> list_x[:2]
    [(1, 2, 3), [1, 2, 3]]
    >>> list_x[-1]
    'abc'
    >>> tuple_x[:]
    (1, 2, 3)
```

## Membership test

Like String, Tuple and List support **in** and **not in**

```
    >>> list_x = [1,2,3]
    >>> 2 in list_x
    True
    >>> 4 in list_x
    False
    >>> tuple_x = ('a','b','c')
    >>> 'x' not in tuple_x
    True
    >>> 'c' not in tuple_x
    False
```

## List Comprehensions

List Comprehenstions are often used in order to initialize. Its basic format is as follows. **If** statement is optional.

```
list_item = [expression  for ... if ...]
```

Example:

```
    >>> list_x = [ [] for i in range(5)]
    >>> list_x
    [[], [], [], [], []]

    >>> list_x = [i for i in range(5)]
    >>> list_x
    [0, 1, 2, 3, 4]
    >>> list_x = list(range(5))
    >>> list_x
    [0, 1, 2, 3, 4]

    >>> list_x = [i**2 for i in range(5) if i % 2 != 0]
    >>> list_x
    [1, 9]

    >>> tuple_x = tuple(i for i in range(5))
    >>> tuple_x
    (0, 1, 2, 3, 4)
```

## List manipulation


### Add item in List

append() method is used to add 1 item to list. extend() method and *+=* operator are used to concatenate 2 lists. insert() method is used to insert at specific offset(position).

```
    >>> list_x
    [1, 9]

    >>> list_x.append(25,36)
    Traceback (most recent call last):
      File "<stdin>", line 1, in <module>
    TypeError: append() takes exactly one argument (2 given)

    >>> list_x.append(25)
    >>> list_x
    [1, 9, 25]

    >>> list_y = [36,49]
    >>> list_x.extend(list_y)
    >>> list_x
    [1, 9, 25, 36, 49]

    >>> list_x += list_y
    >>> list_x
    [1, 9, 25, 36, 49, 36, 49]

    >>> list_x.insert(3,100)
    >>> list_x
    [1, 9, 25, 100, 36, 49, 36, 49]
    >>> 
```

### Remove item from List

**del** statement is used to remove an item at specific position. removed() method is used to removed specific value. pop() method is similar to **del** statement, but returns value of removed item.

```
    >>> del list_x[3]
    >>> list_x
    [1, 9, 25, 36, 49, 36, 49]
    >>> list_x.remove(9)
    >>> list_x
    [1, 25, 36, 49, 36, 49]
    >>> list_x.remove(36)
    >>> list_x
    [1, 25, 49, 36, 49]
    >>> list_x.pop()   # default offset of pop() is -1: Last item
    49
    >>> list_x.pop(1)
    25
    >>> list_x
    [1, 49, 36]
```

# Dictionary and Set

Dictionary and Set are similar to List. Both of them are **Mutabal**. Dictionary uses **Key** to access its items. Set is similar to List without duplicate item.

```
    >>> dict_x = {}
    >>> type(dict_x)
    <class 'dict'>
    
    >>> dict_x = dict()
    >>> dict_x
    {}
    
    >>> dict_x = {1:'a',2:'b',3:'c'}
    >>> dict_x
    {1: 'a', 2: 'b', 3: 'c'}
    >>> dict_x[1]
    'a'
    
    >>> dict_x[5] = 'EEE'
    >>> dict_x
    {1: 'a', 2: 'b', 3: 'c', 5: 'EEE'}
    >>> dict_x['a'] = 100
    >>> dict_x
    {'a': 100, 1: 'a', 2: 'b', 3: 'c', 5: 'EEE'}


    >>> set_x = {'a','b','c','d','a','b','c','x','y','z'}
    >>> set_x
    {'c', 'a', 'x', 'b', 'd', 'z', 'y'}
    >>> str_x = '1234xyz123'
    >>> set_x = set(str_x)
    >>> set_x
    {'1', 'x', '3', '4', 'z', '2', 'y'}

    >>> medal_a = ['gold', 'silver']
    >>> medal_b = ['silver', 'bronze']
    >>> medal_a + medal_b
    ['gold', 'silver', 'silver', 'bronze']
    >>> set(medal_a + medal_b)
    {'gold', 'silver', 'bronze'}
```

Like List, Dictionary and Set support many operations and method.

```
    >>> dict_a = {1:'gold', 2:'silver'}
    >>> dict_b = {3:'bronze', 4:'iron'}
    >>> dict_a.extend(dict_b)
    Traceback (most recent call last):
      File "<stdin>", line 1, in <module>
    AttributeError: 'dict' object has no attribute 'extend'
    >>> dict_a.update(dict_b)
    >>> dict_a
    {1: 'gold', 2: 'silver', 3: 'bronze', 4: 'iron'}
    
    >>> 1 in dict_a
    True
    >>> 'gold' in dict_a
    False
    
    >>> del dict_a[4]
    >>> dict_a
    {1: 'gold', 2: 'silver', 3: 'bronze'}
    >>> list(dict_a.keys())
    [1, 2, 3]
    >>> list(dict_a.values())
    ['gold', 'silver', 'bronze']
    >>> list(dict_a.items())
    [(1, 'gold'), (2, 'silver'), (3, 'bronze')]
    
    >>> dict_x = dict_a
    >>> id(dict_a)
    140167216987720
    >>> id(dict_x)
    140167216987720
    >>> dict_a[5] = 'metal'
    >>> dict_x
    {1: 'gold', 2: 'silver', 3: 'bronze', 5: 'metal'}
    
    >>> dict_x = dict_a.copy()
    >>> id(dict_x)
    140167209951752
    >>> del dict_a[3]
    >>> dict_x
    {1: 'gold', 2: 'silver', 3: 'bronze', 5: 'metal'}
    >>> dict_a
    {1: 'gold', 2: 'silver', 5: 'metal'}
    
    >>> 'gold' in dict_a.keys()
    False
    >>> 'gold' in dict_a.values()
    True
```

As for Set, *Product(AND), Union(OR), Exclusive OR(XOR), and Difference* can be easily calculated. Superset/Subset evaluation is also supported.

 
```
    >>> set_a = {1,2,3,'a','b','c'}
    >>> set_b = {1,2,3,'x','y','z'}

    >>> set_a & set_b
    {1, 2, 3}

    >>> set_a | set_b
    {1, 2, 3, 'z', 'c', 'y', 'a', 'x', 'b'}

    >>> set_a - set_b
    {'b', 'a', 'c'}
    >>> set_b - set_a
    {'z', 'x', 'y'}

    >>> set_a ^ set_b
    {'z', 'x', 'c', 'y', 'b', 'a'}

    >>> set_a > set_b
    False
    >>> set_b > set_a
    False
    >>> set_c = {1,2,3}
    >>> set_a > set_c
    True
    >>> set_c >= set_c
    True
```

