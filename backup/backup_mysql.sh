#!/bin/bash

FILE=/root/backup/backup.sql.`date +"%m%d%Y"`
HOST=127.0.0.1
DATABASE=opencartdb
USER=opencart

find /root/backup -mtime +3 -type f -delete

mysqldump -u ${USER} -h ${HOST} -p'' ${DATABASE} > ${FILE}
gzip $FILE
echo "${FILE}.gz was created:"
ls -l ${FILE}.gz
