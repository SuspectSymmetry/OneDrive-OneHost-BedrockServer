# OneDrive-OneHost-BedrockServer
By SuspectSymmetry 
```
Made this little utility for the kids.
```

## Host you own private realm with your friends
This little program simply run the Bedrock server from OneDrive and closes it once you exit the game.
* Join the server whenever your friend is hosting it
* Host it yourself whenever your firend is offline
* Made possible using OneDrive and it's sharing capibilities
* Works for Bedrock edition on Windows 10

## Installing
1. Create a new folder within OneDrive

    ![Settings Window](https://github.com/SuspectSymmetry/OneDrive-Shared-BedrockServer/blob/master/Screenshots/Screenshot1.png)

2. Save all of the [bedrock server files](https://www.minecraft.net/download/server/bedrock/) in that folder.

    ![Settings Window](https://github.com/SuspectSymmetry/OneDrive-Shared-BedrockServer/blob/master/Screenshots/Screenshot2.png)

3. Either wrap the [PowerShell](https://github.com/SuspectSymmetry/OneDrive-Shared-BedrockServer/blob/master/HostServer.ps1) or the [Autohotkey](https://github.com/SuspectSymmetry/OneDrive-Shared-BedrockServer/blob/master/HostServer.ahk) and save it under that same folder.

    ![Settings Window](https://github.com/SuspectSymmetry/OneDrive-Shared-BedrockServer/blob/master/Screenshots/Screenshot3.png)

4. Share the folder with others using OneDrive. Make sure to allow editing.

    ![Settings Window](https://github.com/SuspectSymmetry/OneDrive-Shared-BedrockServer/blob/master/Screenshots/Screenshot4.png)

## Important
* In order to host and play on the same machine, you will need to exempt the Minecraft client from UWP loopback restrictions. 
You can use the following batch to quickly enable loopback: [LoopbackExempt.bat](https://github.com/SuspectSymmetry/OneDrive-Hosting-BedrockServer/blob/master/LoopbackExempt.bat). Once exempted, you don't need to run this ever again.
* Whenever the hosting player quit the game you will be disconnected from the server, you can now go and host it yourself.
