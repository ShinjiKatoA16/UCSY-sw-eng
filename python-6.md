# Library

Python's base package does not contain *everything*, but has a lot of external libraries such as os, sys, math. Library can be imported using `import` command.

```
    >>> import math
    >>> print(math.pi)
    3.141592653589793
```

Using os module, file and directory can be manupilated, so script can be written using Python.

```
    import os
    from os.path import join, getsize
    for root, dirs, files in os.walk('/home/kato/src/python'):
        print(root, "consumes", end=" ")
        print(sum(getsize(join(root, name)) for name in files), end=" ")
        print("bytes in", len(files), "non-directory files")
        if '.git' in dirs:
            dirs.remove('.git')  # don't visit git directories
    
    ========================= RESTART: /home/kato/xxx.py =========================
    /home/kato/src/python consumes 499573 bytes in 37 non-directory files
    /home/kato/src/python/icpc2016ucsy consumes 42702 bytes in 32 non-directory files
    /home/kato/src/python/ps6 consumes 484706 bytes in 3 non-directory files
    /home/kato/src/python/hmyau99 consumes 1838 bytes in 4 non-directory files
```


## Reuse program as a module
If main routine starts with `if __name__ == '__main__':`, it is not executed if it is imported from other module, so its function can be used from other module easily.

```
    ##
    ##  Main routine
    ##
    if __name__ == '__main__':
        tc = TestCase()
        tc.t = int(sys.stdin.readline())
    
        for i in range(tc.t):
            solve(tc)
```

# Numpy

For detail, please read [Numpy overview](https://docs.scipy.org/doc/numpy/)  
Numpy is a very important library in order to manipulate large array data. **ndarray** object is the core of the Numpy. Which is fixed size array of same data type. **ndarray** object has size and dimention, calculation of **ndarray** can be written simply.

For example, if we need the result of multiply of 2 dimentional array. The code of *C* is like this one.

```
    for (i = 0; i < rows; i++): {
      for (j = 0; j < columns; j++): {
        c[i][j] = a[i][j]*b[i][j];
      }
    }
```

With *Numpy*, same code can be written like this.

```
    c = a*b
```

## Numpy array creation

### Converting Python array-like Objects

```
    >>> import numpy as np
    >>> x = np.array([0,1,2,3])
    >>> x
    array([0, 1, 2, 3])
    >>> type(x)
    <class 'numpy.ndarray'>
    >>> x.dtype
    dtype('int64')
    >>> x.shape
    (4,)
```

### Intrinsic NumPy Array creation

NumPy has built-in functions creating array from scratch.  
*zeros(shape)* create array filled with 0 value with specific dimentional shape. The default dtype is float64.  
*ones(shape)* create array filled with 1.  
*arange()* create array with regularly incrementing values.  
*linspace()* create array with specific number of elements, and spaced equally between the specified beggining and end value.


```
    >>> np.zeros(3)
    array([ 0.,  0.,  0.])
    >>> np.ones((3,4))
    array([[ 1.,  1.,  1.,  1.],
           [ 1.,  1.,  1.,  1.],
           [ 1.,  1.,  1.,  1.]])
    >>> np.zeros((3,4,5))
    array([[[ 0.,  0.,  0.,  0.,  0.],
            [ 0.,  0.,  0.,  0.,  0.],
            [ 0.,  0.,  0.,  0.,  0.],
            [ 0.,  0.,  0.,  0.,  0.]],
    
           [[ 0.,  0.,  0.,  0.,  0.],
            [ 0.,  0.,  0.,  0.,  0.],
            [ 0.,  0.,  0.,  0.,  0.],
            [ 0.,  0.,  0.,  0.,  0.]],
    
           [[ 0.,  0.,  0.,  0.,  0.],
            [ 0.,  0.,  0.,  0.,  0.],
            [ 0.,  0.,  0.,  0.,  0.],
            [ 0.,  0.,  0.,  0.,  0.]]])
    >>> np.arange(10)
    array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
    >>> np.arange(2,3,0.1)
    array([ 2. ,  2.1,  2.2,  2.3,  2.4,  2.5,  2.6,  2.7,  2.8,  2.9])
    >>> np.linspace(1,4,6)
    array([ 1. ,  1.6,  2.2,  2.8,  3.4,  4. ])
```
