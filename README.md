.aaron
======

My dotfiles.

These are cobbled together from lots of articles and GitHub repos.
[Zach Holman's dofiles](https://github.com/holman/dotfiles) were an 
inspiration, and mine borrow heavily from them. So it goes with dotfiles. 
I also borrow quite a bit from Robby Russell's 
[Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh/). I used to use it, but
decided I didn't need many of the extra files, so I consolidated. I've done my
best to cite and reference all my sources, but if you see something that isn't
cited, let me know and I'll make the fix.

The Setup
---------
My files are organized topically, in folders. The files in a folder belong to
the software called out by the folder. Files ending with '.symlink' are ln -s'd
into your $HOME folder, and files ending with '.zsh' are sourced into your
$PATH. Files in bin/ are made available in your path. For some more information,
check out [Holman's README](http://git.io/eoJIZA). Seriously, that dude's
dotfiles are great.

Installation
------------
From the top level directory, run scripts/install.

Thanks
------
To everyone who's contributed (knowingly or not) to my dotfiles. Couldn't've
done it without you guys <3

Sincerely,
Aaron
