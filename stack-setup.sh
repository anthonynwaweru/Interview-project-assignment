#! /bin/bash
#make sure you have created your SSH keys in home directory
#enter your server public ip Addre
echo 'enter ip address' 
read publicIp
# echo 'enter ssh key file name' 
# read keyFile
echo "enter user"
read user
ssh $user@$publicIp  "
sudo -s;
sudo apt update;
sudo apt-get upgrade;
sudo apt install docker;
git clone https://github.com/discourse/discourse_docker.git /var/discourse;
cd /var/discourse;
./discourse-setup;
"