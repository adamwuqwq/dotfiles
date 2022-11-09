# For zplug:
export ZPLUG_HOME=~/.zplug
source $ZPLUG_HOME/init.zsh
# Auto-complete plugins
zplug "zsh-users/zsh-autosuggestions" 
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "b4b4r07/enhancd", use:init.sh
zplug "qoomon/zsh-lazyload"
zplug "agkozak/zsh-z"
zplug "jreese/zsh-titles"
# Load prezto and its plugins
zplug "sorin-ionescu/prezto"
zplug "modules/environment", from:prezto
zplug "modules/utility", from:prezto
zplug "modules/git", from:prezto
zplug "modules/homebrew", from:prezto
# Check if plugins are installed
if ! zplug check --verbose; then
	printf "Install? [y/N]: "
	if read -q; then
		echo; zplug install
	fi
fi
# Load all plugins
zplug load

# Option settings for zsh
setopt AUTO_MENU           
setopt AUTO_PARAM_SLASH   
unsetopt MENU_COMPLETE     
setopt AUTO_PUSHD           
setopt PUSHD_IGNORE_DUPS   
setopt PUSHD_SILENT  

# For anaconda3:
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup

# For nvm:
export NVM_DIR="$HOME/.nvm"
# This loads nvm
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"
# This loads nvm bash_completion
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

# Enable iterm2 zsh intergration
test -e /Users/adamwuqwq/.iterm2_shell_integration.zsh && source /Users/adamwuqwq/.iterm2_shell_integration.zsh || true

# For fzf
export FZF_DEFAULT_OPTS='--height 50% --border'
export FZF_TMUX=1
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"

# Zstyle - completion
source $ZPLUG_HOME/repos/zsh-local/zsh_local.zsh

# Source Prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Start tmux
# [ -z "$TMUX"  ] && [ $TERM != "screen" ] && {exec tmux new-session && exit;}
