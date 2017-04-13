source ~/.bash-env-vars

alias ctop='docker run -ti --name ctop --rm -v /var/run/docker.sock:/var/run/docker.sock quay.io/vektorlab/ctop:latest'
alias traefik='pkill stream_server && docker-compose -f ~/workspace/traefik/docker-compose.yml up -d'
