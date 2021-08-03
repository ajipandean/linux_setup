##################
## APT PACKAGES ##
##################
sudo apt update

# install brave-browser
sudo apt install apt-transport-https curl
curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser -y
echo "installing brave-browser...done\n"

# install vim
sudo apt install vim -y
echo "installing vim...done\n"

# install htop
sudo apt install htop -y
echo "installing htop...done\n"

# install snap
sudo apt update
sudo apt install snapd -y
sudo snap install core
echo "installing snap...done\n\n"

###################
## SNAP PACKAGES ##
###################
# install vscode
sudo snap install code --classic
echo "installing code...done\n\n"

# install android-studio
sudo snap install android-studio --classic
echo "installing android-studio...done\n\n"

# install flutter
sudo snap install flutter --classic
echo "installing flutter...done\n\n"

# install insomnia
sudo snap install insomnia
echo "installing insomnia...done\n\n"

sudo snap refresh

#####################
## REMOTE PACKAGES ##
#####################
# install google-chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i ./google-chrome-stable_current_amd64.deb
echo "installing google-chrome...done\n\n"

# install docker
sudo apt remove docker docker-engine docker.io containerd runc
sudo apt install apt-transport-https ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
apt-cache madison docker-ce
echo "sudo apt install docker-ce=<version> docker-ce-cli=<version> containerd.io"