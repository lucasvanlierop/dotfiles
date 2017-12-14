source ~/.bash-env-vars
source ~/git-completion.bash

alias ctop='docker run -ti --name ctop --rm -v /var/run/docker.sock:/var/run/docker.sock quay.io/vektorlab/ctop:latest'
alias traefik='pkill stream_server && docker-compose -f ~/workspace/traefik/docker-compose.yml up -d'
complete -W "\`grep -oE '^[a-zA-Z0-9_-]+:([^=]|$)' Makefile | sed 's/[^a-zA-Z0-9_-]*$//'\`" make
