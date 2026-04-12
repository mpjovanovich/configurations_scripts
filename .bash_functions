function apt-all() {
    sudo apt update && sudo apt upgrade -y
}

function git-acp() {
    git add .
    git commit --allow-empty-message -a -m "$1"
    git push
}

function git-remove-commits() {
    git checkout --orphan temp
    git add -A
    git commit -m "Initial commit"
    git branch -D main
    git branch -m main
    git push -f origin main
}

function git-mirror-repo() {
  local SOURCE=$1
  local DEST=$2

  git clone --mirror "$SOURCE" _mirror.git
  git -C _mirror.git push --mirror "$DEST"
  rm -rf _mirror.git
  git clone "$DEST"
} 

