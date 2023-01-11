@echo off
dir >> C:\Users\comic\Desktop\CLI\Batch\logs\filelog\log%date%.txt
echo %time% : %date% >> C:\Users\comic\Desktop\CLI\Batch\logs\filelog\log%date%.txt
echo Logging filelog to log.txt
exit