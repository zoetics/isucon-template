#!/bin/bash -eu

systemctl daemon-reload

rm -rf /home/isucon/local/php/var/log/isuconquset.php-fpm.log && systemctl restart isuconquest.php.service &

rm -rf /var/log/mysql/mysql-slow.log && systemctl restart mysql.service &

rm -rf /var/log/nginx/access.log && systemctl restart nginx.service &

wait
echo "restarted"

