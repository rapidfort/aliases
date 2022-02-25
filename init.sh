#!/bin/bash -ex
for f in .bashrc .docker_aliases .gdbinit .git_aliases .my_aliases .pylintrc .screenrc .vimrc .kubectl_aliases
do
    cp -f $f ~
done

docker_setup() {
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo sh get-docker.sh
    sudo curl -L "https://github.com/docker/compose/releases/download/1.29.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
}


#docker_setup
