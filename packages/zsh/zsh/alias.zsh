ls_default="ls"

if ls --color=auto &> /dev/null; then
    ls_default="$ls_default --color=auto"
    alias ls="$ls_default"
fi

alias ls="$ls_default -Fh"
alias l="$ls_default -laFh"
alias ll="$ls_default -lFh"
alias la="$ls_default -lAh"

unset ls_default

# Git
alias g="git"
alias gaa="git add -A"
alias gst="git status"
alias gc="git commit"
alias gcm="git commit -m"
alias gca="git commit --amend"
alias gd="git diff"
alias gb="git branch"
alias grb="git rebase"
alias grbd="git rebase develop"
alias grb="git rebase"
alias grbi="git rebase -i"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gff="git merge --ff"
alias gsta="git stash save"
alias gstl="git stash list"
alias gstp="git stash pop"

function gpr {
    local current_branch="$(git rev-parse --abbrev-ref HEAD)"
    local branch=${1:-master}
    git checkout "${branch}"
    git pull
    git checkout "${current_branch}"
    git rebase "${branch}"
}

function dms {
    host=$1
    $SHELL -c "eval \$(docker-machine env $host) && exec \$SHELL"
}

# Ruby
alias be="bundle exec"
alias bi="bundle install --path=vendor/bundle"

# Heroku
alias hrc="heroku run bin/rails console"

if command -v brew >/dev/null 2>&1; then
    alias bupdate="brew update && brew upgrade && brew cleanup"
fi

if command -v vs_env >/dev/null 2>&1; then
    alias vs_env32="vs_env x86 "
    alias vs_env64="vs_env x64 "
fi

alias sudo="sudo "
alias env="env "
