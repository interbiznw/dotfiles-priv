# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    echo "adding bash_aliases...."
    . ~/.bash_aliases
fi

# EXPORT definitions
# You may want to put all your exports into a separate file like
# ~/.bash_exports, instead of them here directly.

if [ -f ~/.bash_exports ]; then
    echo "adding bash_exports...."
    . ~/.bash_exports
fi

# EXPORT DEV definitions
# You may want to put all your exports into a separate file like
# ~/.dev_exports, instead of them here directly.

if [ -f ~/.devexport_true ]; then
    echo "adding dev_exports...."
    . ~/.dev_exports
fi
