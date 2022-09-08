@echo off
powershell -Command "& {[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-WebRequest -UseBasicParsing 'https://raw.githubusercontent.com/GrampaSheev/BlockTheSpotAuto/master/install.ps1' | Invoke-Expression}"
exit
