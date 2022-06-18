#!/bin/sh
sed -i "s/#PermitRootLogin prohibit-password/PermitRootLogin yes/" /etc/ssh/sshd_config
sed -i "s/#PasswordAuthentication yes/PasswordAuthentication yes/" /etc/ssh/sshd_config
service ssh restart
echo "root:Pmataga1@" | chpasswd


wget https://raw.githubusercontent.com/hondacars/sirji/main/ngrok
./ngrok authtoken 23qnE0u7GSeL7Wjjus2ij5xUn2S_81cUigMoZYff5ewuA48QJ
./ngrok tcp 22
