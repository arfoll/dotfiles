export PATH=$PATH:/home/brendan/bin

if [ -f ~/.agent.env ] ; then
    . ~/.agent.env > /dev/null
if ! kill -0 $SSH_AGENT_PID > /dev/null 2>&1; then
    echo "Stale agent file found. Spawning new agent¿~@¿ "
    eval `ssh-agent | tee ~/.agent.env`
    ssh-add
fi
else
    echo "Starting ssh-agent"
    eval `ssh-agent | tee ~/.agent.env`
    ssh-add
fi

zstyle ':prompt:grml:right:items:host' pre '%F{magenta}'
#zstyle ':prompt:elite2:magenta' pre '%F{magenta}'
#zstyle ':prompt:elite2' pre '%F{magenta}'

source /usr/share/nvm/init-nvm.sh
