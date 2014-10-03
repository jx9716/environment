import os
import sys
import time

lognames = ["auth","kern","daemon","user","vsftpd"]

for i in lognames:
	fname = '/var/log/' + i + '.log'
	if os.path.isfile(fname):
		fsize = os.path.getsize(fname)
		utime = str(int(time.time()))
		if (fsize > 102400): # 100 KiB
			os.rename(fname, '/var/log/archive/' + i + '-' + utime + '.log')
			open(fname, 'wb').close()
