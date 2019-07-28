# Procedure of Merging Git Repositories While Keeping Histories

This file outlines how I merged several Git repositories into
one while preserving the histories.

We need git >= 2.9.0.

1. Make the directory `XXProject`.
2. Initialize Git repository by entering `git init` while at the folder.
3. Add necessary files such as `.gitignore`.
4. Commit, by entering `git commit -m "init commit"`.

The following steps will be repeated for each repository to merge.
Assume the repository is called `repos1`.

1. Enter `git remote add -f repos1 <path of repos1>`, linking another 
repostory as a remote.
2. Enter `git merge repos1/master --allow-unrelated-histories`.
3. Wrangling files in case there are conflicts. Do not change other merged files.
4. Enter `git remote rm repos1`, removing the link.
5. Commit, by entering `git commit -m "<whatever message>"`.
6. Create subdirectory by entering `mkdir <whatever name>`.
7. Move the files, while preserving the histories, by entering `git mv <source> <target>`.
8. Commit, by entering `git commit -m "<whatever message>"`.

Repeat the same process for other repositories.

To check the history of a file, enter `git log --follow <file path>`.