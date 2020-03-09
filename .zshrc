# load configs
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi
if [ -f ~/.bashrc ]; then
 . ~/.bashrc
fi

# set paths
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="$HOME/miniconda3/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(direnv hook zsh)"

# set themes and fonts
ZSH_THEME=""
if [--e $HOME/.zsh/pure ]; then
  autoload -U promptinit; promptinit
  VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
  zstyle :prompt:pure:virtualenv color cyan
  prompt pure
  PURE_PROMPT_SYMBOL=(∫)
fi

source $ZSH/oh-my-zsh.sh

# editor & enable color support of ls
export EXPORT='vim'
export CLICOLOR=YES

# ls and grpe aliases
alias ls='ls -Gp'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# jupyter notebook aliases
alias nb="jupyter notebook --port=8888 --ip=0.0.0.0 --no-browser --NotebookApp.token='' --NotebookApp.password=''"
alias jb=nb
alias jn=jb
