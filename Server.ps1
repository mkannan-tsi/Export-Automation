param($FilterParam)

$Server = ""
$Username = ""
$Password = ""
$URL = "Superstore/Overview?Region=$FilterParam"
$Filetype = "png"
$Filepath = "C:\Users\mkannan\Desktop\$FilterParam.png"

tabcmd login -s $Server -u $Username -p $Password
tabcmd export $URL --$Filetype -f $Filepath