
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command " [System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco install cmder -y

REM Download VSCode
curl -L "https://update.code.visualstudio.com/latest/win32-x64-user/stable" --output C:\users\WDAGUtilityAccount\Desktop\vscode.exe
 
REM Install and run VSCode
C:\users\WDAGUtilityAccount\Desktop\vscode.exe /verysilent /suppressmsgboxes


choco install nodejs android-sdk git gradle python2 -y

call refreshenv
call npm install -g @angular/cli@7.3.10
call npm install -g @ionic/cli@6.9.3
call npm install -g cordova@9.0.0
call npm install -g cordova-res@0.14.0
call npm install -g native-run@0.2.9
call npm install -g node-sass@4.14.1
call npm install -g yarn
call npm install -g windows-build-tools
call npm install -g node-sass

mkdir -p c:\users\WDAGUtilityAccount\.android\avd

call sdkmanager --install build-tools;29.0.3
call code --install-extension angular-schule.angular-schule-extension-pack
call code --install-extension msjsdiag.cordova-tools

rem todo:
rem install python2
rem install visual studio 2017 mit c++ desktop workload
rem add path to msbuild bin-folder


