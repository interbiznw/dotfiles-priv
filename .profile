# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
  if [ $DEBUG == "TRUE" ]; then
    echo "adding bash_aliases...."
  fi
  . ~/.bash_aliases
fi

# EXPORT definitions
# You may want to put all your exports into a separate file like
# ~/.bash_exports, instead of them here directly.

if [ -f ~/.bash_exports ]; then
  if [ $DEBUG == "TRUE" ]; then
    echo "adding bash_exports...."
  fi
  . ~/.bash_exports
fi

# EXPORT DEV definitions
# You may want to put all your exports into a separate file like
# ~/.dev_exports, instead of them here directly.

if [ -f ~/.devexport_true ]; then
  if [ $DEBUG == "TRUE" ]; then
    echo "adding dev_exports...."
  fi
  . ~/.dev_exports
fi
