<?php

// POST /initialize のハンドラ内、既存の初期化処理の後に追加
exec('sudo /home/isucon/webapp/scripts/initialize/reset-logs.sh > /dev/null 2>&1');
exec('setsid /home/isucon/webapp/scripts/initialize/analyze.sh > /dev/null 2>&1 < /dev/null &');
