$Message  = 'Minecraft Server'
$Question = 'Would you like to host Minecraft server?'
$Choices  = '&Yes', '&No'

$Decision = $Host.UI.PromptForChoice($message, $question, $choices, 1)
if ($Decision -eq 1) {
    Start-Process Minecraft:
    break
}

$PSScriptRoot = [System.Diagnostics.Process]::GetCurrentProcess().MainModule.FileName
$PSScriptRoot = [System.IO.Path]::GetDirectoryName($PSScriptRoot)

Start-Process -FilePath "$PSScriptRoot\bedrock_server.exe" -WindowStyle hidden
Start-Process Minecraft:

Get-Process -Name Minecraft.Windows,msiexec -ErrorAction SilentlyContinue | Wait-Process 
Stop-Process -Name bedrock_server
