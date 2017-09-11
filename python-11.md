# Development Environment

## Editor

Most of the popular editors have setting/plug-in to handle Python program efficiently. In order to enable such feature, customization is required.  
vim and emacs are very powerful editors for programmer, but not easy for beginners. Atom is getting popular these days, but heavy(slow) compare to vim or emacs.

### gedit

There are plug-ins to write/debug python program with gedit. Try and customize your setting if necessary.
As a minimum customization for Python. Following is recommended

- (Menu bar) Edit-> Preferences-> (Editor tab)
    1. Tab width=4
    1. Check insert spaces instead of tabs
    1. Check Enable automatic indentation

### vim

In case of vim, it's possible to change the behavior depending on file type. Add following lines in ~/.vimrc

```
" for Python
autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl tabstop=8 expandtab shiftwidth=4 softtabstop=4
```

### emacs

### atom



## IDE (Integrated development environment)

IDE contains editor and debugger, some of them have refactoring feature. Debugging feature such as "Break Point" or "Step execution" may be useful for beginners.
Some of the IDE feature such as Auto-completion, can be performed in Editors with plug-in.  

It looks like that most IDE does not handle standard I/O redirection, in that case, application program need to open files instead of using stdin/stdout. Following sample opens the file if it is specified in command line argument, otherwise use stdin.

```
if __name__ == '__main__':
    tc = TestCase()
    args = sys.argv
    if len(args) < 2:
        tc.infile = sys.stdin
    else:
        tc.infile = open(args[1], 'r')
```


### idle3

Light weight, but not so much function.

### spyder3

spyder is included in Anaconda (All-in-one package). It's possible to install only spyder using apt command or pip3(Package management tool of Python3) command.
spyder is a one of the popular IDE.

### pycharm

Heavy weight, rich function. 
