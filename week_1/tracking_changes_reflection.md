#How does tracking and adding changes make developers' lives easier?

Tracking and adding changes will make my life easier because it will provide organization. I can easily track the changes that I make to my programming file and when I am comfortable with the changes that I made, I can stage them. After I will commit, which saves all of the changes that I made at that point in time. If anything goes wrong or I forgot to change something, I can backtrack and correct those changes. Also by keeping well-detailed and organized commits, will help others see what you have been working on. 

#What is a commit?

A commit is a point in time where you save everything that you worked on. By committing early and often helps you keep track of all the actions that you worked on during that particular session. Commits are helpful because if something goes wrong in your code you can easily go back in time and track where the problem happen or when was the last time your program was working well. 

#What are the best practices for commit messages?

**The best practices for Commit messages:**
* Keep the message short and informative.
* Do not use **profanity.**
* You should always begin a commit message with a **capitalized letter** because it is a common style in writing.
* Keep all your text in **present tense.** Ex. Home title page update  **Do not use** Ex. home title page updated


#What does the HEAD^ argument mean?

The **HEAD^** argument in commit means the last commit you completed. If there are multiple commits already and you want to change something that is not on the HEAD^ commit you can easily use HEAD~_number_ to go to any commit in sequential order starting from the HEAD^ commit. The same logic applies when you use HEAD for files that are staged. 

#What are the 3 stages of a git change and how do you move a file from one stage to the other?

1. Modify a file using sublime text and save it.
2. Stage the file as soon as you feel comfortable with the changes. Use git add _"file name"_or "."
3. Then commit the file by creating a period in time where you want to save all the actions that you have been working on. Use git commit –m _“message goes here”_

#Write a handy cheatsheet of the commands you need to commit your changes?

**Handy Commands:**

-    git add _“filename”_ or "."
-    git reset HEAD _(Will unstage a file)_
-    git commit –m _“message here”_
-    git reset –soft HEAD^ _(Un-commit a file)_
-    git push origin _branch name_
-    git pull origin _branch name_


#What is a pull request and how do you create and merge one?

A pull request is used when you have two or more branches. Having other branches is important because you can work on a file without interrupting the original master branch. When you do a pull request you are asking permission to add your changes into the master branch. In this stage, the owner of the repository can review the work and either reject or accept it. 

The entire process happens on Github. To create a pull request you need to go to the repository name and click the Compare **Pull Requests green button**. Now you are in the pull request page and you can either add a comment or just submit the pull request.

After, there is a green button, which will ask you if you want to merge the changes. This only shows up because you are the owner of the repository. If you weren’t, you will wait until the owner accepts. The Master branch is now current and with the changes you made. At this point, you can also delete the second branch on Github.

**Extra**
---
Now you have to go to your terminal and switch to your master branch and git pull to bring your branch up to date. Then you can use git branch –d “file name” to delete the branch. 

#Why are pull requests preferred when working with teams?

Pull request is similar to having a good organization with **checks and balances**. After you create your Pull Request your team mate will review the code before its approve so that you can catch mistakes ahead of time.  