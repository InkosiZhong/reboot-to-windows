echo "Install r2w (Reboot to Windows)"
install_path=/usr/local/bin
sudo cp r2w.sh $install_path
if [ -f $install_path/r2w ]; then
    sudo rm $install_path/r2w
fi
sudo ln -s $install_path/r2w.sh $install_path/r2w
sudo chmod +x $install_path/r2w.sh
sudo chmod +x $install_path/r2w
echo usage: r2w [n] # n (alter): system index
