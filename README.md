#bouncy-daemon
how to install bouncy as a daemon

##tag - v0.1
###use /etc/init.d scripts
[1] install
put bouncyd inti /etc/init.d
 
##tag - v0.2
###use upstart
1. install upstart $apt-get install upstart
2. copy bouncy.conf to /etc/init/
3. start bouncy

##reference
https://www.exratione.com/2013/02/nodejs-and-forever-as-a-service-simple-upstart-and-init-scripts-for-ubuntu/

###Init Script

Init scripts hopefully need no explanation. Scripts reside in /etc/init.d with root ownership and executable permissions. e.g.:
sudo su
cp my-application-script /etc/init.d/my-application
chmod a+x /etc/init.d/my-application

After putting the script in place, you should update the system service definitions:
update-rc.d my-application defaults

service my-application start
service my-application status
service my-application restart
service my-application stop