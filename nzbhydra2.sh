#How to install Nzbhydra2

sudo apt install python3 default-jdk unzip
mkdir nzbhydra2
cd nzbhydra2
wget https://github.com/theotherp/nzbhydra2/releases/download/v3.13.2/nzbhydra2-3.13.2-linux.zip
unzip nzbhydra2-3.13.2-linux.zip
rm nzbhydra2-3.13.2-linux.zip
chmod +x nzbhydra2
sudo nano /etc/systemd/system/nzbhydra2.service

#Put this in the file

[Unit]
Description=NZBHydra2 Daemon
Documentation=https://github.com/theotherp/nzbhydra2
After=network.target

[Service]
User=xor
Group=xor
Type=simple
# Set to the folder where you extracted the ZIP
WorkingDirectory=/home/xor/nzbhydra2


# NZBHydra stores its data in a "data" subfolder of its installation path
# To change that set the --datafolder parameter:
# --datafolder /path-to/datafolder
ExecStart=/home/xor/nzbhydra2/nzbhydra2 --nobrowser

Restart=always

[Install]
WantedBy=multi-user.target

#End of file


sudo systemctl daemon-reload
sudo systemctl start nzbhydra2.service
sudo systemctl enable nzbhydra2.service
