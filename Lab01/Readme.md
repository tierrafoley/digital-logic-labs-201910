# ELC 2173 Digital Logic Lab Spring 2017 Lab 01

## Description

In this lab, we will get ourselves familiar with git and github classroom tools.
All the details will be discussed in the lab session.

Some useful git resources:
  - [Git manual](https://git-scm.com/doc)
  - [Git cheatsheet](http://ndpsoftware.com/git-cheatsheet.html)
  - [Git koans](http://stevelosh.com/blog/2013/04/git-koans/)
  - [Tips for using git](https://www.alexkras.com/19-git-tips-for-everyday-use/)

Resources for markdown format:
  - [Github markdown](https://guides.github.com/features/mastering-markdown/)
  - [HTML Entities for symbols, mathematical symbols, and Greek letters](http://www.dionysia.org/html/entities/symbols.html)
  

## Basic Bash Commands
- Common directory names:
  - ```.```: currect directory
  - ```..```: directory one level up
  - ```~```: home directory

- Create a file
  ```shell
  touch <filename>
  ```

- Create directory
  ```shell
  mkdir <dirname>
  ```
  or if it's a path, i.e. a chain of directories
  ```shell
  mkdir -p <path>
  ```

- File names
  - Try not to have space in your file or directory names.
  - When addressing files that have spaces in the file name already:
    - Use double quotes ("") surround the file name.
    - Put a backward slash (\) before each space.
  - [Vivado](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/2017-2.html), which we will start using in a few weeks, really hates spaces. If you put spaces in names, things will stop working.

- Show current location
  ```shell
  pwd
  ```

- Change directory
  - Go back to home directory
    ```shell
    cd
    ```
    The same as
    ```shell
    cd ~
    ```
  - Go into a directory or a path
    ```shell
    cd <path>
    ```
  - Go back one level on directory structure
    ```shell
    cd ..
    ```
  - ... or go back multiple level
    ```shell
    cd ../../..
    ```
  - Go back to previous directory
    ```shell
    cd -
    ```

- Show all the files in current directory
  ```Shell
  ls
  ls -l
  ls -plsha
  ```

- Open current folder in file explorer (or Finder in mac)
  - Windows
    ```shell
    explorer .
    ```
  - Mac
    ```shell
    open .
    ```

## Code Editors

### Vim
When use git on command line you will most likely encounter vi or vim in many situations, so it's good to know some basic commands to use it
- [Vim cheatsheet](https://vim.rtorr.com/)

There are a few modes in vim, the most used are **command mode** and **editing mode**. By default, when you just start vim, it's in **command mode**, in this mode:
- keyboard inputs are considered as command, here are some useful commands:
  - ```i``` go into editing mode
    - ```Esc``` go back into command mode, when in editing mode
  - ```u``` undo
  - ```:<number>``` go to line <number>
  - ```:q``` quit, it only works when the file has not been modified.
  - ```:q!``` quit without save
  - ```:w``` save
  - ```:wq``` save and quit (force write)
  - ```:x``` save and quit


### Emacs
I will be using emacs in later labs for editing codes. Here is my [emacs configuration](https://github.com/malloc82/Emacs-Config).


### Other Editors
- Notepad++
- VisualStudio Code (might need a free plugin for verilog)

**Note**: DO NOT USE NOTEPAD FOR CODE OR DOCUMENT EDITING.

## Git

![git](pics/git.2.14.1.png)

Git is a [version control system](https://en.wikipedia.org/wiki/Version_control) for tracking changes in computer files and coordinating work on those files among multiple people. It is primarily used for source code management in software development, but it can be used to keep track of changes in any set of files. As a distributed revision control system it is aimed at speed, data integrity, and support for distributed, non-linear workflows.[1][wiki_git]

We will use git to distribute, track and verify assignments in this lab.

## Git commands
- Obtaining the repository
  ```shell
  git clone <repository url>
  ```
- Checking the logs which shows the commit history
  ```shell
  git log
  ```
  or a simpler version:
  ```shell
  git log --oneline --graph --decorate=auto --color
  ```
- Set User information
  ```shell
  git config --global user.email "<Your Email>"
  git config --global user.name  "<Your Name>"
  ```

- Checking the status of the repository
  ```shell
  git status
  ```
  This is probably the most useful / used command. It tells or confirms to you what is going on in your repo. It is strongly recommended to run this command before you run anything that can change the repo, i.e. add, commit, push, pull, etc.

- Show actual changes
  ```shell
  git diff
  ```
  or just show the names of changed files:
  ```shell
  git diff --name-status
  ```

- Adding changes
  Adding a single file
  ```shell
  git add <filename>
  ```
  or add all the changes for files that have already been tracked by git:
  ```shell
  git add -u .
  ```
  or add all the files:
  ```shell
  git add *
  ```

- Committing changes to local repository
  ```shell
  git commit -m "<commit comment>"
  ```
  **Note**: you **ALWAYS** need to give meaningful comments. Meaningful =\= long.
  If you wish to fix the previous commit comment:
  ```shell
  git commit --amend -m "<new commit comment>"
  ```
  If you forgot to change the user information before you made the commits, here is how to fix it:
  ```shell
  git commit --reset-author --amend
  ```

- Push local changes to remote
  ```shell
  git push
  ```
  or if you want to set upstream tracking
  ```shell
  git push -u origin master
  ```

- Getting update from remote
  ```shell
  git pull --rebase
  ```
  **Note**: It's always recommended to pull before push

- Show remote repository information:
  ```shell
  git remote -vvv
  ```

## Assignment
See [Assignment.md](Assignment.md).

## Reference RC:
[wiki_git]: https://en.wikipedia.org/wiki/Git "Git Wikipedia"
