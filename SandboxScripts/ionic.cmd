
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command " [System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco install cmder -y

REM Download VSCode
curl -L "https://update.code.visualstudio.com/latest/win32-x64-user/stable" --output C:\users\WDAGUtilityAccount\Desktop\vscode.exe
 
REM Install and run VSCode
C:\users\WDAGUtilityAccount\Desktop\vscode.exe /verysilent /suppressmsgboxes


choco install nodejs -y
choco install android-sdk -y
choco install git -y
choco install gradle -y

call refreshenv
call code --install-extension angular-schule.angular-schule-extension-pack
call code --install-extension msjsdiag.cordova-tools
call npm install -g @ionic/cli
call npm install -g @angular/cli
call npm install -g cordova
call npm install -g cordova-res
call npm install -g native-run
call npm install -g yarn

mkdir -p c:\users\WDAGUtilityAccount\.android\avd

call sdkmanager --install build-tools;29.0.3

