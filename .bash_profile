

#=============================================================================
# FUN

# alias clear='echo No'

# alias Comment_ca_va?='python3 ${HOME}/Desktop/Comment_ça_va.py'

#=============================================================================
# No Fun

# alias python='python3.8'

# alias pip='pip3.8'


# creates a new terminal window
function new() {
    if [[ "$TERM_PROGRAM" == "iTerm.app" ]]; then
        app_name="iTerm"
    else
        app_name="Terminal"
    fi

    if [[ $# -eq 0 ]]; then
        open -a "$app_name" "$PWD"
    else
        open -a "$app_name" "$@"
    fi
}

# alias ls='ls -G'

alias lls='ls -alG'

alias custom_java_versions='/usr/libexec/java_home -V'

# Quickly launch nmvcml jupyter notebook
alias custom_nmvcml_source='cd ~/progprojects/nmvcml && source venv/bin/activate'
alias custom_nmvmcl_jnote='custom_nmvcml_source && jupyter notebook'


# For computer graphics. Launch server and open firefox
alias custom_cgraphics_launch='cd ~/progprojects/cgraphics && open -a firefox http://localhost:8000/ && python3 -m http.server'

alias custom_shaderpacks='cd /Users/mroust/Library/Application\ Support/minecraft/shaderpacks'


# alias custom_ada='conda activate ada && cd ~/code/ada && jupyter notebook'

#=============================================================================


# DEPRECATE THIS
# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
# export PATH


test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

#=============================================================================
# FunProg Config

export JAVA_HOME=`/usr/libexec/java_home -v 1.8.0_222`
export PATH="$JAVA_HOME/bin:$PATH"

#=============================================================================
# LauzHack Config

# export JAVA_HOME="$(/usr/libexec/java_home)"
# export PATH="$JAVA_HOME/bin:$PATH"
# export PATH_TO_FX=/Users/mroust/progprojects/hackerbros/raw_java_packages/javafx-sdk-13.0.1/lib

#=============================================================================

# COMMENTED TEMP

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
# export SDKMAN_DIR="/Users/mroust/.sdkman"
# [[ -s "/Users/mroust/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/mroust/.sdkman/bin/sdkman-init.sh"


#=============================================================================

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/mroust/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
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
