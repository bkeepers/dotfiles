export EDITOR='atom -w'
export BUNDLER_EDITOR='atom'

alias rm=trash
alias grep='GREP_COLOR="1;37;41" LANG=C grep --color=auto'
alias git=hub
alias dotfiles="atom ~/.dotfiles"

e () { atom "${1:-.}"; }

function server() {
  port=${1:-8000}
  open http://localhost:"$port" && python -m SimpleHTTPServer "$port";
}

alias sb="strappy bootstrap"
alias sc="strappy console"
alias ss="strappy server"
alias st="strappy test"

alias xcode="open -a Xcode ."
