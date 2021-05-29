# zstyle - completion
# vim-zsh-config
source ~/.zplug/repos/zsh-local/zsh_local.zsh
source ~/.zplug/repos/zsh-local/key-bindings.zsh


#TODO
# 1. a command to pipe fzf and 
# 2. adjust the fzf shorcuts

# zplug
source ~/.zplug/init.zsh
zplug "zsh-users/zsh-autosuggestions" 
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "b4b4r07/enhancd", use:init.sh
zplug "qoomon/zsh-lazyload"
zplug "laggardkernel/zsh-thefuck"
zplug "agkozak/zsh-z"
zplug "jreese/zsh-titles"



setopt AUTO_MENU           
setopt AUTO_PARAM_SLASH   
unsetopt MENU_COMPLETE     
setopt AUTO_PUSHD           
setopt PUSHD_IGNORE_DUPS   
setopt PUSHD_SILENT       

# vi settings
# ----------

# fzf

export FZF_DEFAULT_OPTS='--height 50% --border'
export FZF_TMUX=1
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"

# --------------------------

if ! zplug check --verbose; then
	printf "Install? [y/N]: "
	if read -q; then
		echo; zplug install
	fi
fi

zplug load --verbose
