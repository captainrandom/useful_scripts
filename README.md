# Useful Scripts Repo

Right now, this captures cli configs and logic to setup your default environment:
- default installed cli tools & languages
- sets up fonts, colors for the terminal
- sets up the bash profile and zsh profile or .zshrc/.bashrc
- sets up default useful scripts that should be able to run as cli defaults on the path

## Environment Setup

This uses ansible to automatically setup the local host. This mostly sets up the command line, installs any languages, command line defaults (as best as possible).

#### TODO
- Next thing to automate should be to see if I can automatically download / install mac apps
- Test the anaconda install script, as I manually installed it this time around
- Add script to setup loopback ssh connection