#!/bin/sh
#
# /etc/rc.d/atieventsd: start/stop ATI external events daemon
#

case $1 in
start)
        /usr/sbin/atieventsd
	;;
stop)
	killall -q /usr/sbin/atieventsd
	;;
restart)
        $0 stop
        sleep 2
        $0 start
        ;;
*)
        echo "usage: $0 [start|stop|restart]"
        ;;
esac

# End of File
