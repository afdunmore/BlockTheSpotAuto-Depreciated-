@echo off
if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
@echo off
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -Command "&{[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12}; """"& { $((Invoke-WebRequest -UseBasicParsing 'https://raw.githubusercontent.com/afdunmore/BlockTheSpotAuto/master/install.ps1').Content)} -confirm_uninstall_ms_spoti -confirm_spoti_recomended_over -podcasts_on -cache_off -block_update_off -start_spoti """" | Invoke-Expression"
exit
