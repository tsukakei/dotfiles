export PS1="[\u@\h: \w]$ "
export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
export PATH=$PATH:/Applications/MacVim.app/Contents/MacOS/
export PATH=$PATH:/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/
export PATH=$PATH:/usr/local/bin/
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
