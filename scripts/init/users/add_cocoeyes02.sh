#!/bin/bash -eu

# ユーザ追加
useradd -c 'cocoeyes02' --groups users --create-home --no-user-group -p '$6$pgl3rqDK$FDAuCWt/Wn9kVeMxcWDeornIHhg3PkpqeTV22.YCDhmP/521F7IMXgNHbvYrfOzn/V4x9n95DeU/07Rn2QpNI/' cocoeyes02
## root権限付与
echo 'cocoeyes02 ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/cocoeyes02
## ユーザ設定
su -l cocoeyes02 -c '
mkdir -m 0700 .ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCyW/beTNQC1ppmtiME2M7IFjJRNuMgRbRbJ5Ka2kK8scyp2KEgThJOfvWdGFMBMSY3dnlL2XBCRDpEaBo/qCRlMA2KZiBUVfCYCrmUnjUZ0uyIWHAHST8rspjmRlplanPLkShfDRgO6iE5mW2Aqb2Pj20kEUR7ktE1Qz4j4REu59BD0GA7OBHGTrmvg2jGTBWOIXLwainjszU1iJQdNUFKBOulklaK894GBo+YeuNKRTFU81OPRXd+BIOZ8t/zvLR2jW5VqWnP9WE0CwE2Mza5kNxFH3kpp7mIxtTmPZkuDO/EJ5FKeAiotYo5rrDeQbiwwB9kDJU9eX83yL4DsZZp" > .ssh/authorized_keys
chmod 700 .ssh/authorized_keys'
## シェルを変更
chsh -s /bin/bash cocoeyes02
