cd /D %HOMEDRIVE%\
cd Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
del BlockTheSpot.bat
(
@echo off
%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\powershell.exe -Command "&{[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12}; """"& { $((Invoke-WebRequest -UseBasicParsing 'https://raw.githubusercontent.com/afdunmore/BlockTheSpotAuto/master/install.ps1').Content)} -confirm_uninstall_ms_spoti -confirm_spoti_recomended_over -podcasts_on -cache_off -block_update_off -start_spoti """" | Invoke-Expression"

pause
exit /b
)>"BlockTheSpotAuto.bat"

exit
