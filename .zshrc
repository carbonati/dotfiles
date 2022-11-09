# load configs
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

if [ -f ~/.bashrc ]; then
 . ~/.bashrc
fi

if [ -f ~/.bash_profile ]; then
 . ~/.bash_profile
fi

# environment variables
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="$HOME/miniconda3/bin:$PATH"
export CUDA_HOME=/usr/local/cuda
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64
export PATH=$PATH:$CUDA_HOME/bin
export PY_VERSION='3.6.5'

if [ -d "$HOME/.pyenv" ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
fi

if [ -f "$HOME/.direnvrc" ]; then
  eval "$(direnv hook zsh)"
fi

if [ -f "/usr/local/bin/pipenv" ]; then
  eval "$(pipenv --completion)"
fi

# zsh themes, fonts, and settings
ZSH_THEME=""
pure_path="/usr/local/share/zsh/site-functions/prompt_pure_setup"

if [[ -f $pure_path || -d "$HOME/.zsh/pure" ]]; then
  fpath=( "$HOME/.zfunctions" $fpath )
  autoload -U promptinit; promptinit
  prompt pure
  PURE_PROMPT_SYMBOL=(∫)
fi

if [ -f $ZSH/oh-my-zsh.sh ]; then
  . $ZSH/oh-my-zsh.sh
fi

# syntax highlighting
if [ -f "$HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]; then
  . $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
  ZSH_HIGHLIGHT_STYLES[path]=none
  ZSH_HIGHLIGHT_STYLES[path_prefix]=none
fi

# editor & enable color support of ls
export EXPORT='vim'
export CLICOLOR=YES
export TERM=screen-256color
