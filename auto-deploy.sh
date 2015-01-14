#!/usr/bin/env bash
# 
# chkconfig: 3 20 80
# description: testing

GIT=/usr/bin/git
ADSERVER_REPO=git@github.com:pm-ashim-ghosh/auto-deploy-test.git
# LOCAL_ADSERVER_REPO: Must be absolute path.
LOCAL_ADSERVER_REPO=/home/kartik.sura/auto-deploy-test

source /etc/init.d/functions

case $1 in
start)
    cd "$LOCAL_ADSERVER_REPO" && /
    "$GIT" pull "$ADSERVER_REPO" master && /
    "$GIT" checkout -f

    # Deploy even if checkout fails.
    cd "$LOCAL_ADSERVER_REPO/FastCGI_AdServer" && ./deploy.sh
    ;;

stop)
    ;;

restart)
    /etc/init.d/auto-deploy.sh start
    /etc/init.d/auto-deploy.sh stop
    ;;

*)
    ;;
esac
