# To setup system based on my configurations

# Step 2: back up old files and replace with new files from customization folder

cd

echo "--> Back up old bashrc"
# Backup old bashrc
mv ~/.bashrc ~/.bashrc_old || :
cp ~/customization/dotfiles/.bashrc ~/

echo "--> Back up old vimrc"
# Backup old vimrc
mv ~/.vimrc ~/.vimrc_old || :
cp ~/customization/dotfiles/.vimrc ~/

echo "--> Installing plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "--> Installing vim plugins"
vim +PlugInstall +qall

echo "--> Back up old aliases"
# Backup old bash_aliases
mv ~/.aliases ~/.aliases_old || :
cp ~/customization/dotfiles/.aliases ~/

echo "--> Back up old gitconifg"
# Backup old gitconfig
mv ~/.gitconfig ~/.gitconfig_old || :
cp ~/customization/dotfiles/.gitconfig ~/

cd
echo "--> Installing tmux in case not already installed"
# install tmux
sudo apt-get install tmux

echo "--> Back up old tmux_conf"
# Backup old tmux_conf
mv ~/.tmux_conf ~/.tmux_conf_old || true
cp ~/customization/dotfiles/.tmux.conf ~/

echo "--> Installing urxvt in case not already installed"
# install urxvt
sudo apt-get install rxvt-unicode

cd
echo "--> Back up old urxvt configuration"
# Backup old Xresources
mv ~/.Xresources ~/.Xresources_old || :
mv ~/customization/dotfiles/.Xresources ~/

# apt-get some necessary applications

sudo apt-get install zathura
