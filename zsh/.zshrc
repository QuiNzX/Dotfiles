

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PROMPT='[%n@%m %~]$ '


#poetry
export PATH="/home/shinobu/.local/bin:$PATH"

#dotnet
export DOTNET_CLI_TELEMETRY_OPTOUT=1


export FPATH="/usr/bin/eza/completions/zsh:$FPATH"

#aliases
alias pn=pnpm
alias l='eza -lFh'
alias la='eza -lAFh'
alias battery='cat /sys/class/power_supply/BAT0/capacity'

# pnpm
export PNPM_HOME="/home/shinobu/.local/share/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac

#kitty
#[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"


# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

#pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"


typeset -g -A key

#keybindings
key[Control-Left]="${terminfo[kLFT5]}"
key[Control-Right]="${terminfo[kRIT5]}"

[[ -n "${key[Control-Left]}"  ]] && bindkey -- "${key[Control-Left]}"  backward-word
[[ -n "${key[Control-Right]}" ]] && bindkey -- "${key[Control-Right]}" forward-word


#export all_proxy=socks5h://127.0.0.1:1080


# now, simply add these two lines in your ~/.zshrc

# source antidote
source ${ZDOTDIR:-~}/.antidote/antidote.zsh

# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load


