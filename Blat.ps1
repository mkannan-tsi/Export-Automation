param ($Receiver, $Attachment)

$Embed = "<h1> Here is your daily report </h1> <br> <img src=$Attachment alt=Report>"
$Subject = "Daily Report"

Blat -body $Embed -to $Receiver -subject $Subject -embed $Attachment -html
Write-Host ($Attachment)
Write-Host ($Embed)