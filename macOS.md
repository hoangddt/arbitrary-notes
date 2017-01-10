# JAVA_HOME
`$ echo $(/usr/libexec/java_home -v 1.8)`

# system-wide variables
Edit `/etc/profile`

## Not writable
`$ sudo chown -R `whoami`:admin /usr/local/share`
`sudo chown -R `whoami`:admin /usr/local/bin`
http://stackoverflow.com/questions/26647412/homebrew-could-not-symlink-usr-local-bin-is-not-writable