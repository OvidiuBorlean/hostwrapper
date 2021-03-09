$param1=$args[0]
$hosts = Get-ChildItem -Path ./hosts.db -recurse |  Select-String -Pattern $param1
$c_path = Get-Location
$env:Path = $c_path   
$result = $hosts.Line.Split("	")
#echo $hosts
echo $result[1]
& "c:\Program Files\Putty\putty.exe" $result[1]