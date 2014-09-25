CITS3003-Project
================

A place for Michael and Hasitha to store our top secret, amazing, OP, mind-blowing, exasperating, exhilarating pile of shit that we have to do for CITS3003.

## How to use git ##

You first have to clone it:

    $ git clone https://github.com/OldManInternetz/CITS3003-Project.git
    
Running this command:

    $ git status
    
... will show you everything that you have changed since the last time you 'pulled' from the server.

If you want to 'commit' your changes to the server, you first need to 'add' the files you have changed, using:

    $ git add .

If you end up deleting files and you want them to be deleted from the server, you need to run:

    $ git add -u

... this will ensure that the files you deleted locally are also deleted next time you 'commit' your changes.

If you run 'git status' again, you will see that these changes will now be committed when you run:

    $ git commit -m "a message about what I changed"

Finally, to push it to the server, run:

    $ git push
    
Before you add or commit anything, you should first check to see whether I've done any work on the project. If I have, you will need to 'pull' the changes from the server before you can 'push' your changes. Run:

    $ git pull
    
... and git will download all the files that have changed since last time you 'pulled' from the server.

So, in summary:

    $ git pull
    $ git status
    $ git add .
    $ git add -u (if you deleted anything)
    $ git commit -m "message"
    $ git push
    
The end!

    
