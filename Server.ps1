param($FilterParam, $Filepath)

$Server = "localhost"
$Site = '""'
$Username = ""
$Password = ""
$URL = "Superstore/Overview?Region="

New-Item -ItemType Directory -Force -Path $Filepath

$Filetype = "png"
$Filepath = $Filepath+$FilterParam+"."+$Filetype

$URL = $URL + $FilterParam

tabcmd login -s $Server -t $Site -u $Username -p $Password
tabcmd export $URL --$Filetype -f $Filepath