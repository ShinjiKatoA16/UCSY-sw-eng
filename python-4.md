# Class and Object(Instance)

Every objects includeing Integer or String are member(Instance) of Class. The behavior of the objects are identified by their Class. For example, *+* operator returns sum of numeric value (Integer of Float), also returns  concatenated string if operands are string.  
Class may have **methods**. As we saw before, String and List have many methods. **Methods** are functions that related to their Class.  
Pythons's Class support *Inheritance*, when you make your own class, you can specify its perant class.

In a comparison of C++, the Class of Python is not so strict. Private data/method are not supported (but Mangling is possible by attaching **__** before variable name). Data(attribute) which is not defined in Class can be added.


```
    >>> class MyClass():
    ...    pass
    
    ... 
    >>> x = MyClass()
    >>> type(x)
    <class '__main__.MyClass'>
    >>> x.data1 = 123
    >>> x.data2 = 'string'
    >>> x.data3 = [1,2,3]
    >>> x
    <__main__.MyClass object at 0x7f45dd79c518>
    >>> x.data3
    [1, 2, 3]
    >>> x.__dict__
    {'data1': 123, 'data2': 'string', 'data3': [1, 2, 3]}
    
    
    >>> class MyClass2():
    ...    def __init__(self):   ## typical constructor
    ...       self.x = 1
    ...       self.y = 'abc'
    
    ... 
    >>> x = MyClass2()
    >>> x.x
    1
    >>> x.y
    'abc'
    >>> x.x = 2
    >>> x.x
    2
    
    
    >>> class MyClass3():
    ...     def __init__(self,x,y):
    ...         self.x = x
    ...         self.y = y
    
    ... 
    >>> x = MyClass3(100,'xyz')
    >>> x.x
    100
    >>> x.y
    'xyz'
    >>> class MyClass31(MyClass3):
    ...     def show_dict(self):
    ...         print(self.__dict__)
    ... 
    >>> y = MyClass31('abcd',1024)
    >>> y.show_dict()
    {'y': 1024, 'x': 'abcd'}
    
    
    class MyClass4():
        ## Class variable
        instance_count = 0
    
        def __init__(self):
            MyClass4.instance_count += 1
            self.my_id = MyClass4.instance_count
            self.__my_id = MyClass4.instance_count
    
        def get_id(self):
            return self.__my_id
    
    
    print (MyClass4.instance_count)
    
    x = MyClass4()
    y = MyClass4()
    
    print(x.get_id())
    print(y.get_id())
    print(x.my_id)
    print(x.__my_id)
    
    ========================= RESTART: /home/kato/xxx.py =====================
    0
    1
    2
    1
    Traceback (most recent call last):
      File "/home/kato/xxx.py", line 22, in <module>
        print(x.__my_id)
    AttributeError: 'MyClass4' object has no attribute '__my_id'
```

# Function

Keyword **def** is used to define Function (sub routine). Function can return any class object (interger, string, list, user defined class...). If returned value is not specified explicitly *None* is returned.

```
    >>> def f():
    ...    print('Function f()')
    ... 
    >>> f()
    Function f()
    >>> x = f()
    Function f()
    >>> type(x)
    <class 'NoneType'>
```

## Parameter of Function

### Positional Arguments

Like *C*, argument can be passed with position.

```
    >>> def sub(first,second):
    ...    print(1, first)
    ...    print(2, second)
    ... 
    >>> sub (100,200)
    1 100
    2 200
```

### Keyword Arguments

Python supports keyword aurgument.


```
    >>> def sub(first,second):
    ...    print(1, first)
    ...    print(2, second)
    ... 
    >>> sub (second=1000,first=5)
    1 5
    2 1000
```

### Default Parameters value

Functions can have default parameter value, if arguments are not specified, the default parameter values are used.

```
    >>> def sub(a=100, b=200, c=300):
    ...    print (a,b,c)
    ... 
    
    >>> sub()
    100 200 300
    >>> sub(1)
    1 200 300
    >>> sub(,3)
      File "<stdin>", line 1
        sub(,3)
            ^
    SyntaxError: invalid syntax
    >>> sub(b=3)
    100 3 300
```

### Variable length parameter

Asterisk \* in parameter list shows that the parameter may be multiple parameters. It will be treated as a Tuple in the Function.


```
    >>> def print_args(*args):
    ...    print ("Args:", args)
    ... 
    
    >>> print_args()
    Args: ()
    >>> print_args(1)
    Args: (1,)
    >>> print_args(1,2)
    Args: (1, 2)
    >>> print_args(1,2,'three')
    Args: (1, 2, 'three')
    >>> print_args(['a','b'],1,2,'three')
    Args: (['a', 'b'], 1, 2, 'three')
```

### Retrieving Keyword arguments as a dictionary

Functions can accept Keyword arguments as 1 dictionary parameter using 2 asterisk \*\*. 


```
    >>> def print_kwargs(**kwargs):
    ...    print("Args:", kwargs)
    ...    print(type(kwargs))
    ... 
    
    >>> print_kwargs(wine='Melrot', entree='mutton', dessart='macaroon')
    Args: {'entree': 'mutton', 'wine': 'Melrot', 'dessart': 'macaroon'}
    <class 'dict'>
```

## Lambda Function

Python supports Lambda, which is a function of just 1 line, without Function name. In general, this will increase complexity, and not recommended to rely on it.


```
   def pass_to_func(arg, func):
       print (func(arg))
   
   def same_as_lambda(x):
       return x+1
   
   pass_to_func(100, lambda x: x+1)
   pass_to_func(100, same_as_lambda)
   
   ========================= RESTART: /home/kato/xxx.py =====================
   101
   101
   >>> 
```
# Name space and Scope

Each Function has its own Name Space. Variables in main routine are *Global variables* and can be referred from Functions, but **NOT changeable**.
Builtin function *locals()* nad *globals()* can be used to check the variables in each Name space.


```
    ## x in f() and main routine refers different object
    def f():
        x = 1
        print('x is',x)
        print('ID of x in f()',id(x))
    
    
    x = 100
    f()
    print('ID of x in main',id(x))
    
    ========================= RESTART: /home/kato/xxx.py =====================
    x is 1
    ID of x in f() 10914368
    ID of x in main 10917536
    >>>
    
    
    ## x in f() refers Global variable
    def f():
        print('x is',x)
        print('ID of x in f()',id(x))
    
    
    x = 100
    f()
    print('ID of x in main',id(x))
    
    ========================= RESTART: /home/kato/xxx.py ====================
    x is 100
    ID of x in f() 10917536
    ID of x in main 10917536
    >>>
    
    ## This test wil fail, because Global variable is not changeable
    def f():
        x += 1
        print('x is',x)
        print('ID of x in f()',id(x))
    
    
    x = 100
    f()
    print('ID of x in main',id(x)
    
    ========================= RESTART: /home/kato/xxx.py =====================
    Traceback (most recent call last):
      File "/home/kato/xxx.py", line 9, in <module>
        f()
      File "/home/kato/xxx.py", line 3, in f
        x += 1
    UnboundLocalError: local variable 'x' referenced before assignment
    >>> 
```
