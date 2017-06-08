# Why github ?
- Back up
- Version control
- Collaborate with other people
- **Evidence of your work/contribution**

# Online document and training
- Pro Git <https://git-scm.com/book/en/v2>
- Learning Git Branching <http://learngitbranching.js.org/>
- Try Git <https://try.github.io>

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

# Pull request Operation flow (good for large community)
This method is considered to be standard, but requires more effort than next one. This kind of overhead needs to be accepted when many people collaborate togather.

1. Login Github site, open the project you want to contribute.
1. Press **Fork** button. It will copy the project in your account.
1. *Clone* the project which you made in your account.
1. In the local repository, make a *Branch* and perform necessary *commit* and test.
1. After confirmeing the change, *Push* to your forked repository.
1. Verify the change at Forked repository
1. Press **Pull Request** button at Github site (your Forked repository)
