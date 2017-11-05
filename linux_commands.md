# Linux Commands

## Grep
[link](http://dev-notes.eu/2016/10/grep-commands-cheatsheet/)
```sh
# basic syntax
grep 'target string' /var/log/filename.log

# ignore case
grep -i 'david' /var/log/auth.log

# recursive search
grep -r "example.com/about" /var/log/

# whole word
grep -w "example" /var/log/filename.log

# multiple words using egrep
egrep -w "david|elaine" /var/log/auth.log

```


