#!/bin/bash

clear
echo " "
echo "                              LINUX-MINT-ESSENTIALS               "
echo " "
echo " "
echo "The Linux-Mint-Essentials script was created by Theofilos Chamalis for free"
echo "use by anyone!!"
echo "Enjoy!!"
echo " "
echo " "
echo "*****************"
echo "Hello $USER!!!"
echo "*****************"
echo " "
echo " "
echo " "
echo "==============================================================================="
echo "*******************************************************************************"
echo ""
echo "You must be logged in as root (type su before running the script) to begin"
sleep 5
echo "Starting script now"
sleep 2
echo "..."
sleep 2
echo ".."
sleep 2
echo "."
sleep 2
echo ""
echo ""
cd /home/
#Add ppas
#===============================================================================
echo "*******************************"
echo "Adding PPAs"
sleep 2
echo "..."
sleep 2
echo ".."
sleep 2
echo "."
sleep 2
echo ""
echo ""
add-apt-repository ppa:danielrichter2007/grub-customizer -y
add-apt-repository -y ppa:teejee2008/ppa -y
add-apt-repository -y ppa:libreoffice/ppa -y
add-apt-repository -y ppa:ubuntu-wine/ppa -y
add-apt-repository ppa:atareao/atareao
add-apt-repository -y ppa:webupd8team/java -y
add-apt-repository -y ppa:webupd8team/tor-browser -y
dd-apt-repository -y ppa:webupd8team/sublime-text-2 -y
add-apt-repository ppa:numix/ppa -y
sh -c 'echo "deb http://repository.spotify.com/ stable non-free" > /etc/apt/sources.list.d/spotify.list'
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59 -y
echo ""
echo ""
#Update sources
#===============================================================================
echo "*******************************"
echo "Updating sources"
sleep 2
echo "..."
sleep 2
echo ".."
sleep 2
echo "."
sleep 2
echo ""
echo ""
apt-get -q -y -m update
echo ""
echo ""
#Starting installations
#===============================================================================
echo "*******************************"
echo "Starting installations"
sleep 2
echo "..."
sleep 2
echo ".."
sleep 2
echo "."
sleep 2
echo ""
echo ""
apt-get -q -y install grub-customizer
apt-get -q -y install wine1.7
apt-get -q -y install oracle-java8-installer oracle-java8-set-default
apt-get -q -y install tor-browser
apt-get -q -y install sublime-text
apt-get -q -y install skype
apt-get -q -y install numix-icon-theme-circle
apt-get -q -y install numix-icon-themebevel
apt-get -q -y install numix-tools
apt-get -q -y install numix-icon-theme
apt-get -q -y install numix-gtk-theme
apt-get -q -y install spotify-client
apt-get -q -y install nestopia
apt-get -q -y install teamviewer
apt-get -q -y purge libreoffice*
apt-get -q -y install libreoffice
apt-get -q -y install bleachbit
apt-get -q -y install filezilla 
apt-get -q -y install my-weather-indicator
echo ""
echo ""
#Download software directly from internet
#===============================================================================
echo "*******************************"
echo "Download and install software "
echo "directly from internet"
sleep 2
echo "..."
sleep 2
echo ".."
sleep 2
echo "."
sleep 2
echo ""
echo ""
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget http://download.cdn.viber.com/cdn/desktop/Linux/viber.deb
dpkg -i --force-all google-chrome-stable_current_amd64.deb
dpkg -i --force-all viber.deb
rm -rf google-chrome-stable_current_amd64.deb
rm -rf viber.deb
mkdir Popcorn-Time
mkdir Nestopia-ROMS
chmod 777 Nestopia-ROMS/ -R
chmod 777 Popcorn-Time/ -R
cd Nestopia-ROMS/
wget https://dl.dropboxusercontent.com/u/25024443/supermario.nes
cd ../Popcorn-Time/
wget https://get.popcorntime.io/build/Popcorn-Time-0.3.8-2-Linux-64.tar.xz
chmod 777 Popcorn-Time-0.3.8-2-Linux-64.tar.xz -R
tar xf Popcorn-Time-0.3.8-2-Linux-64.tar.xz
rm -rf Popcorn-Time-0.3.8-2-Linux-64.tar.xz
cd ..
chmod 777 Popcorn-Time/ -R
chmod 777 Nestopia-ROMS/ -R
echo ""
echo ""
#Download and install the Linux Kernel 4.1.5
#===============================================================================
echo "*******************************"
echo "Install Linux Kernel 4.1.5"
sleep 2
echo "..."
sleep 2
echo ".."
sleep 2
echo "."
sleep 2
echo ""
echo ""
cd /tmp/
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.1.5-unstable/linux-headers-4.1.5-040105-generic_4.1.5-040105.201508101730_amd64.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.1.5-unstable/linux-headers-4.1.5-040105_4.1.5-040105.201508101730_all.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.1.5-unstable/linux-image-4.1.5-040105-generic_4.1.5-040105.201508101730_amd64.deb
dpkg -i linux-headers-4.1.5-*.deb linux-image-4.1.5-*.deb
echo ""
echo ""
#Upgrade existing Linux Mint software
#===============================================================================
echo "*******************************"
echo "Upgrade existing Linux Mint"
echo "software and programs"
sleep 2
echo "..."
sleep 2
echo ".."
sleep 2
echo "."
sleep 2
echo ""
echo ""
apt-get -q -y -m -f dist-upgrade
apt-get -q -y -m autoclean
apt-get -q -y -m -f autoremove
echo ""
echo ""
echo "                   The script has finished yay!!! ... finally :p "
echo "*******************************************************************************"
echo "==============================================================================="
sleep 5
echo ""
echo ""
echo "Rebooting now"
sleep 2
echo "..."
sleep 2
echo ".."
sleep 2
echo "."
sleep 2
echo ""
echo ""
echo "*****************"
echo "Bye!!!"
echo "*****************"
echo " "
echo " "
reboot
