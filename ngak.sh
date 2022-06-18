#!/bin/sh
rm -rf ngrok ngrok.zip ng.sh > /dev/null 2>&1
echo "======================="
echo "Download ngrok"
echo "======================="
wget -O https://raw.githubusercontent.com/hondacars/sirji/main/ngrok > /dev/null 2>&1
chmod 777 ngrok > /dev/null 2>&1
read -p "Paste Ngrok Authtoken: " CRP
./ngrok.1 authtoken $CRP 
