file_path = 'C:\Users\mkannan\Desktop\Sample.csv'
powershell_path = "C:\WINDOWS\system32\WindowsPowerShell\\v1.0\powershell.exe"
server_script = ".\"./Server.ps1\""
blat_script = ".\"./blat.ps1\""
file_extension = ".png"

import subprocess
import csv

array_name = []
array_email = []

#Reading from CSV file
with open(file_path, 'rb') as csvfile:
    reader = csv.reader(csvfile, delimiter=' ', quotechar='|')
    count = 0
    
    for row in reader:
	    if count != 0:
	    	string =  "".join(row).split(",")
	    	for x in string:
	    		if "@" in x:
	    			array_email.append(x)
	    		else:
	    			array_name.append(x)
	    count=count+1	

#Reading from Server.ps1 (powershell script)
for x in xrange(0,len(array_name)):
	subprocess.call([powershell_path, server_script +" " +array_name[x] + ";"])

#Sending email out through Blat.ps1 (powershell script)
for x in xrange(0,len(array_name)):
	subprocess.call([powershell_path, blat_script +array_email[x] +" " +array_name[x] + file_extension + ";"])

