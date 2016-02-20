
# installation of android studio

wget https://dl.google.com/dl/android/studio/ide-zips/1.5.1.0/android-studio-ide-141.2456560-linux.zip -P /tmp/
[ -f /tmp/android-studio-ide-*-linux.zip ] && unzip /tmp/android-studio-ide-*-linux.zip
rm -rf /tmp/android-studio-ide-*-linux.zip
sudo mv /tmp/android-studio /opt/android-studio

sudo apt-get install -ydd lib32z1 lib32ncurses5 lib32bz2-1.0 lib32stdc++6

sudo mkdir /opt/android-sdk
sudo chown alisson:alisson /opt/android-sdk

# mv android studio
echo "export ANDROID_HOME=/opt/android-sdk" >> ~/.bashrc