wman - Wikipedia + Man pages
====================
wman is a simple extension of the "man" command. If the command is found in man, then it works normally. If the command is not found, then wman searches Wikipedia for the entry.

This is just a simple app I wrote for myself, so I make no guarantees it will work anywhere but on my computer.

Installing
---------------------

1. This script requires pandoc as a dependency. Install it here: http://johnmacfarlane.net/pandoc/installing.html. It also
requires ruby and bundler / Gem.

2. Next run this script:

`curl https://raw.github.com/jontonsoup/wman/master/install.sh && /bin/sh ./install.sh`

or this one (depending on your preference):

`wget https://raw.github.com/jontonsoup/wman/master/install.sh && /bin/sh ./install.sh`


Enjoy the script!
examples:
`wman alan turing`
`wman wait`