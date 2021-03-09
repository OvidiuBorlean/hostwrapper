$param1=$args[0]
Get-ChildItem -Path ./ -recurse |  Select-String -Pattern $param1