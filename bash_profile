#!/bin/bash

export PATH="/usr/bin:/bin:/usr/sbin:/sbin"

export PATH="$PATH:/path/to/elixir/bin"
# Editors
export EDITOR="mine"
export BUNDLER_EDITOR="mine"

# Terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export TERM=xterm-256color
export LANG=en_US.UTF-8

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Rbenv
export RBENV_ROOT="$HOME/.rbenv"
export PATH="$RBENV_ROOT/bin:/usr/local/bin:$PATH"
eval "$(rbenv init - --no-rehash)"

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# # Bash Completion
# if [ -f /usr/local/etc/bash_completion ]; then
#   source /usr/local/etc/bash_completion
# fi

if [ -f ~/.colors ]; then
  source ~/.colors
fi

if [ -f ~/.aliases ]; then
  source ~/.aliases
fi

# if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
#   source /usr/local/etc/bash_completion.d/git-completion.bash
# fi

# Bash Prompt
if [ -f ~/.bash_prompt ]; then
  source ~/.bash_prompt
fi

# Vagrant
ulimit -n 4048

function forward_vm_port {
    VBoxManage modifyvm "dev" --natpf1 "tcp-port$1,tcp,,$1,,$1";
    VBoxManage modifyvm "dev" --natpf1 "udp-port$1,udp,,$1,,$1";
}

function unforward_vm_port {
    VBoxManage modifyvm "dev" --natpf1 delete "tcp-port$1";
    VBoxManage modifyvm "dev" --natpf1 delete "udp-port$1";
}


