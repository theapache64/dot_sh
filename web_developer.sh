echo "###############################################"
echo "WEB DEVELOPER - v1.0"
echo "###############################################"


echo "Installing sublime repo..."
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3

echo "Installing java repo..."
sudo add-apt-repository -y ppa:webupd8team/java

echo "Installing netspeed indicator repo"
sudo add-apt-repository ppa:nilarimogard/webupd8

sudo apt-get -y --force-yes update

echo "Installing mysql"
sudo apt-get -y install mysql-server

echo "Installing php"
sudo apt-get -y install phpmyadmin

echo "Installing sublime"
sudo apt-get -y install sublime-text-installer

echo "Installing java"
sudo apt-get -y install oracle-java8-installer oracle-java8-set-default

echo "Installing putty"
sudo apt-get -y install putty

echo "Installing filezilla"
sudo apt-get -y install filezilla

echo "Installing netspeed indicator"
sudo apt-get install indicator-netspeed


echo "Installing phpstorm"
#installing phpstorm
wget https://download.jetbrains.com/webide/PhpStorm-2017.2.4.tar.gz
tar -xvf PhpStorm-2017.2.4.tar.gz
sudo mv PhpStorm-2017.2.4 phpstorm
sudo mv phpstorm /opt/


echo "Installing google chrome"
# google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -f




echo "###############################################"
echo "Installation finished"
echo "###############################################"

