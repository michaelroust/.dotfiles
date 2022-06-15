
#=============================================================================
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#=============================================================================
# Personal Configs

alias ip='ipython'
alias jn='jupyter notebook'
alias jl='jupyter lab'

alias custom_open_dotfiles='cd ~/code/.dotfiles && code .'

alias custom_java_versions='/usr/libexec/java_home -V'

# Random pass generator. Input length after alias. Example custom_gen_password 16
# alias custom_gen_password='openssl rand -base64'

alias custom_gen_password='f() { openssl rand -base64 $1 | tee >(pbcopy) }; f'


#=============================================================================
# Antigen

# Load Antigen
source /usr/local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Load bundles from the default repo (oh-my-zsh)
antigen bundle git
antigen bundle command-not-found

# Load bundles from external repos
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
# antigen theme robbyrussell
antigen theme romkatv/powerlevel10k

# Tell Antigen that you're done.
antigen apply

#=============================================================================
# Powerlevel10k

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#=============================================================================
# iTerm2
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

#=============================================================================
# Java
# installed with `brew install openjdk@8`

export JAVA_HOME=`/usr/libexec/java_home -v 1.8.0_`
export PATH="$JAVA_HOME/bin:$PATH"

#=============================================================================
# SDKMAN

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
# export SDKMAN_DIR="/Users/mroust/.sdkman"
# [[ -s "/Users/mroust/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/mroust/.sdkman/bin/sdkman-init.sh"

#=============================================================================
# Anaconda

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/mroust/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/mroust/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/mroust/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/mroust/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

#=============================================================================
