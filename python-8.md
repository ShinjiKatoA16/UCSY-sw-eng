# Iteration, Iterable, Iterator and Generator

The object that is returned from range() function can be converted to a list, but actually, it just returns value one by one. range(1000000) does not preserve memory space for 1000000 integers.  
Any time you use a loop, explicit or implicit, to go over a group of items, that is *iteration*.

*Iterable* is an object that you can get an *Iterator* from. In other word, *Iterable* is an object that has an *__iter__* method which returns *Iterator*. *iter()* function calls *__iter__* method.  

*Iterator* is an object with a *__next__* method. *next()* function calls __next__ method.  

The object such as String or List is an *Iterable*, but not *Iterator*, which can not return element to *next()*.

```
    >>> s = 'abc'
    >>> itr = iter(s)
    >>> next(itr)
    'a'
    >>> next(itr)
    'b'
    >>> next(itr)
    'c'
    >>> next(itr)
    Traceback (most recent call last):
      File "<stdin>", line 1, in <module>
    StopIteration
```

*Iterable* object can be defined using class.

```
    class Reverse:
        """Iterator for looping over a sequence backwards."""
        def __init__(self, data):
            self.data = data
            self.index = len(data)
    
        def __iter__(self):
            return self
    
        def __next__(self):
            if self.index == 0:
                raise StopIteration
            self.index = self.index - 1
            return self.data[self.index]
    
    rev = Reverse('UCSY')
    for c in rev:
        print(c)
    
    ========================= RESTART: /home/kato/xxx.py =========================
    Y
    S
    C
    U
```

## Generator

Generators are a simple and powerful tool for creating iterators. They are written like regular functions but use the *yield* statement whenever they want to return data. Each time next() is called on it, the generator resumes where it left off (it remembers all the data values and which statement was last executed).

```
    def rev_gen(data):
        for index in range(len(data)-1, -1, -1):
            yield data[index]
    
    rev = rev_gen('ucsy')
    for c in rev:
        print(c)
    
    
    >>> 
    ========================= RESTART: /home/kato/xxx.py =========================
    y
    s
    c
    u
```
