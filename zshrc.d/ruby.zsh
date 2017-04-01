# export RUBY_HEAP_MIN_SLOTS=
# export RUBY_HEAP_FREE_MIN=100000
# export RUBY_HEAP_SLOTS_INCREMENT=300000
# export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
# export RUBY_GC_MALLOC_LIMIT=79000000

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias ge="gem edit"
alias bx="nocorrect bundle exec"
alias bo="bundle open"
alias h="heroku"
alias rake='noglob rake'
alias rspec="nocorrect rspec"
alias sb="./script/bootstrap"

# rails 3 shortcut 'r'
alias r='rails'

# launching console/server
sc () {
  if [ -f ./script/console ]; then
    ./script/console $@
  elif [ -f ./bin/rails ]; then
    ./bin/rails c $@
  else
    ./script/rails c $@
  fi
}

ss () {
  if [ -f ./script/server ]; then
    ./script/server $@
  elif [ -f ./bin/rails ]; then
    ./bin/rails s $@
  elif [ -f ./package.json ]; then
    npm start $@
  else
    ./script/rails s $@
  fi
}

sg () {
  if [ -f ./script/generate ]; then
    ./script/generate $@
  elif [ -f ./bin/rails ]; then
    ./bin/rails g $@
  else
    ./script/rails g $@
  fi
}
