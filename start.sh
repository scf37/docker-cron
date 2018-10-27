#!/bin/bash

mkdir -p /data/conf
cp -n /opt/conf/ssmtp.conf /data/conf/ssmtp.conf
cp -n /opt/conf/crontab /data/conf/crontab

cp /data/conf/ssmtp.conf /etc/ssmtp/ssmtp.conf
cp /data/conf/crontab /etc/crontab

# log syslog to stdout
syslogd -O /proc/1/fd/1 -S

# log errors only
exec cron -f -L 4