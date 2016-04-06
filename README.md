# conifg
My configuration files. This repository is a backup of my config files. It is mainly to ease transition between computers and reduce setup times.

## Current tech
- OSX El Capitan for OS
- iTerm2 for Terminal
- MacVim for editor
- Fish for shell
- Homebrew for packages

## Colors
- Solarlized Dark for iTerm
- Base-16 Monokai for MacVim

## Font
- Hack

# How to configure
1. Install [iterm2](https://www.iterm2.com/)
2. Install command line tools/xcode
3. Install [homebrew](http://brew.sh/)
4. Download and install [Hack font](https://github.com/powerline/fonts/tree/master/Hack)
5. Install [fish](https://fishshell.com/)
6. add usr/local/bin/fish to /ect/shells
7. chsh -s usr/local/bin/fish
8. set -U fish_user_paths /usr/local/bin $fish_user_paths
9. brew install macvim --with-override-system-vim
10. brew link --overwrite macvim
11. git clone config
12. cp ~/.config/vim/.vimrc ~/.vimrc
13. ln -s  ~/.vimrc ~/.config/vim/.vimrc
15. git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
16. mvim +PluginClean +pluginInstall 
17. set -Ux EDITOR mvim
