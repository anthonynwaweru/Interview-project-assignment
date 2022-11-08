#! /bin/sh
#make sure you have created your SSH keys in home directory
#enter your server public ip Addre
echo 'enter ip address' 
read publicIp
# echo 'enter ssh key file name' 
# read keyFile
echo "enter user"
read user

 
ssh $user@$publicIp "

sudo apt-get update;
sudo apt-get upgrade;
sudo apt-get install ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
mkdir /var/discourse
sudo git clone https://github.com/discourse/discourse_docker.git /var/discourse;
cd /var/discourse;
sudo ./discourse-setup;
"


# when this :[<<"containers/app.yml memory parameters updated" >>] is diplayed on the terminal 
#Enter your personal details as shown below

#prompt 1, Hostname for your Discourse? [discourse.example.com]: 
    #ENTER

#prompt 2 Email address for admin account(s)? [me@example.com,you@example.com]:     
    #ENTER

#prompt 3 SMTP server address? [smtp.example.com]: 
    #Enter

#prompt 4 SMTP port? [587]: 
    #ENTER

#prompt 5 SMTP user name? [user@example.com]: 
    #ENTER

#prompt 6 SMTP password? [pa$$word]: 
    #ENTER

#prompt 7 Let's Encrypt account email? (ENTER to skip) [me@example.com]: 
    #ENTER

# Optional Maxmind License key () [xxxxxxxxxxxxxxxx]:
    #ENTER