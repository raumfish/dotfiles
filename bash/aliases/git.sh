
function git_diff() {
  git diff --no-ext-diff -w "$@" | vim -R -
}

function git_diff_head() {
  git_diff HEAD
}

function git_diff_cached() {
  git_diff --cached
}

function git_m_vim() {
  vim -c 'ScratchFind "git ls-files -m"' -c "on"
}

function gcp() {
  git commit -av -m '-' && git push
}

if [[ ! `which hub >/dev/null` ]]; then
  alias git=hub
fi

