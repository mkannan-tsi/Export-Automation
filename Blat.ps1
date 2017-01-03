param ($Receiver, $Attachment)

$Embed = "<img src=cid:$Attachment>"
$Subject = "Daily Report"
Blat -body $Embed -to $Receiver -subject $Subject -embed $Attachment -html