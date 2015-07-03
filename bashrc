#    _/                            _/       
#   _/_/_/      _/_/_/    _/_/_/  _/_/_/    
#  _/    _/  _/    _/  _/_/      _/    _/   
# _/    _/  _/    _/      _/_/  _/    _/    
#_/_/_/      _/_/_/  _/_/_/    _/    _/ rc

## Functions
toxrdb() {
  CPT=0
  while read HEXCODE; do
    printf '*color%d: %s\n' "$CPT" "$HEXCODE"
    CPT=$(expr $CPT + 1)
  done | column -t
}

## Exports
export PS1=" \[\e[37m\]\W\[\e[m\] ━━━━ "
export PATH=$PATH:~/bin/
export XDG_DESKTOP_DIR="/home/tato"

## Commands
#cowsay $(fortune)
ufetch
wmname LG3D #Java applications

## Aliases
alias I='sudo pacman -S'
alias ls='ls --color=auto'
alias S='pacman -Ss'
alias aur='pacaur -S'
alias aurs='pacaur -Ss'
alias m='ncmpcpp'
alias wifi='sudo wifi-menu'
