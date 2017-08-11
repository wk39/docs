# Ubuntu Setup

## Web-browser
*  chrome - from website


## Markdown Editor
*  remarkable - from website (recommended)
or
*  ReText - from apt-get

## Keyboard

* capslock to control
```sh
sudo apt-get install gnome-tweak-tool
# select Typing > Ctrl key position > "Caps Lock as Ctrl"
```

## Vim
### Ubuntu packages
*  vim-gtk - from apt-get
*  fonts-hack-ttf - from apt-get
### Plugins
*  Vundle - <https://github.com/VundleVim/Vundle.vim>
*  YouCompleteMe - <https://github.com/Valloric/YouCompleteMe>



## Python and Virtualenv
* virtualenvwrapper [link](http://chrisstrelioff.ws/sandbox/2014/09/04/virtualenv_and_virtualenvwrapper_on_ubuntu_14_04.html#virtualenvs-on-ubuntu-14-04)
```sh
sudo apt-get install python3-pip
pip3 install virtualenvwrapper

# (.bashrc - append below lines) --> better in .profile
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=$HOME/ve
export PROJECT_HOME=$HOME/veprj
source $HOME/.local/bin/virtualenvwrapper.sh  # .bashrc

# .profile - add path .local/bin
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# make virtualenv profile and run
mkvirtualenv qt5
workon qt5
deactivate
```
* own library (add path)
```sh
# add lines in ~/.profile
if [ -d "$HOME/git/utils_python" ] ; then
    export PYTHONPATH="$HOME/git/utils_python:$PYTHONPATH"
fi
```


## PyQt5
```sh
sudo apt-get install pyqt5-dev-tools    # pyuic5
sudo apt-get install qt4-designer       # qt designer
```

## Remote Desktop

remote desktop for unity (ubuntu default)
[reference](ubuntuhandbook.org/index.php/2016/07/remote-access-ubuntu-16-04)
```sh
# ubuntu menu > desktop shareing >
#  v 'allow other users to view ...'
#  v 'allow other users to control ...'
#  v 'require user to enter this password'

sudo apt-get install dconf-editor
# run and uncheck 'org/gnome/desktop/remote-access/require-encription'
# access through tightvnc (ip address only. not with passwd)
```


## Misc
### markdown cheatsheet
https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet
