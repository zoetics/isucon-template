#!/bin/bash -eu

# 引数はフルパスで書くこと、相対パスだとsymlinkが動かないことがある
# 使い方) ./conf_backup.sh /etc/nginx/nginx.conf

# 設定ファイルの置き場所（scriptsの上に実際のパスごとコピーする /etc/nginx/nginx.conf -> ./etc/nginx/nginx.conf）
BACKUP_DIR=$(cd $(dirname $0);cd ../..;pwd)/backup
## デバッグ用出力
#echo "#######"
#echo "#debug#"
#echo "#######"
#echo "\$1 =" $1
#echo "\$(basename \$1) =" $(basename $1)
#echo "\$BACKUP_DIR =" $BACKUP_DIR
#echo "#########"
#echo "#dry-run#"
#echo "#########"
#echo "rsync -R $1 $BACKUP_DIR"
#echo "ln -snf $BACKUP_DIR$1 $1"

rsync -R $1 $BACKUP_DIR
ln -snf $BACKUP_DIR$1 $1