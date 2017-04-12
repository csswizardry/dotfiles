# Add stuff to the PATH
export PATH="$PATH:`yarn global bin`"





# Grab Git’s autocomplete package
source ~/.git-completion.bash





# Prompt is scrappy. I’d love to know how to do this properly.
function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
GREEN="\[\033[0;32m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[0;34m\]"
NO_COLOUR="\[\033[0m\]"

PS1="$GREEN\u$NO_COLOUR \e[3min $BLUE\w$NO_COLOUR \e[3mon$YELLOW\$(parse_git_branch)$NO_COLOUR\n» "





# Aliases
alias editvhosts="sudo vim /private/etc/apache2/extra/httpd-vhosts.conf"
alias edithosts="sudo vim /private/etc/hosts"
alias vtop="vtop --theme wizard"
alias site="cd ~/Sites/csswizardry.com"
alias inuitcss="cd ~/Sites/inuitcss/inuitcss"
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias ngrok="/Applications/ngrok"
alias ctags="`brew --prefix`/bin/ctags"
alias ll="ls -lhFG"

# Spin up a server, just specify port
server() {
  open "http://localhost:${1}" && python -m SimpleHTTPServer $1
}
