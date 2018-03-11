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

# rails 3 shortcut 'r'
alias r='rails'
