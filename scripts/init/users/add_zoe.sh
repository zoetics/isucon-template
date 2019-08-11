#!/bin/bash -eu

# ユーザ追加
useradd -c 'zoe' --groups users --create-home --no-user-group -p '$6$pgl3rqDK$FDAuCWt/Wn9kVeMxcWDeornIHhg3PkpqeTV22.YCDhmP/521F7IMXgNHbvYrfOzn/V4x9n95DeU/07Rn2QpNI/' zoe
## root権限付与
echo 'zoe ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/zoe
## ユーザ設定
su -l zoe -c '
mkdir -m 0700 .ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDMs1oBdGfGxPYV/3TX49Z5Xpe9HQKjoEtKVMuNpikHi2z+i6AqHVmdRh8vyslrbxgExuF5sK5XrQjf51fblQqVjYTy7Bzajkeb+rvsDsPYllqz5Ghd/yUv9kKuimgG1UpFp4ot/0+5b2gR2Y8j3fWmzWekCzOuGLYgX3Y8bzA8qP3XvzRq7Swg0k+I3rzADBZAdbLc/5GLyKCPdjxi35dgAv8kFcYpNBiu4RVwRT4++qHqNrQU8m//zeXuZitM8/x7NDnh8Q5Z/Zde7dZXWvqLDEBBwRSogctKCuu5ihCeRUaBtY1vDfz19VA/1dapbxnstOsdBFdr0Grg6yxQSEgr zoe@zoe-no-MacBook-Pro.local" >> .ssh/authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDbfYn8RI9qShXfnWGqtL3GNfHf6A7j9HOBdrKkZjaSKcOE78wHUWVFqHjBHxvnEx9zzzjQCaSOoNmuNnLilSEBKzkXsD+spXymhiQ8LbY31NyS5BPlgpMcuMQvgvfkeD7y3nL4nBzghIh80g6STRcGRr9zAy+kkpj+IRxdvvPggBwMmHyq68C+Q6cNC7UuZ7YSNNITb4IuzLtN5bk5/xuZ441k5NIVZRX3e+Zyg3n4Yld9JourQbNRt6AUCfzsQ11fJ87z3tEw1IDFLbeZ2Ch7evw0Np6acbjMkvkgJf20pkxqPzTWiGm7gDiiLb89G0hbDcvNx+uHgUqSkD+lwMVnd2aaKMNjUVUZnGb5VoWDWdiAc8RExBdNmwEZaUjqGYFufIO8/Zw/7+bDz3vbJ/pXqRczoaVflpNRHKR7YHlqnQxJruPYzX4yJmkjinysIOTHISfTwAuc+udhxhkbeKUP6zdhPw47SN89w+2YGpBLTEJ6+HtYNpL6pwpomlalHjV5wCZStkjZJiEDIpQuFSYavCxa4QrfIwDEDU6DGWBByX7C7DzoN2AJDP3dpCOFg8mGPtm/HkPz4v/ihsXWOqMS6o9sAWOnzZegI1+LSzy1m4edd0oOG/ODZ3OfHvpDH5Jfhc32OlVs9vBn57H3mA2mrSdIpHxrer4jFcx5dyYY5w== ikezoe0309@willgate1493-pc.local" >> .ssh/authorized_keys
chmod 700 .ssh/authorized_keys'