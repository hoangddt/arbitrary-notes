### Add current user to docker groups, avoid using sudo

```sh
# Add the docker group if it doesn't already exist:

$ sudo groupadd docker
# Add the connected user "$USER" to the docker group.
# Change the user name to match your preferred user if you do not want to use your current user:

$ sudo gpasswd -a $USER docker
# Either do a newgrp docker or log out/in to activate the changes to groups.
# This logs you into the docker group
$ newgrp docker
```

ref: [How can I use docker without sudo?](https://askubuntu.com/questions/477551/how-can-i-use-docker-without-sudo)