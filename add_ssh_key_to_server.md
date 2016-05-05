[reference](https://www.digitalocean.com/community/tutorials/how-to-use-ssh-keys-with-digitalocean-droplets)

### create .ssh key

```
$ ssh-keygen -t rsa
$ # copy the following ssh key and paste to server
$ cat ~/.ssh/id_rsa.pub
```

### add keys to already created droplets

```
# Append ssh key to  ~/.ssh/authorized_keys
$ cat ~/.ssh/id_rsa.pub | ssh root@[your.ip.address.here] "cat >> ~/.ssh/authorized_keys"
```

### create new user have root privileges

```
    $ adduser demo
    $ gpasswd -a demo sudo
```

### Add ssh key to the new user
[reference](https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-14-04)
New user will login by password, now we need add ssh to avoid password

Do: create a `.ssh` folder in user home's directory. Add key to `.ssh/authorized_keys` -> Done

```
    $ su - demo # switch from root to new created user (demo is username)
    $ mkdir .ssh
    $ chmod 700 .ssh
    $ touch .ssh/authorized_keys
    $ cat >> .ssh/authorized_keys
    $ # insert ssh key (cat .ssh/id_rsa.pub in local machine)
    $ chmod 600 .ssh/authorized_keys
    $ exit # exit to root
```