param($FilterParam, $Filepath)

$Server = ""
$Site = ""
$Username = ""
$Password = ""
$URL = "Superstore/Overview?Region=$FilterParam"
$Filetype = "png"
$Filepath = $Filepath+$FilterParam+"."+$Filetype

tabcmd login -s $Server -t $Site -u $Username -p $Password
tabcmd export $URL --$Filetype -f $Filepath