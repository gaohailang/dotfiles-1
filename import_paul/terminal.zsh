# curr="/Users/ghlndsl/projects/dotfiles/import_paul"
curr=$(dirname "$0")

autoload -Uz promptinit && promptinit

# Load main files.
# echo "Load start\t" $(gdate "+%s-%N")
source "$curr/terminal/startup.sh"
# echo "$curr/terminal/startup.sh"
source "$curr/terminal/completion.sh"
source "$curr/terminal/highlight.sh"
# echo "Load end\t" $(gdate "+%s-%N")

autoload -U colors && colors

# Load and execute the prompt theming system.
fpath=("$curr/terminal" $fpath)
# prompt 'paulmillr'
