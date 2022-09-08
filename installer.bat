cd /D %HOMEDRIVE%\
cd Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
del BlockTheSpot.bat
(
echo @echo off
echo powershell -Command "& {[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-WebRequest -UseBasicParsing 'https://raw.githubusercontent.com/GrampaSheev/BlockTheSpotAuto/master/install.ps1' | Invoke-Expression}"
)>"BlockTheSpotAuto.bat"

exit
