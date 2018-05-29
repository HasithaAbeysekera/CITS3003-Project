CITS3003-Project
================

A place for Michael and Hasitha to store our top secret, amazing, OP, mind-blowing, exasperating, exhilarating project that we have to do for CITS3003.

[Project available here](http://undergraduate.csse.uwa.edu.au/units/CITS3003/labsheet.php?fname=project-part1)

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

## filesearch.rb ##

I don't know if you have Ruby installed on your computer, but if you do, run:

    $ ruby filesearch.rb f string_you_are_looking_for
    
to find all files that a particular string appears in. I wrote it for the Ruby on Rails application I'm working on but it works well in anything. It's good for when you need to find a particular string across every single source code file in the directory, and all subdirectories.

    
