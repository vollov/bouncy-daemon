#/bin/bash

#################################################################
# Uninstall service
#################################################################


#unistall init.d
echo "removing bouncyd"
service bouncyd stop
update-rc.d -f bouncyd remove
rm -f /etc/init.d/bouncyd
