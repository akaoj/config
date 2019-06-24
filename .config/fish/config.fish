set -x EDITOR nvim

#################
# Abbreviations #
#################

# Git
abbr -a g "git"
abbr -a gaa "git add --all"
abbr -a gap "git add -N --all ;and git add --all --patch"  # "git add patch"
abbr -a gb "git branch"
abbr -a gc "git commit"
abbr -a gcd "cd (git rev-parse --show-toplevel)"  # "git cd": cd in the root folder of the directory
abbr -a gco "git checkout"
abbr -a gd "git diff origin/master"
abbr -a gdh "git diff HEAD"
abbr -a gl "git log origin/master.."  # "git log": displays commits added on top of master
abbr -a glv "git log --oneline --decorate --all --graph"  # "git log visual": displays visual log
abbr -a gp "git push"
abbr -a gpf "git push --force-with-lease"
abbr -a gr "git rebase"
abbr -a gs "git status"
abbr -a gu "git fetch --tags --prune --all"  # "git update"
abbr -a gvh "git diff HEAD --name-only | sed 's|^|'(git rev-parse --show-toplevel)'/|' | xargs $EDITOR"  # "git view head": open all modified files in the default editor
abbr -a gvl "git diff HEAD~1 --name-only | sed 's|^|'(git rev-parse --show-toplevel)'/|' | xargs $EDITOR"  # "git view last": open all files from last commit in the default editor
abbr -a gw "git worktree"
abbr -a gwd "git diff --word-diff=color --word-diff-regex=. origin/master"  # "git word diff": displays diffs like online tools (i.e.: GitHub or GitLab)

# Tooling
abbr -a f "fzf --preview='head -n $LINES {}' --tabstop=4 --multi | xargs --no-run-if-empty -- $EDITOR"
abbr -a k "kubectl"
abbr -a l "less -SM +Gg -R"
abbr -a tf "terraform"
abbr -a v "nvim"

# Make ssh-add work
setenv SSH_ENV $HOME/.ssh/environment
