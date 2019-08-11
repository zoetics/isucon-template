#!/bin/bash -eu

# ユーザ追加
useradd -c 'seiichiakiba' --groups users --create-home --no-user-group -p '$6$pgl3rqDK$FDAuCWt/Wn9kVeMxcWDeornIHhg3PkpqeTV22.YCDhmP/521F7IMXgNHbvYrfOzn/V4x9n95DeU/07Rn2QpNI/' seiichiakiba
## root権限付与
echo 'seiichiakiba ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/seiichiakiba
## ユーザ設定
su -l seiichiakiba -c '
mkdir -m 0700 .ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC8E50PaUtBHVPuZu75tl/mqvs1FPnaKIVhxOyV3IVTZVXFZV4Yh9naO9wmuTtxREk65sOthOfaNeI9yVl9x6D7uAiZd/U9Qv9r4AoeQFLxMCmd0LN//EhOo4hHu+iN+v6f0tsg+X6iXVkeYM3EjPe9t8WmSDlhoZCjFx0+Rxl1/dLDJULrj/PPfBH0fOtKo3LyUNP+dT1tKyRSebi67ekRV5a8LqH5eOh0qgKm2naKb1q33BexB3NnQJlR69kBgyjDlj8JX9Mj9CJ5sfwUlEswVyTkXhuXtWHkj8Ax8EF0kM1wCEtFllz8U9yD7PAVgQ0h6SRlRaFqRaoWu4b+x1dp seiichiakiba@SeiichinoMacBook-puro.local" > .ssh/authorized_keys
chmod 700 .ssh/authorized_keys'
## シェルを変更
chsh -s /bin/bash seiichiakiba