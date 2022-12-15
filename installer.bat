@echo off
cd /D %HOMEDRIVE%\
cd Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
del BlockTheSpotAuto.bat
(
echo @echo off
echo %SYSTEMROOT%\System32\WindowsPowerShell\v1.0\powershell.exe -Command "&{[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12}; """"& { $((Invoke-WebRequest -UseBasicParsing 'https://raw.githubusercontent.com/afdunmore/BlockTheSpotAuto/master/install.ps1').Content)} -confirm_uninstall_ms_spoti -confirm_spoti_recomended_over -podcasts_on -cache_off -block_update_off -start_spoti """" | Invoke-Expression"

echo pause
echo exit /b
)>"BlockTheSpotAuto.bat"

BlockTheSpotAuto.bat

exit /b
