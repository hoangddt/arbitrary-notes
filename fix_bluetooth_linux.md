## fixed bluetooth not working in ubuntu 15.10
Card: BCM43225 (`lspci`)
Do:
    - Choose Broadcom driver in additional Driver
    - cd /etc/modprobe.d/ and then sudo gedit blacklist.conf. Put a # in front of the line: blacklist bcm43xx
    - sudo reboot
[source](http://askubuntu.com/questions/55868/installing-broadcom-wireless-drivers)