# Add stuff to the PATH
export PATH="$PATH:`yarn global bin`"
export PATH="/usr/local/opt/mozjpeg/bin:$PATH"





# Grab Git’s autocomplete package
source ~/.git-completion.bash





# Set up a Git-aware prompt
GREEN="\[\033[0;32m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[0;34m\]"
RESET="\033[m"
ITALIC="\e[3m"

function parse_git_branch() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1)/"
}

export PS1="\[$GREEN\]\u \[$RESET\]\[$ITALIC\]in \[$RESET\]\[$BLUE\]\w\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" \[$RESET\]\[$ITALIC\]on \")\[$YELLOW\]\$(parse_git_branch)\[$RESET\]\n» "





# Aliases
alias editvhosts="sudo vim /private/etc/apache2/extra/httpd-vhosts.conf"
alias edithosts="sudo vim /private/etc/hosts"
alias vtop="vtop --theme wizard"
alias site="cd ~/Sites/csswizardry.com"
alias dotfiles="cd ~/Sites/dotfiles"
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias cleardns="sudo killall -HUP mDNSResponder;sudo killall mDNSResponderHelper;sudo dscacheutil -flushcache"
#alias ctags="`brew --prefix`/bin/ctags"
alias ll="ls -lhFG"

# Spin up a server, just specify port
server() {
  open "http://localhost:${1}" && python -m SimpleHTTPServer $1
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
