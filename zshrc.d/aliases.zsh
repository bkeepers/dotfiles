export EDITOR='atom -w'
export BUNDLER_EDITOR='atom'

alias rm=trash
alias grep='GREP_COLOR="1;37;41" LANG=C grep --color=auto'
alias git=hub

e () { atom "${1:-.}"; }

function server() {
  port=${1:-8000}
  open http://localhost:"$port" && python -m SimpleHTTPServer "$port";
}
