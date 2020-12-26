@echo off
wmic computersystem get totalphysicalmemory | more +1 > temp
set /p total=<temp
set totalKB=%total:~0,7%
del temp
wmic os get freephysicalmemory | more +1 > temp
set /p free=<temp
del temp
set /a used=%totalKB% - %free%
echo %used% 