sudo wget "https://dl.google.com/dl/android/studio/ide-zips/3.0.1.0/android-studio-ide-171.4443003-linux.zip" -O studio.zip
cd /opt
sudo mkdir android_studio
sudo unzip studio.zip -d android_studio
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386
sh android_studio/bin/studio.sh
