PATH=/home/node/0.8.9/bin
DEAMON=/home/ftp/1520/weizt-20120918-tKx/weizt.com/app.js
LOG=/home/hosts_log
PID=/tmp/forever.pid
case "$1" in
    start)
        forever start -l $LOG/forever.log -o $LOG/forever_out.log -e $LOG/forever_err.log --pidFile $PID -a $DEAMON

    stop)
        forever stop --pidFile $PID $DEAMON

    stopall)
        forever stopall --pidFile $PID

    restartall)
        forever restartall --pidFile $PID

    reload|restart)
        forever restart -l $LOG/forever.log -o $LOG/forever_out.log -e $LOG/forever_err.log --pidFile $PID -a $DEAMON

    list)
        forever list

    *)
        echo "Usage: /etc.init.d/node {start|stop|restart|reload|stopall|restartall|list}"
        exit 1

esac
exit 0

#!/bin/bash
#httpd Startup script for the  HTTP Server

forever -c node /media/Movie/www