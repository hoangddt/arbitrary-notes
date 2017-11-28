```
sudo apt install -y apache2
sudo apt install -y mysql-server
sudo apt-get install php libapache2-mod-php php-mcrypt php-mysql

sudo systemctl restart apache2
sudo systemctl status apache2
```

Mysql User and Privillige

```
CREATE DATABASE wordpress;
CREATE USER wordpressuser@localhost IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON wordpress.* TO wordpressuser@localhost;
FLUSH PRIVILEGES;
```