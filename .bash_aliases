alias s='ruby -run -ehttpd . -p8000'
alias reb="git fetch && git rebase origin/master && git push -f"
alias c='git log --numstat --pretty="%H" origin/master..HEAD | awk '\''NF==3 {plus+=$1; minus+=$2} END {printf("+%d, -%d\n", plus, minus)}'\'' '
alias ba="git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname) %(committerdate) %(authorname)' | sed 's/refs\/heads\///g'"
alias b="ba | grep cip | less"

# Pull Requests

# (it requires a $GITHUB_TOKEN env var)

# Note, in macOS, a `pr` command might already exist, the trick in that case is to create
# a ~/aliases/pr executable file and prepend the PATH with that dir, something like:
# export PATH="/Users/carlosipe/aliases:$PATH"

alias pr="hub pull-request"
alias prs="hub pr show"
alias prl="hub pr list --format='%pC%>(8)%i%Creset %>(10)%au  %t% l%n'"
alias prm="prl | grep carlosipe"
alias prc="hub pr checkout"
alias prt="pull_request_text | pbcopy"
alias ci="hub ci-status"
pull_request_text(){
  git fetch && hub pr list --head `git rev-parse --abbrev-ref HEAD` --format=':pr: %U%n%t ' && git diff origin/master --numstat --pretty='%H' | awk 'NF==3 {plus+=$1; minus+=$2} END {printf("`+%d, -%d`\n", plus, minus)}'
}

# Random stuff
alias pglogs="tail -f /usr/local/var/log/postgres.log"
alias jenga="while true; do play -n synth 1 sine 261; play -n synth 1 sine 329; play -n synth 1 sine 391; play -n synth 1.5 sine 523; sleep 5; done"
alias ndo="play -n synth 1 sine 261"
alias mi="play -n synth 1 sine 329"


