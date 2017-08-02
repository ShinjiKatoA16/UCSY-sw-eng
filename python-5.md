# I/O

## Oridinary File I/O
Similar to fopen() in *C*, `open() close() read() write() seek()` are supported, except these function calls, `readline() readlines()` are supported.
Text file can be read using iterator, may be it is more common.

### open()
fileobj = *open(filename, mode)*
mode is a string of length 1 or 2. First character means type of operations.

- r: Read
- w: Write
- x: Write only if the file is not exist
- a: Append

Second character means file type, if not specified it's text file.

- b: Binary
- t: Text (Default)


### File read using iteration
```
    # Read 1 line per loop and print using iteration
    # New Line (0x0a) is added at the end of each line of input, 
    
    f = open('yyy.py','r')
    for text in f:
        print(text, end='')
    f.close()
    
    
    ========================= RESTART: /home/kato/yyy.py =====================
    # Read 1 line per loop and print using iteration
    # New Line (0x0a) is added at the end of each line of input, 
    
    f = open('yyy.py','r')
    for text in f:
        print(text, end='')
    f.close()
```

## Reading from stdin
`input()` function and file handle: `sys.stdin` can be used. `input()` removes new line(0x0a), sys.stdin() seems to be easier to handle redirected stdin. input() can display message, so it better to use at interactive operation.


```
    #!/usr/bin/python3
    # -*- coding: utf-8 -*-
    import sys
    
    print('1st line', sys.stdin.readline(), end='')   # print 1st line
    
    # print 2nd line and later
    for text in sys.stdin:
        print(text, end='')
    
```

Output of above program. (printing itself)
```
    kato@katoB502E:~$ python3 zzz.py <zzz.py
    1st line #!/usr/bin/python3
    # -*- coding: utf-8 -*-
    import sys
    
    print('1st line', sys.stdin.readline(), end='')   # print 1st line
    
    # print 2nd line and later
    for text in sys.stdin:
        print(text, end='')
    
```

## Writing to stderr
print() function support file object as a parameter.

```
    #!/usr/bin/python3
    # -*- coding: utf-8 -*-
    import sys
    
    print('This message is written to stderr', file=sys.stderr)
    print('2nd line', file=sys.stderr)
```
    
Output of above program.
```
    kato@katoB502E:~$ python3 prt_stderr.py 
    This message is written to stderr
    2nd line
    kato@katoB502E:~$ python3 prt_stderr.py 2>stderr.txt
    kato@katoB502E:~$ cat stderr.txt
    This message is written to stderr
    2nd line
```

## Structured text file

Python supports some common structured file such as CSV, XML, HTML, JSON, YAML.
In ordert to use them, modules need to be imported.

## Structured binary file

Python supports some common structured binary file as well. Such as Excel, SQL.


## Pickle

Python can serialized every data structure to binary format, which can be saved as a binary file.

Program to write pickled data.
```
    #!/usr/bin/python3
    # -*- coding: utf-8 -*-
    import pickle
    
    p_file = open('pickled.bin', 'wb')
    
    list_data = [x for x in range(10)]
    print('list data:', list_data)
    bin_data = pickle.dump(list_data, p_file)
    p_file.close()
```

Program to read pickled data.
```
    #!/usr/bin/python3
    # -*- coding: utf-8 -*-
    import pickle
    
    p_file = open('pickled.bin', 'rb')
    
    restored_list = pickle.load(p_file)
    p_file.close()
    
    print('restored list data:', restored_list)
```

Result
```
    kato@katoB502E:~$ python3 pickle_r.py 
    restored list data: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
```
