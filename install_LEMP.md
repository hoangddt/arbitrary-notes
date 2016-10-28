## Install LEMP stack in Ubuntu

1. Install nginx

```
sudo apt-get update
sudo apt-get install -y nginx
# go to localhost to see if nginx appear or not
```

2. Install MySQl

```
sudo apt-get install -y mysql-server
# generate the directory structure it needs to store its databases and information
# sudo mysql_install_db -> don't need
```

3. Install PHP

```
sudo apt-get install -y php-fpm php-mysql
# alternative
# sudo apt-get install php5-fpm php5-mysql # for php 5
# more seure by change `cgi.fix_pathinfo=0` in `/etc/php/7.0/fpm/php.ini`
# restart
sudo systemctl restart php7.0-fpm
# sudo service php5-fpm restart
sudo apt-get install php-gd php-curl php-mcrypt php-zip
```

Configure PHP
Change in `/etc/nginx/sites-available/default`

```
server {
    listen 80 default_server;
    listen [::]:80 default_server;

    root /var/www/html;
    # add index.php
    index index.php index.html index.htm index.nginx-debian.html;

    server_name server_domain_or_IP;

    location / {
        try_files $uri $uri/ =404;
    }
	
	# uncommend 2 blocks below
    location ~ \.php$ {
        include snippets/fastcgi-php.conf;
        fastcgi_pass unix:/run/php/php7.0-fpm.sock;
    }

    location ~ /\.ht {
        deny all;
    }
}
```

Root: `/var/www/html`