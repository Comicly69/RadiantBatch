@echo off
start logger.bat
color a
title Radiant 
:begin
echo Welcome to Radiant
echo.
echo Please enter a command:
set /p command=

if "%command%" == "help" (
  echo Available commands:
  echo - help: Display this message
  echo - dir: Display the contents of the current directory
  echo - md: Create a new directory
  echo - cd: Change the current directory
  echo - del: Delete a file
  echo - copy: Copy a file
  echo - chatgpt: Open chatGpt in default browswer
  echo - color: Change the color of the interface
  echo - title: Change the title of the window        BROKEN
  echo - login: Login to Radiant Online mode only
  echo - read: Read file and have Radiant adress file's existance
  echo.
  goto begin
)

if "%command%" == "dir" (
  dir
  goto begin
)

if "%command%" == "md" (
  echo Enter the name of the directory to create:
  set /p dirname=
  md %dirname%
  goto begin
)

if "%command%" == "cd" (
  echo Enter the name of the directory to change to:
  set /p dirname=
  cd %dirname%
  goto begin
)

if "%command%" == "del" (
  echo Enter the name of the file to delete:
  set /p filename=
  del %filename%
  goto begin
)

if "%command%" == "copy" (
  echo Enter the name of the file to copy:
  set /p src=
  echo Enter the destination for the copy:
  set /p dest=
  copy %src% %dest%
  goto begin
)

if "%command%" == "chatgpt" (
  set chatgpturl="https://chat.openai.com/chat"
  cd C:\Program Files\Google\Chrome\Application
  start chrome "https://chat.openai.com/chat"
  goto begin
)

if "%command%" == "color" (
  echo What color would you like the interface to be?
  echo Available colors are
  echo  [31m1 = Red[0m
  echo  [32m2 = Green[0m 
  echo  [33m3 = Yellow[0m
  echo  [34m4 = Blue[0m
  echo  [35m5 = Magenta[0m
  echo  [36m6 = Cyan[0m
  echo  [37m7 = White[0m  
  set /p color=
  color %color%
  echo setting color to %color%
  goto begin
)

if "%command%" == "ping" (
  echo What ip would you like to ping?
  set /p pingip=
  echo Ip to ping Succsessfuly set to %pingip%
  echo What paramter would you like to use?
  timeout 5
  echo Currently Available paramters are:
  echo    -n             Ping amount of times
  echo    -t             Ping the specified host until stopped 
  echo                   To see statistics and continue - type Control-Break
  echo                   To stop - type Control-C
  echo    -a             Resolve addresses to hostnames.
  echo    -n count       Number of echo requests to send
  echo    -l size        Send buffer size.
  echo    -f             Set Don't Fragment flag in packet 
  echo    -i TTL         Timeout if passed time
  echo    -v TOS         Disabled
  echo    -r count       Record route for count hops 
  echo    -s count       Timestamp for count hops 
  echo    -j host-list   Loose source route along host-list 
  echo    -k host-list   Strict source route along host-list 
  echo    -w timeout     Timeout in milliseconds to wait for each reply
  echo    -R             Use routing header to test reverse route also 
  echo                   Per RFC 5095 the use of this routing header has been
  echo                   deprecated. Some systems may drop echo requests if
  echo                   this header is used
  echo    -S srcaddr     Source address to use
  echo    -c compartment Routing compartment identifier
  echo    -p             Ping a Hyper-V Network Virtualization provider address
  echo    -4             Force using IPv4
  echo    -6             Force using IPv6
  set /p paramter=
  echo Pinging %pingip% using %paramter% protocol
  ping %pingip% %paramter%
  echo Succsessfuly pinged %pingip%
  goto begin
)

if "%command%" == "title" (
  echo What would you like to change the window title to?
  set /p title=
  title %title%
  goto begin
)

if "%command%" == "github" (
  set githuburl="github.com"
  cd C:\Program Files\Google\Chrome\Application
  start chrome "github.com"
  goto begin
)

if "%command%" == "repeat"(
  echo What would you like Radiant repeat?
  set /p echorepeat=
  echo %echorepeat%
)

if "%command%" == "options"(
  echo What option would you like to change?
  timeout 3
  echo Available options are:
  echo  -v  Version               Change version of Radiant CLI. Type "v" or "version" for more info on versions
  echo  -b  Default browswer      Change the default broswer Radiant uses for various browser related 
  echo                            commands or logging. Type "broswer" for more info on default broswers
  echo  -c  Default color         Change default color of radiant on launch.
  echo  -t  Default title         Change Default title of radiant.
  echo  -d  Dev mode              Enable dev mode by default. Type "Dev" for more info on dev mode
  echo  -o  Online/offline mode   Enable/Disable offline or online mode. Type "o/o"  for more info on online
  echo                            or offline modes
)
echo Invalid command. If you think this is an error, please contact the administration team.
goto begin
