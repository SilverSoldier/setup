# To setup system based on my configurations

# Step 3: dwm specific changes

# optional: adds battery and date in dwm
cp ~/customization/dotfiles/.xinitrc ~/

mkdir my-dwm
cp -R ~/customization/my-dwm/* ~/my-dwm/

# make dwm changes happen
cd ~/my-dwm
echo "---> Make dwm"
sudo make install
# ===================== needs restart ========================
