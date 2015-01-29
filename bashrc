
#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

PATH=/usr/local/bin:$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

function manp() { man -t "$1" | open -f -a Preview; }

function rtemp() { curl https://raw.githubusercontent.com/dhaskew/templates/master/rails.rb; }

alias rtemp='curl https://raw.githubusercontent.com/dhaskew/templates/master/rails.rb'

export CLICOLOR="YES" #get color output from ls

alias fixopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user'

if [ -f "$HOME/.bash_ps1" ]; then

. "$HOME/.bash_ps1"

fi

# Name the colors we'll be using to make them somewhat readable
ORANGE="\[\e[38;5;214m\]"
YELLOW="\[\e[38;5;228m\]"
CYAN="\[\e[0;36m\]"

BLDGRN="\[\e[1;32m\]" # Green - Bold
BLDRED="\[\e[1;31m\]" # Red - Bold

WHITE="\[\e[1;37m\]"
LIGHT="\[\e[0;37m\]"
DARK="\[\e[38;5;240m\]"

# Set the prompt
# \u - user
# \h - host
# \w - working directory

function lastc() {
 
  status=$? 
  
  CUR_DIR=$(basename "$PWD")
  CUR_PC="$(hostname -s)"
  if test $status -ne 0 ; then
    if [[ $CUR_PC = "is-mbp-dhaskew" ]]
    then 
      export PS1="\[${BLDRED}\] \[\342\]\203\240 \[${LIGHT}\]: \[${ORANGE}\]\u \[${DARK}\]@ \[${YELLOW}\]\h \[${DARK}\]in \[${CYAN}\]\[$CUR_DIR\] \[${LIGHT}\]\$ "
    else
      export PS1="\[${BLDRED}\]\342\203\240 \[${LIGHT}\]: \[${ORANGE}\]\u \[${DARK}\]@ \[${YELLOW}\]\h \[${DARK}\]in \[${CYAN}\]\[$CUR_DIR\] \[${LIGHT}\]\$ "
    fi
  else
    if [[ $CUR_PC = "is-mbp-dhaskew" ]]
    then
      export PS1="\[${BLDGRN}\]\342\[\234\223\] \[${LIGHT}\]: \[${ORANGE}\]\u \[${DARK}\]@ \[${YELLOW}\]\h \[${DARK}\]in \[${CYAN}\]\[$CUR_DIR\] \[${LIGHT}\]\$ "
    else
# export PS1="\[${BLDGRN}\]\[\342\234\223\] \[${LIGHT}\]: \[${ORANGE}\]\u \[${DARK}\]@ \[${YELLOW}\]\h \[${DARK}\]in \[${CYAN}\]\[$CUR_DIR\] \[${LIGHT}\]\$ "
    #export PS1="\[${ORANGE}\]\u \[${DARK}\]@ \[${YELLOW}\]\h \[${DARK}\]in \[${CYAN}\]\[$CUR_DIR\] \[${LIGHT}\]\$ "
      export PS1="\[${BLDGRN}\]\342\234\[\223\] \[${LIGHT}\]: \[${ORANGE}\]\u \[${DARK}\]@ \[${YELLOW}\]\h \[${DARK}\]in \[${CYAN}\]\[$CUR_DIR\] \[${LIGHT}\]\$ "
    fi
  fi
  
}

PROMPT_COMMAND=lastc

#use less instead of more where possible
export PAGER=less

if [ -f ~/.s3 ]; then source ~/.s3; fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# set the EDITOR var so that we use VIM where possible
export EDITOR="vim"

set -o vi
