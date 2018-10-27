Cron Docker image, email support included.

Created to run jobs with email notification on failures, e.g. backups.

Configuration:

Via /data/conf/crontab and /data/conf/ssmtp.conf. If they are missing, example configuration files will be put there

Typical usage:

`docker create --name ccron --net=host -v /data/cron:/data --restart=always scf37/cron`

