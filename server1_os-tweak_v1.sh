# Fetches the list of available updates
apt-get update

# Strictly upgrades the current packages
apt-get upgrade  

# Installs updates (new ones)     
apt-get dist-upgrade  

#install apache2, MYSql, PHP5(All included)
apt-get install lamp-server^

#Download latest wordpress istall
wget http://wordpress.org/latest.tar.gz

#Untar
tar xzf latest.tar.gz

#Go into directory
cd ~/wordpress

#Transfer worpress files to the correct location
rsync -avP ~/wordpress/ /var/www/html/
