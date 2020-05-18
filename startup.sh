#!/bin/bash
sudo apt update -y
sudo apt upgrade -y
sudo apt full-upgrade -y
sudo apt install python3-pip -y
sudo apt autoremove -y
ln -s /mnt/c/users/vernon/desktop desktop
git config --global user.email "andradevern@gmail.com"
git config --global user.name "Vernon Andrade"
if [ "$(tail -n 1 ~/.bashrc)" != "#" ]
then
    echo "alias desktop='cd && cd desktop'" >> ~/.bashrc
    echo "alias untar='tar -xvf'" >> ~/.bashrc
    echo "alias runserver='python3 manage.py makemigrations && python3 manage.py migrate && python3 manage.py runserver'" >> ~/.bashrc
    echo "alias runtest='python3 manage.py test'" >> ~/.bashrc
    echo "alias python='python3'" >> ~/.bashrc
    echo "alias py='python3'" >> ~/.bashrc
    echo "alias pip='pip3'" >> ~/.bashrc
    echo "alias bashrc='nano ~/.bashrc'" >> ~/.bashrc
    echo "#" >> ~/.bashrc
fi
rm startup.sh
