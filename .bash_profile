export EDITOR=emacs

alias emacs='emacs -nw'
alias gits='gits --no-master'
alias k=kubectl

system_type=$(uname -s)
if [ "$system_type" = "Darwin" ]; then
  # for brew, to get around API limits
  export HOMEBREW_GITHUB_API_TOKEN=***REMOVED***
  # for brew
  export PATH=/usr/local/sbin:$PATH
  # for brew 
  export PATH=/usr/local/bin:$PATH
  # for brew gnu-sed (required for kubernetes build)
  export PATH=/usr/local/opt/gnu-sed/libexec/gnubin:$PATH
  # for brew gnu-tar (required for kubernetes build)
  export PATH=/usr/local/opt/gnu-tar/libexec/gnubin:$PATH
  # for gnu emacs
  export PATH=/usr/local/Cellar/emacs/25.2/bin:$PATH
  # for openssl
  export PATH=/usr/local/Cellar/openssl/1.0.2l/bin:$PATH
  # for curl
  export PATH=/usr/local/Cellar/curl/7.54.1/bin:$PATH
  # for golang
  export GOPATH=~/Dev/go
  # for golang
  export PATH=/usr/local/opt/go/libexec/bin:$GOPATH/bin:$PATH

  if which brew &>/dev/null; then
    # for brew direnv
    eval "$(direnv hook bash)"
  fi

  #####################################################################
  # ssh agent (ensure one is running, or connect to existing one, with key added)
  if [ ! -S ~/.ssh/ssh_auth_sock ]; then
      eval `ssh-agent`
      ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
  fi
  export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
  ssh-add -l 2>&1| grep "The agent has no identities" &>/dev/null && ssh-add

  ~/bin/kbfs-backup ~/Backups team ***REMOVED*** +%Y-%m-%d
fi  


#####################################################################

