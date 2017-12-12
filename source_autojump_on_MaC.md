## Install
[autojump](https://github.com/wting/autojump)

```
brew install autojump
```

## Activate autojump script

Script can be found in:
```
# MAC: $(brew --prefix)/etc/profile.d
# linux: /usr/share/autojump
```

```
# MAC
echo "source /usr/local/etc/profile.d/autojump.sh" >> ~/.zshrc
```

## Troubleshoot

Just add a line:
```
source "<autojump script>"
```
in the end of your shell file: `.bashrc`, `.zshrc`,...