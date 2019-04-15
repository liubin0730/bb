#!/bin/bash
if [ x"$1" == x ]
then
    exec php /data/www/code/easyswoole start d
fi
case $1 in
start)
    exec php /data/www/code/easyswoole start d
;;
reload)
    exec php /data/www/code/easyswoole reload
;;
stop)
    exec php /data/www/code/easyswoole stop
;;
esac
