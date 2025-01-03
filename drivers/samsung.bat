@echo off
set "url=https://developer.samsung.com/sdp/file/de97d0ea-da03-46a4-b35d-346d37a878e0"
set "output_file=samsung.exe"
set "output_folder=%~dp0"
echo Downloading Samsung USB Driver...

powershell -Command "try { Invoke-WebRequest -Uri '%url%' -OutFile '%output_folder%%output_file%' -UseBasicParsing; Write-Host 'Download complete.' } catch { Write-Host 'Error downloading file:' $_.Exception.Message; exit 1 }"