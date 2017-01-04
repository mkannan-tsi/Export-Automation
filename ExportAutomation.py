import subprocess
import csv

input_file = "Sample.csv"
output_file_path = "C:/abc' '2/"
powershell_path = "C:/WINDOWS/system32/WindowsPowerShell/v1.0/powershell.exe"
server_script = ".\"./Server.ps1\""
blat_script = ".\"./blat.ps1\""
file_extension = ".png"

array_name = []
array_email = []

#Reading from CSV file
with open(input_file, 'rb') as csvfile:
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
	subprocess.call([powershell_path, server_script +" " +array_name[x] +" " + output_file_path + ";"])

#Sending email out through Blat.ps1 (powershell script)
for x in xrange(0,len(array_name)):
	subprocess.call([powershell_path, blat_script +array_email[x] +" " +output_file_path +" " +array_name[x] + file_extension + ";"])