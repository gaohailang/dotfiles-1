curr="/Users/ghlndsl/projects/dotfiles/import_paul"

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
autoload -Uz promptinit && promptinit
prompt 'paulmillr'