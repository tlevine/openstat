Use different remote repositories.

    USER=tlevine
    USER=lifewinning
    git clone git@github.com/$USER/openstat.git
    cd openstat

It's fine to edit on master most of the time, but if we're both making
large changes to the same article, consider making a branch.

    git checkout -b branch-name

With a few exceptions, every file should grouped within article directories.
A file named `index.$something` (`index.md`, `index.html`, &c.) should be
inside each directory, and this file will be the main text of the article.
Private information should be encrypted to both Tom's and Ingrid's GPG keys.

    ./readme.md
    ./open-data-companies/readme.md
    ./open-data-companies/plot.png
    ./open-data-companies/interview.md.gpg

Run this to make sure that the repository is structured properly.

   make check 

Here are the exceptional files. They are all in the root of the repository.

* The file you are reading (`readme.md`)
* The `.git` directory
* GPG public keys (`tom.key` and `ingrid.key`)
* The `bin` directory
* The `Makefile`
