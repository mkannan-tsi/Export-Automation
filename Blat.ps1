param ($Receiver, $Location, $Attachment)

$Subject = "Daily Report"

cd $Location
$Embed = "<h1> Here is your daily report </h1> <br> <img src=cid:$Attachment alt=Report>"
Blat -body $Embed -to $Receiver -subject $Subject -embed $Attachment -html