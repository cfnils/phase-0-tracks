g# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
    - version control, like git, is the way that we keep track of software in different stages of development. So if we are working on a bug or new feature, the working version has to exist as a safe workspace, where as we work we don't effect the original version that needs to continue running. This is very useful in order to make sure that we are always using the correct version at the appropriate time. It's especially useful when the code is being worked on by teams.

* What is a branch and why would you use one?
    -  a branch is another version of the code that exists independently of the master or its parent. We use branches to make changes or additions to code that we want to make sure is clean before we merge it with the master.

* What is a commit? What makes a good commit message?
    -  a commit is a save point on the branch that you're working in. A good commit message will be able to tell you (or anyone else looking at your commit) what was done. So it should be as descriptive, clear and concise as possible

* What is a merge conflict?
    - a merge conflict arises when two branches being merged contain 2 different changes to the same code and git doesn't know which we want to keep and which we want to discard.