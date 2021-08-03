mkdir -p ~/Downloads/programs
cd ~/Downloads/programs

# Install NVM
echo 'Installing NVM...'
sudo apt install curl -y
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
source ~/.profile
nvm --version
echo 'NVM installed'

# Install NodeJS Erbium
echo 'Installing NodeJS Erbium...'
nvm install lts/erbium
echo 'NodeJS Erbium installed'

# Install Golang
echo 'Installing golang v1.16.6'
wget https://golang.org/dl/go1.16.6.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.16.6.linux-amd64.tar.gz
echo -en '\nexport PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
go version
echo 'Golang v1.16.6 installed'

# Install Snap
echo 'Installing snap...'
apt update
apt install snapd -y
snap install core
echo 'Snap installed'

# Install VS Code
echo 'Installing VS Code...'
snap install code --classic
echo 'VS Code installed'

# Install Android Studio
echo 'Installing Android Studio...'
snap install android-studio --classic
echo 'Android Studio installed'

# Install Flutter
echo 'Installing Flutter...'
snap install flutter --classic
echo 'Flutter installed'

# Install Brave
apt install apt-transport-https curl
curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
apt update
echo 'Installing Brave Browser...'
apt install brave-browser
echo 'Brave Browser installed'

# Install Chrome
cd ~/Downloads
echo 'Downloading Google Chrome...'
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
echo 'Installing Google Chrome...'
dpkg -i ./google-chrome-stable_current_amd64.deb
echo 'Google Chrome installed'

# Install Vim
echo 'Installing Vim...'
apt install vim

# Install Insomnia
echo 'Downloading & installing Insomnia...'
snap install insomnia

# Install HTOP
echo 'Installing HTOP...'
apt install htop

# Install Gnome Tweaks
echo 'Installing gnome tweaks'
apt install gnome-tweaks