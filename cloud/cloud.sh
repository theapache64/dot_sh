echo "###############################################"
echo "Cloud - v1.0"
echo "###############################################"


echo "Installing java repo..."
sudo add-apt-repository -y ppa:webupd8team/java

sudo apt-get -y --force-yes update

echo "Installing mysql"
sudo apt-get -y install mysql-server

echo "Installing php"
sudo apt-get -y install phpmyadmin

echo "Installing java"
sudo apt-get -y install oracle-java8-installer oracle-java8-set-default

echo "Installing tomcat"

#Creating tomcat group
sudo groupadd tomcat

#Creating tomcat user
sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat

#Downloading tomcat 8
curl -O http://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.23/bin/apache-tomcat-8.5.23.tar.gz

#Making system folder
sudo mkdir /opt/tomcat

#Extracting downloaded zip to system folder
sudo tar xzvf apache-tomcat-8.5.23.tar.gz -C /opt/tomcat --strip-components=1

cd /opt/tomcat
sudo chgrp -R tomcat /opt/tomcat
sudo chmod -R g+r conf
sudo chmod g+x conf
sudo chown -R tomcat webapps/ work/ temp/ logs/
wget "https://raw.githubusercontent.com/theapache64/dot_sh/master/cloud/tomcat.service" -O tomcat.service
sudo mv tomcat.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl start tomcat
sudo systemctl status tomcat
sudo ufw allow 8080
sudo systemctl enable tomcat

# Configure Tomcat Web Management Interface
wget "https://raw.githubusercontent.com/theapache64/dot_sh/master/cloud/tomcat-users.xml" -O "tomcat-users.xml"
sudo rm /opt/tomcat/conf/tomcat-users.xml
sudo mv "tomcat-users.xml" /opt/tomcat/conf/

#Enabling external access
sudo rm /opt/tomcat/webapps/manager/META-INF/context.xml
sudo rm /opt/tomcat/webapps/host-manager/META-INF/context.xml
wget https://raw.githubusercontent.com/theapache64/dot_sh/master/cloud/context.xml
sudo cp context.xml /opt/tomcat/webapps/manager/META-INF/
sudo cp context.xml /opt/tomcat/webapps/host-manager/META-INF/
sudo systemctl restart tomcat

#Htop
sudo apt-get install htop


echo "###############################################"
echo "Installation finished"
echo "###############################################"

