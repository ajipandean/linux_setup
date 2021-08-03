# remove firefox
sudo apt purge firefox -y

# remove unused app
sudo apt purge gnome-calendar -y
sudo apt purge gnome-contacts -y
sudo apt purge gnome-calculator -y
sudo apt purge gnome-getting-started-* -y
sudo apt purge gnome-user-* -y
sudo apt purge gnome-weather -y
sudo apt purge libreoffice* -y
sudo apt purge mythes-* -y
sudo apt purge pop-shop -y
sudo apt purge geary -y


sudo apt autoremove -y