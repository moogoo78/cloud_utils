#!/bin/bash


BUILD_TOOLS='gcc python-devel'
DEV_TOOLS='git vim'
SERV_DB='mysql-devel mysql-python'

function setup_python_env()
{
    # virtualenv
    wget https://bootstrap.pypa.io/get-pip.py
    sudo python get-pip.py
    sudo pip install virtualenv virtualenvwrapper

    # write to .bashrc
    echo -e "export WORKON_HOME=$HOME/.virtualenvs\nexport PROJECT_HOME=$HOME/Devel\nsource /usr/bin/virtualenvwrapper.sh" >> .bashrc

    rm get-pip.py
}

# for centos-6.5

## os package update & install
sudo yum update -y
sudo yum install -y $BUILD_TOOLS $DEV_TOOLS $SERV_DB

## setup python environment
setup_python_env


