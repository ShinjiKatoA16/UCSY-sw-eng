# IPython and jupyter


IPython is an enhanced interactive shell of Python. 
It's better than default Python's shell in auto-completion, help and debugging. (but heavier = slower).
Please refer [IPython official document](http://ipython.readthedocs.io/en/stable/)

jupyter is a web application server program. User can test IPython and write document (called notebook) on web browser.
jupyter is told to be a good tool to study and documentation.

IPython and jupyter are included in Anaconda.

In order to user jupyter, enter
```
$ jupyter notebook (optional: file name of notebook file)
```

## How to check and activate anaconda programs

Check the output of following command
```
$ which python3
```
if it's /usr/bin/python3 (default), the path to Anaconda is not specified. If it's /home/xxx/anaconda3/bin/python3, the path to Anaconda is active.

Create a text file (I named it pathconda), that contains following line (change /home/kato to your home directory).

```
export PATH=/home/kato/anaconda3/bin:$PATH
```


```
$ source ~/pathconda
```
will activate anaconda. If you want to always activate it, modify ~/.bashrc


### jupyter notebook hands on

Please move to the directory where you cloned https://github.com/ShinjiKatoA16/UCSY-sw-eng

```
$ source ~/pathconda
$ git pull
$ jupyter notebook python-1.ipynb
```

Move the directory where you cloned https://github.com/ShinjiKatoA16/icpc2016ucsy

```
$ jupyter notebook HowToSolve-A.ipynb
```


### Changing the color of iPython

Followig command create ipython_config.py in ~/.ipython/profile_default/ directory.
Uncomment colors setting


```
$ ipython profile create


## Set the color scheme (NoColor, Neutral, Linux, or LightBG).
#c.InteractiveShell.colors = 'Neutral'
```
