# Requirements

## 1. Set-up an account with a cloud computing provider.

In my case I used [Digitalocean](digitalocean.com)

## 2. Created a Virtual Server

I created a [droplet server](https://cloud.digitalocean.com/droplets), and I also created SSH keys for user authentication

## 3. Prepared host server Domain name and set-up email and SMTP server Address

I used my domain name which is hosted on [name cheap](namecheap.com)
I set-up a record name {discourse.mydomain.com} then pointed it to my host server using the public ip address for my host server
I set-up my SMTP server through [mailgun.com](mailgun.com), configured dns settings through my domain host

## 4. SSH into user account

ssh user@{host server public ip address goes here}

## 5. Installed Discourse by running the following commands

1. git clone https://github.com/discourse/discourse_docker.git /var/discourse
2. cd /var/discourse
3. chmod 700 containers

## 6. Set-up discourse configurations by doing the following

1. run ./disccourse-setup

##### Prompted with the following questions:

-Hostname for your discourse ? {discourse.mydomain.com};
-Email address for admin account ? {myemail@mydomain.com / myemail@gmail.com};
-SMTP server address ? {smtp.mailgun.com};
-SMTP port ? [587]: {enter};
-SMTP user name ? {myemail@discourse.mydomain.com};
-SMTP password ? {password provided by SMTP provider};
-Let's Encrypt account email? (ENTER to skip) {myemail@mydomain.com}:
-Optional Maxmind License key () [xxxxxxxxxxxxxxxx] {Skipped this one}:

## 7. Set-up was complete

On this step all I had to do was register new account as Admin and all was good to go.
Accessed my discourse through the web browser [Anthony's Hangout](discourse.anthonynwaweru.com)
