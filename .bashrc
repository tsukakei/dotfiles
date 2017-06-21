export PS1="[\u@\h: \W]$ "
export PATH=$PATH:/Applications/MacVim.app/Contents/MacOS/
export PATH=$PATH:/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/
export PATH=$PATH:/usr/local/bin/
export PATH=$PATH:/usr/local/share/git-core/contrib/diff-highlight/
export PATH="$HOME/.rbenv/shims:$PATH"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
if which rbenv > /dev/null; then
  eval "$(rbenv init -)"
fi
export PATH="$HOME/.pyenv/bin:$PATH"
if which pyenv > /dev/null; then
  eval "$(pyenv init -)"
fi
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
source ~/.nvm/nvm.sh
