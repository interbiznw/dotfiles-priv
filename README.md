# Installation
### Download and change folder
```
cd ~
git clone https://github.com/interbiznw/dotfiles-1.git

cd dotfiles
```
### Run install
```
./install.sh
```

# Uninstallation

### Change to dotfiles folder
```
cd ~/dotfiles
```

### Run uninstaller
```
./uninstall.sh
```

### Reload tmux config

If you have made changes to your tmux configuration file in the ~/.tmux.conf file, it shouldn’t be necessary to start the server up again from scratch with kill-server. Instead, you can prompt the current tmux session to reload the configuration with the source-file command.

This can be done either from within tmux, by pressing Ctrl+B and then : to bring up a command prompt, and typing:

```:source-file ~/.tmux.conf```

Or simply from a shell:

```tmux source-file ~/.tmux.conf```

This should apply your changes to the running tmux server without affecting the sessions or windows within them.
