# Export-Automation
Enabling automation of sending user-filtered visualizations as images to individual user's email IDs.

1.	Download Python and Blat.
 
2.	Place the Blat.exe file alone in C:\Windows\System32
 
3.	Download the scripts from here, and ensure that all the scripts are in the same folder before execution.

4.	A sample CSV file for mapping users to the respective file that they should receive is also a part of the repository. This should be modified to enter the different filter values that you wish to use along with the respective email IDs for the user, and can then be placed either along with the other scripts or in a different location.
 
5.	Go to control panel > system > advanced > |Environmental Variables| > system variables -> Path and add the following –
a.    C:\Python27 (If you are using the Python version downloaded in this email)
b.    C:\Program Files\Tableau\Tableau Server\10.1\bin (if you have Tableau Server 10.1 installed. If you are using a different version of Server, please add the path that contains the bin folder.)
OR
C:\Program Files\Tableau\Tableau Server\10.1\extras\Command Line Utility  (if you are using the 10.1 version of standalone tabcmd.)
 
6.	Run Powershell as administrator and enter the following: Set-ExecutionPolicy Bypass

7.	Open Command Line, and enter the following (without *): Blat -install *your SMTP Server* *your email id*  [5[<port>]]
 
8.	Open the script that says ‘Server.ps1’, and enter the following –
a.	Tableau Server address (https:\\online.tableau.com for Tableau Online)
b.	SiteID (ignore if you want to connect to the default site. If you want to change the site name, wrap the siteID in double quotes only. E.g. “mysite”)
c.	Username 
d.	Password 
e.	Viz URL (part of the address bar after the siteID and ending with the filter you wish to implement. E.g. “Superstore/Overview?Region=”
 
9.	Open the script that says ‘ExportAutomation.py’ and enter the following –
a.	Path of the input CSV file mentioned in step 5. 
b.	Path of folder for the output PNG files to be saved in (this should be in the same drive as the script, and any space in the file path needs to be padded with ‘ ‘, as shown in the script downloaded.)
 
10.	Finally on Command Line, navigate to the folder that contains the scripts, and enter the following: python ExportAutomation.py
