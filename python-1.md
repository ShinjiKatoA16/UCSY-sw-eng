# Python 1st step

## Interactive shell
Enter `python3` at console, python's prompt **>>>** will apear. Interactive mode can be exited using quit() or Ctrl-D.

```
    $ python3
    >>>
```

Enter `print(1)` then enter. Python displays 1. Enter print('hello'). Python displays hello.

```
    >>> print(1)
    1
    >>> print('hello')
    hello
    >>> 
```

## File edit and execute in bash console
- Create following file using text editor or idle3 (file name: test1.py)

```
    #!/usr/bin/python3
    
    print(1)
    print('hello')
```

- Execute the program `python3 test1.py`
- Change the mode of the test1.py (chmod +x)
- Execute the program `./test1.py`
- Try `chmod 111` `chmod 500` `chmod 050` `sudo chown root:yourgroup`
- Remove 1st Line(#!/usr/bin/python3) and execute again, what happens ?
```
    $ vim test1.py
    $ python3 test1.py 
    $ ls -l test1.py
    $ ./test1.py
    $ chmod +x test1.py
    $ ls -l test1.py
    $ ./test1.py
    $ chmod 111 test1.py
    $ ./test1.py
        ...
    $ vim test1.py
    $ python3 test1.py 
    $ ./test1.py
```

# Branch and Loop
## if elif elif.... else
Conditional branch can be written with if ... elif ... elif... else ...  
elif and else are optional.

```
if 1 > 2:
    print ('1>2')
    print ('if... shall never be executed')
elif 1 == 2:
    print ('1==2')
    print ('elif1.. shall never be executed')
elif 1 == 3:
    print ('1==3')
    print ('elif2.. shall never be executed')
elif 1 == 1:
    print ('1==1')
    print ('elif3.. OK')
else:
    print ('else... shall never be executed')
```

## While Loop
In the interactive shell, enter `help()` then check the usage of print, while

```
count = 0
while i < 5:
    count = i+1           # block is defined by indent
    print ('hello',count) # 1 block need to be same indent
print ('good bye')  # this will be printed once
```


## For Loop
In the interactive shell, enter `help()` then check the usage of  for, range.

```
for count in range(5):  # for count in (0,1,2,3,4)
    print ('hello',count+1)
print ('good bye')  # this will be printed once
```


# Programming hands on
Use idle3 or text editor to edit program and execute.

## Write the program to show from 1 to 10 vertically

```
    1
    2
    3
    4
    5
    6
    7
    8
    9
    10
```

## Write the program to show from 1 to 10 horizontally
hint: 'end=' option of print()

```
    1 2 3 4 5 6 7 8 9 10
```

## Write the program to show following output

```
    1x1= 1 2x1= 2 3x1= 3 4x1= 4 5x1= 5 6x1= 6 7x1= 7 8x1= 8 9x1= 9
    1x2= 2 2x2= 4 3x2= 6 4x2= 8 5x2=10 6x2=12 7x2=14 8x2=16 9x2=18
    1x3= 3 2x3= 6 3x3= 9 4x3=12 5x3=15 6x3=18 7x3=21 8x3=24 9x3=27
    1x4= 4 2x4= 8 3x4=12 4x4=16 5x4=20 6x4=24 7x4=28 8x4=32 9x4=36
    1x5= 5 2x5=10 3x5=15 4x5=20 5x5=25 6x5=30 7x5=35 8x5=40 9x5=45
    1x6= 6 2x6=12 3x6=18 4x6=24 5x6=30 6x6=36 7x6=42 8x6=48 9x6=54
    1x7= 7 2x7=14 3x7=21 4x7=28 5x7=35 6x7=42 7x7=49 8x7=56 9x7=63
    1x8= 8 2x8=16 3x8=24 4x8=32 5x8=40 6x8=48 7x8=56 8x8=64 9x8=72
    1x9= 9 2x9=18 3x9=27 4x9=36 5x9=45 6x9=54 7x9=63 8x9=72 9x9=81
```

# Github
Save your programs in your github project.

1. Copy test program in your local depository directory
1. Execute `git status`
1. Execute `git add mul99.py`
1. Execute `git status`
1. Execute `git commit mul99.py -m "comment for this commit"`
1. Execute `git status`
1. Execute `git push`

