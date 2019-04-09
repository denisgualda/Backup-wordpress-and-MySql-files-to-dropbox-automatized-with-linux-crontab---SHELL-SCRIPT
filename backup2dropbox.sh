
#######################
#backup2dropbox.sh
#######################

#!/usr/bin/env bash
#BACKUPU MYSQL DATABASE
mysqldump --user=root --password=******** -A > /savepath/mysqlbackup.SQL¡

#COPY WEB CONTENT
tar -czvf webcontent.tar.gz /var/www/html/webpath/

#MOVE WEB CONTENT
cp webcontent.tar.gz /home/backupfolder

#UP TO DROPBOX
LOCAL_DIR="/home/backupfolder"
FILES="*.*"
REMOTE_DIR="***DROPBOXDIR***"
UPLOADER="/pathlocatescript/dropbox_uploader.sh"

echo "up to dropbox" [$(date)]"
 mail -s "backup2dropbox OK" mail@mail.com <<< 'Backup correct'

$UPLOADER upload ${LOCAL_DIR}${FILES} $REMOTE_DIR

