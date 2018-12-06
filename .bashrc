export PS1="[\u@\h: \W]$ "
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PATH=$PATH:/usr/local/bin/
export EDITOR=vim

# For git diff
export PATH=$PATH:/usr/local/share/git-core/contrib/diff-highlight/
# For rbenv
export PATH="$HOME/.rbenv/shims:$PATH"
if which rbenv > /dev/null; then
  eval "$(rbenv init -)"
fi
# For pyenv
# export PATH="$HOME/.pyenv/bin:$PATH"
if which pyenv > /dev/null; then
  eval "$(pyenv init -)"
fi
# For nvm
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
# for direnv
if which direnv > /dev/null; then
  eval "$(direnv hook bash)"
fi
# Use Java 1.8
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

CONDABIN=${HOME}/.pyenv/versions/anaconda3-5.0.0/bin
alias conda-activate='source ${CONDABIN}/activate'
alias conda-deactivate='source ${CONDABIN}/deactivate'
