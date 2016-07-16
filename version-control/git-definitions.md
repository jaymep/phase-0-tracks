# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
  * Version control is a way to track all changes to files, including when modified and by whom.
  * Multiple people can work on files, check for conflicts and add changes
  * If a bug is found, can check version history to find when implemented and roll back to the previous version. Don't have to start from the beginning.

* What is a branch and why would you use one?
  * It's a copy of the project used for development. (Fix bugs, test new features)
  * Multiple branches can be active at the same time
  * Working from a copy ensures the master branch stays clean

* What is a commit? What makes a good commit message?
  * A commit records changes made in a file, the date & time of the commit, & who changed it.
  * A good message is succinct and informative.

* What is a merge conflict?
  * When the merging branch and destination branch have both been modified.

<<<<<<< HEAD
  #### Small Change
=======
>>>>>>> ad16c33ca2dc84c0d969d27cb1cbca52214a14f0
