#Small tweaks to Debian based

#Add to sudo

apt update
apt install sudo
sudo usermod -aG sudo xor
nano /etc/ssh/sshd_config

	AllowUsers xor
	
systemctl restart sshd
nano /etc/network/interfaces

	iface ens18 inet static
			address 192.168.XXXXXXXXXXX/24
			gateway 192.168.XXXXXXXXXXXX
			
reboot
sudo sysctl -w net.ipv6.conf.all.disable_ipv6=1
sudo sysctl -w net.ipv6.conf.default.disable_ipv6=1
sudo apt install unattended-upgrades
sudo dpkg-reconfigure --priority=low unattended-upgrades
sudo apt install qemu-guest-agent
sudo shutdown now

sudo apt install wget
wget https://get.glennr.nl/unifi/install/unifi-6.1.71.sh
sudo bash unifi-6.1.71.sh
