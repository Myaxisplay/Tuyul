#!/bin/sh
#!/bin/sh
sed -i "s/#PermitRootLogin prohibit-password/PermitRootLogin yes/" /etc/ssh/sshd_config
sed -i "s/#PasswordAuthentication yes/PasswordAuthentication yes/" /etc/ssh/sshd_config
service ssh restart
echo "root:Pmataga1@" | chpasswd

wget -O https://raw.githubusercontent.com/hondacars/sirji/main/ngrok > /dev/null 2>&1
chmod 777 ngrok > /dev/null 2>&1
read -p "Paste Ngrok Authtoken: " CRP
./ngrok authtoken $CRP 
