#!/bin/sh
myts=`date +%Y_%m_%d_%H_%M`
mysqldump -u c1cme -p --socket=/var/lib/mysql/mysql.sock  --result-file=c1cme_mysqldump${myts}.txt --database c1cme
