# ZSH PROMPT
# ==========
#
# This script is stitched together from pieces of Zach Holman's prompt script
# (http://git.io/n0VnGQ) and Mahdi Yusuf's zsh-theme file (for Oh-My-Zsh)
# (http://git.io/CXXtUQ).
#
# This file is important. It customizes my prompt to be formatted as
# [current_directory_name] [git_branch(status)] 
#
# Aaron Greenberg
# August 2012


autoload colors && colors

#compare the provided version of git to the version installed and on path
#prints 1 if input version <= installed version
#prints -1 otherwise 
function git_compare_version() {
  local INPUT_GIT_VERSION=$1;
  local INSTALLED_GIT_VERSION
  INPUT_GIT_VERSION=(${(s/./)INPUT_GIT_VERSION});
  INSTALLED_GIT_VERSION=($(git --version));
  INSTALLED_GIT_VERSION=(${(s/./)INSTALLED_GIT_VERSION[3]});

  for i in {1..3}; do
    if [[ $INSTALLED_GIT_VERSION[$i] -lt $INPUT_GIT_VERSION[$i] ]]; then
      echo -1
      return 0
    fi
  done
  echo 1
}

#this is unlikely to change so make it all statically assigned
POST_1_7_2_GIT=$(git_compare_version "1.7.2")
#clean up the namespace slightly by removing the checker function
unset -f git_compare_version

# Checks if working tree is dirty
parse_git_dirty() {
  local SUBMODULE_SYNTAX=""
  if [[ $POST_1_7_2_GIT -gt 0 ]]; then
        SUBMODULE_SYNTAX="--ignore-submodules=dirty"
  fi
  if [[ -n $(git status -s ${SUBMODULE_SYNTAX}  2> /dev/null) ]]; then
    return true
  else
    return false
  fi
}

# get the name of the branch we are on
git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null)
  if test $ref; then
    suffix="]%{$reset_color%} "
    if $(parse_git_dirty); then
      prefix="%{$reset_color%} %{$fg[red]%}["
    else
      prefix="%{$reset_color%} %{$fg[green]%}["
    fi
    echo "$prefix${ref#refs/heads/}$suffix"
  else
    echo " "
  fi
}

set_prompt() {
  export PROMPT="%{$fg[yellow]%}[%c]$(git_prompt_info)%{$reset_color%}"
}

precmd() {
  print -Pn "\e]0;%~\a"
  set_prompt
}
