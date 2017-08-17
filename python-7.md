# Exception

## try except else
It's possible to capture and handle exception in Python program.
If nothing is specified at except:, all exception is caught.
else: statement is executed if exception is not detected in *try:* block.

```
    divider = input("Please enter divider ")
    try:
        x = 1/int(divider)
    except:
        print('Exception is detected')
    else:
        print('x=',x)
    
    print('end of try...')
    
    ========================= RESTART: /home/kato/xxx.py =========================
    Please enter divider 5
    x= 0.2
    end of try...
    >>> 
    ========================= RESTART: /home/kato/xxx.py =========================
    Please enter divider qwerty
    Exception is detected
    end of try...
    >>> 
    ========================= RESTART: /home/kato/xxx.py =========================
    Please enter divider 0
    Exception is detected
    end of try...
```

In general, it's better to specifiy which exception to be handle.
```
    divider = input("Please enter divider ")
    try:
        x = 1/int(divider)
    except ZeroDivisionError:
        print('Zero Divide is detected')
    except ValueError:
        print(divider, 'can not be convert to integer')
    else:
        print('x=',x)
    
    print('end of try...')
    
    
    ========================= RESTART: /home/kato/xxx.py =========================
    Please enter divider 4
    x= 0.25
    end of try...
    >>> 
    ========================= RESTART: /home/kato/xxx.py =========================
    Please enter divider 0
    Zero Divide is detected
    end of try...
    >>> 
    ========================= RESTART: /home/kato/xxx.py =========================
    Please enter divider a
    a can not be convert to integer
    end of try...
```

## assert and raise
It's good practice to trap unexpected condition in the program. Python has **assert** and **raise** to force exception. Usage of them are similar, difference is that **assert** can specify condition and removed if compiled with optimization, so it is purely for debug purpose.

```
    divider = input("Please enter divider ")
    
    assert divider != 'x', "I don't like x"
    
    for c in divider:
        if c not in '0123456789':
            print(divider, 'is not number')
            raise ValueError
            # Following sequece is not executed
    
    try:
        x = 1/int(divider)
    except ZeroDivisionError:
        print('Zero Divide is detected')
    except ValueError:
        print(divider, 'can not be convert to integer')
    else:
        print('x=',x)
    
    print('end of try...')
    
    
    ========================= RESTART: /home/kato/xxx.py =========================
    Please enter divider 1234a45
    1234a45 is not number
    Traceback (most recent call last):
      File "/home/kato/xxx.py", line 6, in <module>
        raise ValueError
    ValueError
    >>> 
    ========================= RESTART: /home/kato/xxx.py =========================
    Please enter divider x
    Traceback (most recent call last):
      File "/home/kato/xxx.py", line 3, in <module>
        assert divider != 'x', "I don't like x"
    AssertionError: I don't like x
```
