
DIR=/var/www/bouncy
if [ ! -d "$DIR" ]
then
    mkdir "$DIR"
fi

cp -f routes.json $DIR
cp -f bouncyd /etc/init.d/
chmod o+x /etc/init.d/bouncyd
update-rc.d bouncyd defaults