mkdir /srv/backup
mkdir /srv/backup/database
mkdir /srv/backup/mysql
mysqldump -u root --password=passwordhere wordpress > /srv/backup/database/2016-04-07_wordpress.sql
mysqldump -u root --password=passwordhere mysql > /srv/backup/database/2016-04-07_mysql.sql
cp /etc/mysql/my.cnf /srv/backup/mysql/2016-04-07_my.cnf
cd /srv/
tar czf 2016-04-07_backup.tar.gz /srv/backup
scp /srv/2016-04-07_backup.tar.gz richy@10.165.16.50:/home/richy/backup
rm -rf /srv/*
