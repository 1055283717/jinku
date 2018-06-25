 tar xf mysql-5.5.49-linux2.6-x86_64.tar.gz -C /usr/local/
 cd /usr/local/
ln -s mysql-5.5.49-linux2.6-x86_64/ mysql
groupadd mysql
useradd -r -g mysql mysql
cd mysql
chown -R mysql .
chgrp -R mysql .
mkdir /data/mysql
chown -R mysql.mysql /data/mysq
/usr/local/mysql/scripts/mysql_install_db --user=mysql --datadir=/data/mysql/ --basedir=/usr/local/mysql

 chown -R root .
 cp support-files/my-medium.cnf /etc/my.cnf
 cp support-files/mysql.server /etc/init.d/mysqld
 chmod 755 /etc/init.d/mysqld 
