# USEFUL SHELL ALIASES
# ====================
#
# Aaron Greenberg
# August 2012

alias h="cd"								# Single key to go home!
alias c="clear"								# Clear the terminal.
alias la="ls -al"							# Show long version of ALL the files.
alias ll="ls -l"							# Show long version of files. No hidden tho.
alias rl=". ~/.zshrc"						# Reload the environment.

# Get a list of Olin's printer URLs.
# -- Written by Tim Cameron Ryan (https://github.com/tcr)
alias printers='curl http://linux.olin.edu/printing/olin-cups.tar.gz --silent | gzip -d - | tar -Of - -x printers.conf | grep "<Printer" | cut -c 10- | sed "s/>\$/.olin.edu\//" | sed "s/^/http:\/\//"'

# Open Olin's SCOPE Intranet.
# Also by Tim Cameron Ryan (https://github.com/ohack/olinrc/blob/master/.olinrc)
alias oscope='open /Volumes/SCOPE/SCOPE_intranet/SCOPE_intranet.html'