unset PYTHONPATH
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8


alias electron="/Applications/Electron.app/Contents/MacOS/Electron"

FISHEYE_INST="~/dev/crucible"
export FISHEYE_INST

source ~/dev/bin/aws_zsh_completer.sh

export JAVA_HOME=$(/usr/libexec/java_home)

alias fuck='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'
# source $(brew --prefix nvm)/nvm.sh
# migrate from before
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
export PATH="$HOME/dev/gradle-3.1/bin:$HOME/dev/apache-maven-3.3.9/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$HOME/Library/Python/2.7/bin:$HOME/dev/apache-maven-3.3.9/bin:$HOME/bin:$HOME/.rbenv/bin:${ANT_HOME}/bin:$HOME/bin/sdk/tools:$HOME/bin/sdk/platform-tools:$HOME/bin/ant/bin:$HOME/bin/cordova-android/bin:$PATH:/usr/local/bin:/Applications/Genymotion Shell.app/Contents/MacOS/:/Applications/Genymotion.app/Contents/MacOS/"
export GRADLE_HOME="$HOME/dev/gradle-3.1"

# 常用的 alias

# alias part
# Easier navigation: .., ..., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# be nice
alias please="sudo"

# `cat` with beautiful colors. requires Pygments installed.
#                                       sudo easy_install Pygments
# alias cat="pygmentize -O style=monokai -f console256 -g"
# alias c="pygmentize -O style=monokai -f console256 -g"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"


# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# file size
# alias fs="stat -f \”%z bytes\""

alias f="open -a Finder"

alias -g is26="ssh -p 1818 sivagao@106.187.102.77"
#alias -g is26="ssh -R 52698:localhost:52698 sivagao@is26.com"
#alias -g wdjrelay="ssh -p 2222 gaohailang@hy-relay2.wandoujia.com"
alias -g hosts="sudo vim /etc/hosts"

alias nw=/Applications/node-webkit.app/Contents/MacOS/node-webkit

# /usr/bin/login -f <your user name> when git brokeb



# Simple clear command.
alias cl='clear'

# Process grep should output full paths to binaries.
alias pgrep='pgrep -fl'

# JSHint short-cut.
alias lint=jshint

# Useful global aliases.
alias -g 'H'='| head'     # git log H
alias -g 'T'='| tail'     # git log T
alias -g 'F'='| head -n'  # git log F 15
alias -g 'L'='| tail -n'  # git log L 10
alias -g 'C'='| wc -l'    # git log C

# Some OS X-only stuff.
if [[ "$OSTYPE" == darwin* ]]; then
  # Short-cuts for copy-paste.
  alias c='pbcopy'
  alias p='pbpaste'

  # Remove all items safely, to Trash (`brew install trash`).
  # alias rm='trash'

  # Case-insensitive pgrep that outputs full path.
  alias pgrep='pgrep -fli'

  # Lock current session and proceed to the login screen.
  alias lock='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'

  # Python virtualenv shortcuts.
  alias venv-init='virtualenv venv -p /usr/local/bin/python --no-site-packages'
  alias venv-activate='source venv/bin/activate'

  # Sniff network info.
  alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"


  function cded() {
    cd $1
    $EDITOR .
  }

  export NODE_PATH='/usr/local/lib/node_modules'

  # Gets password from OS X Keychain.
  # $ get-pass github
  function get-pass() {
    keychain="$HOME/Library/Keychains/login.keychain"
    security -q find-generic-password -g -l $@ $keychain 2>&1 |\
      awk -F\" '/password:/ {print $2}';
  }
fi

# Git short-cuts.
# alias ga='git add'
# alias gr='git rm'
# alias gf='git fetch'
# alias gu='git pull'
# alias gs='git status --short'
# alias gd='git diff'
# alias gds='git diff --staged'
# alias gc='git commit --message'
# alias gp='git push'
# alias gcp='git cpush'
# alias gcl='git clone'
# alias gl='git log'

# Burl: better curl shortcuts (https://github.com/visionmedia/burl).
if (( $+commands[burl] )); then
  alias GET='burl GET'
  alias HEAD='burl -I'
  alias POST='burl POST'
  alias PUT='burl PUT'
  alias PATCH='burl PATCH'
  alias DELETE='burl DELETE'
  alias OPTIONS='burl OPTIONS'
fi

BROWSER=''
unset BROWSER

# Opens file in EDITOR.
function edit() {
  local dir=$1
  [[ -z "$dir" ]] && dir='.'
  $EDITOR $dir
}
alias ssh-wduat="ssh gf@10.35.89.25"
alias ssh-wdmc1="ssh gf@10.2.89.162"
alias ssh-wdmc2="ssh gf@10.2.89.163"
alias ssh-wdkxc1="ssh gf@10.35.89.21"
alias ssh-wdkxc2="ssh gf@10.35.89.22"
alias ssh-gftest="ssh gf@10.2.114.30"
alias ssh-gfmacpro="ssh gfsz@10.2.225.237"
alias ssh-gfwdm="ssh ubuntu@10.2.122.101"
alias ssh-is26="ssh sivagao@106.187.102.77 -p 64656"
alias ssh-jf="ssh gf@10.2.130.99"
alias ssh-gfmonitor="ssh ubuntu@10.2.86.55"

export GOPATH=~/projects/topics/golang
# added by Anaconda3 4.1.1 installer
export PATH="/Users/sivagao/dev/bin:/Users/sivagao/anaconda3/bin:$PATH"
