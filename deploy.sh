#!/bin/bash

rm -rf public

USER=kamar535
SERVER=brakved.it.uu.se
REMOTE_PATH=/it/www/htdocs/it/edu/course/homepage/introit/ht16
TIME_STAMP=`date +date_%Y-%m-%d_time_%H_%M_%S`

ARCHIVE="~/tmp/old_$TIME_STAMP"

echo $ARCHIVE

echo $USER
echo $SERVER
echo $REMOTE_PATH

echo $USER@$SERVER


hugo
ssh -t -t $USER@$SERVER <<EOF
mkdir $ARCHIVE
cp -r $REMOTE_PATH/* $ARCHIVE/.
pwd
exit
EOF

scp -r public/* $USER@$SERVER:$REMOTE_PATH/.

