# ls
alias ls='ls -Gp'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias cd_recent='cd  "$(\ls -1dt ./*/ | head -n 1)"'

# grep
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# json
alias ppjson="python -m json.tool"

# jupyter notebook aliases
alias jn="jupyter notebook --port=8888 --ip='0.0.0.0' --NotebookApp.token='' --NotebookApp.password=''"
alias nb=jn
alias jnr="jupyter notebook --port=8888 --ip='0.0.0.0' --no-browser --NotebookApp.token='' --NotebookApp.password='' --allow-root"
alias nbr=jnr
