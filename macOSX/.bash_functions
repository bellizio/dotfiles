function acp() {
  git add .
  git commit -m "$1"
  git push
}

function clone() {
  git clone $1
  cd $(basename ${1%.*})
  if test -f "./yarn.lock"; then
    echo "..."
    echo "Found yarn.lock...installing dependencies via yarn"
    echo "..."
    yarn install
    return
  fi
  if test -f "./package.json"; then
    echo "..."
    echo "Found package.json...installing dependencies via npm"
    echo "..."
    npm install
    return
  fi
}

function upgrade-nvm() {
  (
    cd "$NVM_DIR"
    git fetch origin
    git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" origin`
  ) && . "$NVM_DIR/nvm.sh"
}

function keygen() {
  x=$(ps -A | openssl sha1 | head -c 32 | pbcopy); echo $x
}

function command-exists() {
  command -v "$1" &> /dev/null
}

# https://iterm2.com/documentation-scripting-fundamentals.html
function iterm2_print_user_vars() {
  iterm2_set_user_var nodeVersion $(node -v)
}
