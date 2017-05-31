# Installing Python
Python2 and Python3 are included in Ubuntu desktop.

# Installing Python package
Python packages such as numpy can be installed using PIP. It is installed in
each user's environment, so sudo is not necessary.

````
   $ python3 -m pip install numpy matplotlib 
````

# Installing development envrironment for Python
* IDLE (IDLE3): light weight IDE (Integrated develoment environment), recommended for beginners.
* Pycharm, Eclipse: heavy and feature rich IDE, may be JAVA programmers like these
* vim or emacs: Many professional programmers prefer either of these editors. Atom is becoming popular these days.

I would like to recommend IDLE to beginners and VIM to advanced level. VIM or
emacs is almost mandatory when reading Linux kernel source code.

## Python setup for VIM
* Create (or update) ~/.vimrc to include following lines. As for .vimrc, there are many samples and "know how" in web sites, please customize as you like.

````
    autocmd FileType python setl autoindent
    autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
    autocmd FileType python setl tabstop=8 expandtab shiftwidth=4 softtabstop=4
    au BufNewFile *.py 0r ~/.pyheader
````

* Create ~/.pyheader which contains default header
````
    #!/usr/bin/python3
    #-*- coding: utf-8 -*-
````

# Anaconda
- Can be downloaded from Continuum <https://www.continuum.io/downloads>
- All-in-One package (library, package management, virtual environment management, IDE(spyder) )
- Windows/Mac/Linux version are available
- Package management is done by `conda` instead of `pip`
