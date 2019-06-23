#!/bin/bash -eu

## ユーザ追加
useradd -c 'Makoto Ikezoe' --groups users --create-home --no-user-group -p '$6$pgl3rqDK$FDAuCWt/Wn9kVeMxcWDeornIHhg3PkpqeTV22.YCDhmP/521F7IMXgNHbvYrfOzn/V4x9n95DeU/07Rn2QpNI/' zoe
# root権限付与
echo 'zoe ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/zoe
# ユーザ設定
su -l zoe -c '
mkdir -m 0700 .ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDMs1oBdGfGxPYV/3TX49Z5Xpe9HQKjoEtKVMuNpikHi2z+i6AqHVmdRh8vyslrbxgExuF5sK5XrQjf51fblQqVjYTy7Bzajkeb+rvsDsPYllqz5Ghd/yUv9kKuimgG1UpFp4ot/0+5b2gR2Y8j3fWmzWekCzOuGLYgX3Y8bzA8qP3XvzRq7Swg0k+I3rzADBZAdbLc/5GLyKCPdjxi35dgAv8kFcYpNBiu4RVwRT4++qHqNrQU8m//zeXuZitM8/x7NDnh8Q5Z/Zde7dZXWvqLDEBBwRSogctKCuu5ihCeRUaBtY1vDfz19VA/1dapbxnstOsdBFdr0Grg6yxQSEgr zoe@zoe-no-MacBook-Pro.local" > .ssh/authorized_keys
chmod 700 .ssh/authorized_keys'
