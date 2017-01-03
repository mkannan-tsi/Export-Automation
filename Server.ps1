param($FilterParam, $Filepath)

$Server = "localhost"
$Site = '""'
$Username = "mkannan"
$Password = ""
$URL = "Superstore/Overview?Region=$FilterParam"
$Filetype = "png"
$Filepath = $Filepath+$FilterParam+"."+$Filetype

tabcmd login -s $Server -t $Site -u $Username -p $Password
tabcmd export $URL --$Filetype -f $Filepath