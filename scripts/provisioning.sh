#!/bin/bash -eu

## ユーザ追加
useradd -c 'zoe' --groups users --create-home --no-user-group -p '$6$pgl3rqDK$FDAuCWt/Wn9kVeMxcWDeornIHhg3PkpqeTV22.YCDhmP/521F7IMXgNHbvYrfOzn/V4x9n95DeU/07Rn2QpNI/' zoe
# root権限付与
echo 'zoe ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/zoe
# ユーザ設定
su -l zoe -c '
mkdir -m 0700 .ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDMs1oBdGfGxPYV/3TX49Z5Xpe9HQKjoEtKVMuNpikHi2z+i6AqHVmdRh8vyslrbxgExuF5sK5XrQjf51fblQqVjYTy7Bzajkeb+rvsDsPYllqz5Ghd/yUv9kKuimgG1UpFp4ot/0+5b2gR2Y8j3fWmzWekCzOuGLYgX3Y8bzA8qP3XvzRq7Swg0k+I3rzADBZAdbLc/5GLyKCPdjxi35dgAv8kFcYpNBiu4RVwRT4++qHqNrQU8m//zeXuZitM8/x7NDnh8Q5Z/Zde7dZXWvqLDEBBwRSogctKCuu5ihCeRUaBtY1vDfz19VA/1dapbxnstOsdBFdr0Grg6yxQSEgr zoe@zoe-no-MacBook-Pro.local" > .ssh/authorized_keys
chmod 700 .ssh/authorized_keys'

## ユーザ追加
useradd -c 'seiichiakiba' --groups users --create-home --no-user-group -p '$6$pgl3rqDK$FDAuCWt/Wn9kVeMxcWDeornIHhg3PkpqeTV22.YCDhmP/521F7IMXgNHbvYrfOzn/V4x9n95DeU/07Rn2QpNI/' seiichiakiba
# root権限付与
echo 'seiichiakiba ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/seiichiakiba
# ユーザ設定
su -l seiichiakiba -c '
mkdir -m 0700 .ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC8E50PaUtBHVPuZu75tl/mqvs1FPnaKIVhxOyV3IVTZVXFZV4Yh9naO9wmuTtxREk65sOthOfaNeI9yVl9x6D7uAiZd/U9Qv9r4AoeQFLxMCmd0LN//EhOo4hHu+iN+v6f0tsg+X6iXVkeYM3EjPe9t8WmSDlhoZCjFx0+Rxl1/dLDJULrj/PPfBH0fOtKo3LyUNP+dT1tKyRSebi67ekRV5a8LqH5eOh0qgKm2naKb1q33BexB3NnQJlR69kBgyjDlj8JX9Mj9CJ5sfwUlEswVyTkXhuXtWHkj8Ax8EF0kM1wCEtFllz8U9yD7PAVgQ0h6SRlRaFqRaoWu4b+x1dp seiichiakiba@SeiichinoMacBook-puro.local" > .ssh/authorized_keys
chmod 700 .ssh/authorized_keys'

## ユーザ追加
useradd -c 'cocoeyes02' --groups users --create-home --no-user-group -p '$6$pgl3rqDK$FDAuCWt/Wn9kVeMxcWDeornIHhg3PkpqeTV22.YCDhmP/521F7IMXgNHbvYrfOzn/V4x9n95DeU/07Rn2QpNI/' cocoeyes02
# root権限付与
echo 'cocoeyes02 ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/cocoeyes02
# ユーザ設定
su -l cocoeyes02 -c '
mkdir -m 0700 .ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCyW/beTNQC1ppmtiME2M7IFjJRNuMgRbRbJ5Ka2kK8scyp2KEgThJOfvWdGFMBMSY3dnlL2XBCRDpEaBo/qCRlMA2KZiBUVfCYCrmUnjUZ0uyIWHAHST8rspjmRlplanPLkShfDRgO6iE5mW2Aqb2Pj20kEUR7ktE1Qz4j4REu59BD0GA7OBHGTrmvg2jGTBWOIXLwainjszU1iJQdNUFKBOulklaK894GBo+YeuNKRTFU81OPRXd+BIOZ8t/zvLR2jW5VqWnP9WE0CwE2Mza5kNxFH3kpp7mIxtTmPZkuDO/EJ5FKeAiotYo5rrDeQbiwwB9kDJU9eX83yL4DsZZp" > .ssh/authorized_keys
chmod 700 .ssh/authorized_keys'