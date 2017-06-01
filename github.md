# Why github ?
- Back up
- Version control
- Collaborate with other people
- **Evidence of your work/contribution**

# Simple operation flow (single person, no branch)
## Create new project and local repository
1. Create github account
1. Create new project with README.md and LICENCE
1. at the local computer, move to proper directory then issue "git clone" command. git supports ssh git and http protocols, Using http(https) is easy for small update.

```
    git clone https://github.com/UseName/ProjectName.git
```

## add/commit/push/pull
1. Create or Modify file
1. Issue `git add` command, this command tells to git that the change of the file will be commited (STAGE)
1. If related modification is made, issue `git commit` command to confirm the change. Local commit can be easily restored, so it's not necessary to be so nervous.
1. Test the code.
1. issue `git push` command to synchronize the local and remote (github) repository.
1. If file is updated on github, issue `git pull` command to synchronize the local and remote (github) repository.
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
