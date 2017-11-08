# sublime
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
# java
sudo add-apt-repository -y ppa:webupd8team/java

sudo apt-get -y --force-yes update

sudo apt-get -y install mysql-server
sudo apt-get -y install phpmyadmin
sudo apt-get -y install sublime-text-installer
sudo apt-get -y install oracle-java8-installer oracle-java8-set-default
sudo apt-get -y install putty
sudo apt-get -y install filezilla

#installing phpstorm
wget https://download.jetbrains.com/webide/PhpStorm-2017.2.4.tar.gz
tar -xvf PhpStorm-2017.2.4.tar.gz
sudo mv PhpStorm-2017.2.4 phpstorm
sudo mv phpstorm /opt/

# google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -f




