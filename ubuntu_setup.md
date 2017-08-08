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

# .bashrc - append below lines
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=$HOME/virtenvs
#export PROJECT_HOME=$HOME/Project-Active
source $HOME/.local/bin/virtualenvwrapper.sh

# .profile - add path .local/bin
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# make virtualenv profile and run
mkvirtualenv qt5
workon qt5
deactivate
```

## PyQt5
```sh
sudo apt-get install pyqt5-dev-tools    # pyuic5
sudo apt-get install qt4-designer       # qt designer
```


## Misc
### markdown cheatsheet
https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet
