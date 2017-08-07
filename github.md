# Why github ?
- Back up
- Version control
- Collaborate with other people
- **Evidence of your work/contribution**

# Online document and training
- Pro Git <https://git-scm.com/book/en/v2>
- Learning Git Branching <http://learngitbranching.js.org/>
- Try Git <https://try.github.io>

# Help
`git help command-name` will show the usage of the commannd-name.

# Simple operation flow (single person, no branch)
## Create new project and local repository
1. Create github account
1. Create new project with README.md and LICENCE
1. at the local computer, move to proper directory then issue "git clone" command. git supports ssh git and http protocols, Using http(https) is easy for small update.

```
    git clone https://github.com/UseName/ProjectName.git
```

## add/commit/push/fetch+merge
1. Create or Modify file
1. Issue `git add` command, this command tells to git that the change of the file will be commited (STAGE)
1. If related modification is made, issue `git commit` command to confirm the change. Local commit can be easily restored, so it's not necessary to be so nervous.
1. Test the code.
1. issue `git push` command to synchronize the local and remote (github) repository.
1. If file is updated on github, issue `git fetch` command to retrieve, and `git merge origin/master` to synchronize the local and remote (github) repository.
    + master  (local master repository)
    + origin/master (copy of remote(github) master repository)
1. Issue `git status` command to check update/STAGE, `git log`/`git reflog` command to check commit history.


# (Optional) Operation flow to initialize repository in local instead of clone
Repository can be made using `git init` command instead of `git clone` command.

1. Create working directory and edit files
1. Issue `git init` command
1. Issue `git add` and `git commit` commmand
1. Issue `git status` command to check if git operation was properly done
1. Repeat edit - `git add` - `git commit`, if necessary
1. Create empty project in Github
1. Issue `git remote add` command to register the Github project as a remote repsitory
1. Issue `git push` command to synchronize

# Branch Operation flow
Assumes that bugfix0123 and feature0031 are to be implemented, but master branchis to be untouched until merge.

1. Create bugfix0123 branch. `git branch bugfix0123`
1. Create feature0031 branch. `git branch feature0031`
1. Switch to bugfix0123 branch. `git checkout bugfix0123`
1. Edit necessary files, `git add`, `git commit` and test in bugfix0123 branch. At this point the modification is not affected to master or feature0031
1. Switch to feature0031 branch. `git checkout feature0031`
1. Edit necessary files, `git add`, `git commit` and test in feature0031 branch. At this point the modification is not affected to master or bugfix0031 
1. Merge bugfix0123 branch
    1. Return to master branch: `git branch master`
    1. Merge branch: `git merge --no-ff bugfix0123`
1. Merge feature0031 branch
    1. Return to master branch: `git branch master`
    1. Merge branch: `git merge --no-ff feature0031`
    1. If conflict occur, edit conflicted file, `git add`, `git commit`
1. Delete bugfix0123 branch. `git branch -d bugfix0123`

## Restore to previous commit

```
    kato@katoB502E:~/sandbox$ mkdir gittest
    kato@katoB502E:~/sandbox$ cd gittest
    kato@katoB502E:~/sandbox/gittest$ git init
    Initialized empty Git repository in /home/kato/sandbox/gittest/.git/
    kato@katoB502E:~/sandbox/gittest$ vim testfile
    kato@katoB502E:~/sandbox/gittest$ cat testfile
    v0: Initial test file
    kato@katoB502E:~/sandbox/gittest$ git status
    On branch master
    
    Untracked files:
      (use "git add <file>..." to include in what will be committed)
    
    	testfile
    
    nothing added to commit but untracked files present (use "git add" to track)
    kato@katoB502E:~/sandbox/gittest$ git add testfile 
    kato@katoB502E:~/sandbox/gittest$ git commit testfile -m "v0"
    [master (root-commit) a19d4a7] v0
     1 file changed, 1 insertion(+)
     create mode 100644 testfile
    kato@katoB502E:~/sandbox/gittest$ git status
    On branch master
    nothing to commit, working directory clean
    kato@katoB502E:~/sandbox/gittest$ git branch
    * master
    kato@katoB502E:~/sandbox/gittest$ echo v1 new file >>testfile 
    kato@katoB502E:~/sandbox/gittest$ cat testfile 
    v0: Initial test file
    v1 new file
    kato@katoB502E:~/sandbox/gittest$ git commit -a -m "v1"
    [master 837d789] v1
     1 file changed, 1 insertion(+)
    kato@katoB502E:~/sandbox/gittest$ git log
    commit 837d789a719133a98cf4327ba4addf7de0178e03
    Author: Shinji Kato <hole.in1.kato@gmail.com>
    Date:   Thu Aug 3 10:05:42 2017 +0630
    
        v1
    
    commit a19d4a776b3ad52166a9a3bba23809e8a5fd9e9e
    Author: Shinji Kato <hole.in1.kato@gmail.com>
    Date:   Thu Aug 3 10:03:48 2017 +0630
    
        v0
    kato@katoB502E:~/sandbox/gittest$ cat testfile 
    v0: Initial test file
    v1 new file
    kato@katoB502E:~/sandbox/gittest$ git checkout a19d
    Note: checking out 'a19d'.
    
    You are in 'detached HEAD' state. You can look around, make experimental
    changes and commit them, and you can discard any commits you make in this
    state without impacting any branches by performing another checkout.
    
    If you want to create a new branch to retain commits you create, you may
    do so (now or later) by using -b with the checkout command again. Example:
    
      git checkout -b <new-branch-name>
    
    HEAD is now at a19d4a7... v0
    kato@katoB502E:~/sandbox/gittest$ git branch
    * (HEAD detached at a19d4a7)
      master
    kato@katoB502E:~/sandbox/gittest$ cat testfile 
    v0: Initial test file
    kato@katoB502E:~/sandbox/gittest$ git checkout master 
    Previous HEAD position was a19d4a7... v0
    Switched to branch 'master'
    kato@katoB502E:~/sandbox/gittest$ cat testfile 
    v0: Initial test file
    v1 new file
    kato@katoB502E:~/sandbox/gittest$ git branch 
    * master
```


# Pull request Operation flow (good for large community)
This method is considered to be standard, but requires more effort than next one. This kind of overhead needs to be accepted when many people collaborate togather.

1. Login Github site, open the project you want to contribute.
1. Press **Fork** button. It will copy the project in your account.
1. *Clone* the project which you made in your account.
1. In the local repository, make a *Branch* and perform necessary *commit* and test.
1. After confirmeing the change, *Push* to your forked repository.
1. Verify the change at Forked repository
1. Press **Pull Request** button at Github site (your Forked repository)
