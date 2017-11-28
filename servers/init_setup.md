[Timezone](https://www.digitalocean.com/community/tutorials/how-to-set-up-time-synchronization-on-ubuntu-16-04):

```sh
    timedatectl
    date
    timedatectl list-timezones
    sudo timedatectl set-timezone Asia/Ho_Chi_Minh
    date
    timedatectl
    sudo timedatectl set-ntp on
```

[Adduser](https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-16-04):

```sh
adduser sammy
usermod -aG sudo sammy

# change to newly created user
su - sammy

```

### Password authentication
```
sudo nano /etc/ssh/sshd_config
# Change PasswordAuthentication no
sudo systemctl reload sshd
```

[Allowport](https://www.digitalocean.com/community/tutorials/additional-recommended-steps-for-new-ubuntu-14-04-servers)