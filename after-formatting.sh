sudo apt-get update
sudo apt-get autoremove
echo "|?| Start script"

# wget
sudo apt-get install -y wget curl
echo "|?| wget & curl"

# nvidia
sudo add-apt-repository ppa:xorg-edgers/ppa -y
sudo apt-get update
sudo apt-get install -y nvidia-current nvidia-prime

# spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client
echo "|?| spotify"

# google chrome
sudo apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P /tmp
sudo dpkg -i /tmp/google-chrome*.deb
echo "|?| chrome"

# vagrant virtual box
sudo apt-get install -y vagrant virtualbox
echo "|?| vagrant & virtualbox"

# git
sudo apt-get install -y git
echo "|?| git"

# easy tag
sudo apt-get install -y easytag
echo "|?| easytag"

#ffmpeg conversão de audio
sudo add-apt-repository ppa:mc3man/trusty-media 
sudo apt-get update
sudo apt-get -y install ffmpeg
echo "|?| ffmpeg"

# bug libmtp android
sudo apt-get -y install libmtpserver-dev mtp-server
echo "|?| libtmp android"

#gimp
sudo apt-get install -y gimp
echo "|?| gimp"

sudo apt-get install -y filezilla
echo "|?| filezilla"

#vlc
sudo apt-get install -y vlc
echo "|?| vlc"

# deadbeef
sudo add-apt-repository ppa:starws-box/deadbeef-player
sudo apt-get update
sudo apt-get install -y deadbeef
echo "|?| deadbeef"

# sublime 
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install -y sublime-text-installer
echo "|?| sublime"

# vim
sudo apt-get install -y vim
echo "|?| vim"

# nodejs
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get install -y nodejs
sudo ln -s /usr/bin/nodejs /usr/bin/node
sudo apt-get install -y npm
sudo npm -g install npm@latest
echo "|?| node & npm"

# grunt, gulp, bower
sudo npm install -g bower grunt gulp http-server livereload nodemon
echo "|?| gulp, grunt, bower, http-server

# dropbox
wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.10.28_amd64.deb -O /tmp/dropbox.deb
sudo dpkg -i /tmp/dropbox.deb
echo "|?| dropbox";

sudo apt-get install -y audacity
echo "|?| audacity";

sudo apt-get install openjdk-8-jdk openjdk-8-jre
echo "|?| open jdk";

# samba
sudo apt-get install -y samba
echo "|?| samba"

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java8-installer
sudo update-java-alternatives -s java-8-oracles
sudo apt-get install -y oracle-java8-set-default
echo "|?| oracle jdk";

sudo apt-get install -y gnome-system-monitor
echo "|?| system monitor"

# youtube-dl
sudo curl https://yt-dl.org/downloads/2016.02.13/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
echo "|?| youtube-dl"

# cria pasta de projetos
mkdir ~/projects
echo "alias projects='cd ~/projects'" >> ~/.bashrc
source ~/.bashrc
echo "|&| projects directory"

# generate key
ssh-keygen -t rsa -b 4096 -C "webalissoncs@gmail.com"
echo "|&| key generated"

#config git
git config --global user.name "Alisson Carvalho"
git config --global user.email webalissoncs@gmail.com
git config --global core.editor vim
echo "|&| git configured"

# set vim
echo "export EDITOR=/usr/bin/vim" >> ~/.bashrc
source ~/.bashrc
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/vim 100
echo "|&| vim configured"

# smb conf
echo "Insert smbpassword: "
sudo smbpasswd -a alisson
echo "
	[Projects]
	path = /home/alisson/projects
	valid users = alisson
	read only = no
" | sudo tee /etc/samba/smb.conf
sudo service smbd restart

# vim config
[ -d ~/.vim ] || mkdir ~/.vim
[ -d ~/.vim/colors ] || mkdir ~/.vim/colors
[ -d ~/.vim/bundle ] || mkdir ~/.vim/bundle
wget -O ~/.vim/colors/xoria256.vim http://www.vim.org/scripts/download_script.php?src_id=23975
touch ~/.vimrc
echo "
	set nocompatible   \" Disable vi-compatibility
	set t_Co=256
	colorscheme xoria256
	syntax on

	set linespace=15
	set showmode
	set autoindent
	set copyindent
	set ignorecase
	set mouse=a
	set number
" | sudo tee ~/.vimrc

sudo apt-get update
sudo apt-get autoremove

# vagrant box
vagrant box add ubuntu/trusty64 https://oss-binaries.phusionpassenger.com/vagrant/boxes/latest/ubuntu-14.04-amd64-vbox.box

