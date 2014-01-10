bouncy has to be run as root in order to take port 80

assume bouncy configs installed in /var/www/bouncy, the daemon will run in this
directory

[1] install bouncy
npm install -g 

[2] set up daemon file
(1) create a daemon file bouncyd
(2) copy file bouncyd into /etc/init.d/
(3) chmod o+x /etc/init.d/bouncyd
(4) update-rc.d bouncyd defaults
(5) service bouncyd start
