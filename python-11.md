# Development Environment

## Editor

Most of the popular editors have setting/plug-in to handle Python program efficiently. In order to enable such feature, customization is required.  
vim and emacs are very powerful editors for programmer, but not easy for beginners. Atom is getting popular these days, but heavy(slow) compare to vim or emacs.

### gedit

There are plug-ins to write/debug python program with gedit. Try and customize your setting if necessary.
As a minimum customization for Python. Following is recommended

- (Manu bar) Edit-> Preferences-> (Editor tab)
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

IDE contains editor and debugger, some of them have refactoring feature. Debugging feature such as "Break Point" or "Step execution" may be useful for begginers.
Some of the IDE feature such as Auto-completion, can be performed in Editors with plug-in.

### idle3

Light weight, but not so much function.

### spyder3

spyder is included in Anaconda (All-in-one package). It's possible to install only spyder using apt command.
spyder is a one of the popylar IDE.

### pycharm

Heavy weight, rich function. 
