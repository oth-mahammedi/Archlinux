


if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.config/zsh/.zhistory




# Path to your oh-my-zsh installation.
export ZSH="$HOME/.config/zsh/ohmyzsh"

#ZSH_THEME="agnoster"

ZSH_THEME="powerlevel10k/powerlevel10k"

# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

zstyle ':omz:update' mode disabled  # disable automatic updates

plugins=(
		git
		zsh-syntax-highlighting
		zsh-autosuggestions
		zsh-completions
		history-substring-search
		sudo
		colored-man-pages
		command-not-found
	 ) 

# DISABLE_LS_COLORS="true"


# DISABLE_AUTO_TITLE="true"


ENABLE_CORRECTION="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder




source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#


# Example aliases
alias zshrc="nvim ~/.config/zsh/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh


if [ -e /home/othman/.nix-profile/etc/profile.d/nix.sh ]; then . /home/othman/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

