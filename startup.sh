#!/bin/bash
sudo apt update -y
sudo apt upgrade -y     
sudo apt full-upgrade -y
sudo apt autoremove -y
sudo apt install python3-pip
ln -s /mnt/c/users/vernon/desktop desktop
if [ "$(tail -n 1 ~/.bashrc)" != "#" ]
then
    echo "alias desktop='cd && cd desktop'" >> ~/.bashrc
    echo "alias daltz='cd && cd desktop/project-101-daltz'" >> ~/.bashrc
    echo "alias capstone='cd && cd desktop/capstone'" >> ~/.bashrc
    echo "alias untar='tar -xvf'" >> ~/.bashrc
    echo "alias runserver='python3 manage.py makemigrations && python3 manage.py migrate && python3 manage.py runserver'" >> ~/.bashrc
    echo "alias runtest='python3 manage.py test'" >> ~/.bashrc
    echo "alias python='python3'" >> ~/.bashrc
    echo "alias pip='pip3'" >> ~/.bashrc
    echo "alias bashrc='nano ~/.bashrc'" >> ~/.bashrc
    echo "#" >> ~/.bashrc
fi
