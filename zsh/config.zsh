# ZSH CONFIGURATION
# =================
# Yep, configure the Z-Shell
#
# Aaron Greenberg
# August 2012

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Enable ls colors
if [ "$DISABLE_LS_COLORS" != "true" ]
then
  # Find the option for using colors in ls, depending on the version: Linux or BSD
  ls --color -d . &>/dev/null 2>&1 && alias ls='ls --color=tty' || alias ls='ls -G'
fi

# Allow you to change directories without typing `cd`
setopt AUTO_CD

# Allow you to cd into valid environment variables.
# Valid being environment variables that point to a cd-able directory.
setopt CDABLEVARS

# Do you really want to rm * that?
setopt RM_STAR_WAIT

# Don't EVER beep at me.
setopt NO_BEEP