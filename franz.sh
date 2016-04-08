path="http://bit.ly/21JbbKp"
dest="/tmp/franz.tar"

# download
wget "${path}" -O "${dest}"

# unzip
tar -zxvf "{$dest}"
sudo mv /tmp/franz /opt/franz

# desktop icon
echo "
[Desktop Entry]
Version=1.0
Name=Franz
Comment=Franz is a free messaging app
Exec=/opt/franz/Franz
Path=/opt/franz
Terminal=false
Type=Application
Categories=Utility;;
">> /tmp/franz.desktop

sudo mv /tmp/franz.desktop /usr/share/applications/franz.desktop
