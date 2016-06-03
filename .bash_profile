alias ls='ls -aG'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
eval "$(rbenv init -)"
