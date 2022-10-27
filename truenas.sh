qbittorrent:
pkg install nano
nano /etc/pkg/FreeBSD.conf
pkg install qbittorrent-nox
sysrc qbitorrent_enable=YES
cd /var/db/qbittorrent/conf/qBittorrent/config
openssl req -new -x509 -nodes -out server.crt -keyout server.key
chown qbittorrent server.key
chown qbittorrent server.crt



sab:
pkg install nano
nano /etc/pkg/FreeBSD.conf
pkg install sabnzbd
sysrc sabnzbd_enable=YES
pw groupadd xor -g 1000
pw usermod _sabnzbd -G xor


plex:
pkg install nano
nano /etc/pkg/FreeBSD.conf
pkg install plexmediaserver
sysrc plexmediaserver_enable=YES
pw groupadd xor -g 1000
pw usermod plex -G xor
