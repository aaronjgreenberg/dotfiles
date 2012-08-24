# ZSH COMPLETION STYLES
# =====================
#
# Borrowed from @sykora on GitHub -> http://git.io/U14cHQ
#
# Aaron Greenberg
# August 2012

# Complete with same colors as ls.
zstyle ':completion:*' list-colors ''

# Be lenient to 2 errors.
zstyle ':completion:*' max-errors 2

# Completion modifiers.
zstyle ':completion:*' completer _expand _complete _correct _approximate

# Use a completion cache.
zstyle ':completion:*' use-cache true

# Ignore the current directory in completions.
zstyle ':completion:*' ignore-parents pwd
