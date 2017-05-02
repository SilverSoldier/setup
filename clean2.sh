# script to cleanup after my setup attempt, due to failure while testing

# Step 2

echo "~~~Restoring vimrc ..."
rm ~/.vimrc
mv ~/.vimrc_old ~/.vimrc

echo "~~~Restoring bashrc ..."
rm ~/.bashrc
mv ~/.bashrc_old ~/.bashrc

echo "~~~Restoring aliases ..."
rm ~/.aliases
mv ~/.aliases_old ~/.aliases

echo "~~~Restoring tmux.conf ..."
rm ~/.tmux.conf
mv ~/.tmux.conf_old ~/.tmux.conf

echo "~~~Restoring Xresources ..."
rm ~/.Xresources
mv ~/.Xresources_old ~/.Xresources

