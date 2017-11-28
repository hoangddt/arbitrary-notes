#### Right way
[Gigital Ocean guide with wordpress](https://www.digitalocean.com/community/tutorials/how-to-install-wordpress-with-lamp-on-ubuntu-16-04)

```
sudo chown -R <usernam>:www-data /var/www/html
cd html
sudo find /var/www/html -type d -exec chmod g+s {} \;
cd wordpress
sudo chmod g+w /var/www/html/wp-content
sudo chmod g+w /var/www/html/wordpress/wp-content
sudo chmod -R g+w /var/www/html/wordpress/wp-content/themes
sudo chmod -R g+w /var/www/html/wordpress/wp-content/plugins

chmod g+w wordpress
```

### Quick fix all permisssion issue
```
sudo chown -R www-data /var/www/html

```