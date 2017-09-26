# Debugging with pdb

When you debug using debugger, take care of stdin. Redirection of stdin may be handled by the debugger.
In order to avoid that condition, passing input file name as a argument of the program is one of the solution.
Following example reads the input from stdin, if argument is not specified. (File redirection is handled by SHELL, '< input_file_name' is not passed to the program as a argument.

```
##
##  Main routine
##
if __name__ == '__main__':
    tc = TestCase()
    args = sys.argv
    if len(args) < 2:
        tc.infile = sys.stdin
    else:
        tc.infile = open(args[1], 'r')
```

Official document is [pdb Tye Python Debugger](https://www.digitalocean.com/community/tutorials/how-to-use-the-python-debugger)

Following Homepage have easy explanation.

- <https://pythonconquerstheuniverse.wordpress.com/2009/09/10/debugging-in-python/>
- <https://www.digitalocean.com/community/tutorials/how-to-use-the-python-debugger>


## Simple usage

- ```python3 -m pdb program_name argument```
- In source code, insert ```import pdb``` and ```pdb.set_trace()``` to a break point

```
import pdb

x = [1, 4, 9, 16]

for i in range(len(x)+1):
    pdb.set_trace()
    print(x[i])
```
