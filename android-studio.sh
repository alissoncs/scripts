
# installation of android studio

URL="https://dl.google.com/dl/android/studio/ide-zips/2.0.0.20/android-studio-ide-143.2739321-linux.zip"
DEST="/tmp/android-studio.zip"

wget "${URL}" -O "${DEST}"
[ -f "${DEST}" ] && unzip "${DEST}"
rm -rf "${DEST}"
# sudo mv /tmp/android-studio /opt/android-studio

sudo apt-get install -ydd lib32z1 lib32ncurses5 lib32bz2-1.0 lib32stdc++6

# sudo mkdir /opt/android-sdk
sudo chown $USER:$USER /opt/android-sdk

# mv android studio
echo "export ANDROID_HOME=/opt/android-sdk" >> ~/.bashrc
