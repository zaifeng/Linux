#!/bin/bash

restartNginx()
{
    echo Stopping Nginx...
    sleep 2
    echo Starting Nginx    
}

restartPhpfpm()
{
    echo Stopping PHP-fpm...
    sleep 2
    echo Starting PHP-fpm
}

usage()
{
    echo 'Example:func.sh [php/nginx] [start|stop|restart]'
}

if [ $# -ne 2 ] ;then
    echo Please input 2 parameters
    exit  
fi

case $1 in
    "php")
        restartPhpfpm
        echo "12"
    ;;
    "nginx")
        restartNginx
    ;;
    *)
        usage
        ;;
esac
    



