@echo off

  echo What would you like to change the window title to?
  set /p title=
  title %title%

pause

if "%command%" == "read"(
  echo What is the directory of the file would you like Radiant to read & adress? Please provide path of directory to file
  set /p filedirectory=
  echo What is the name of the file you would like radiant to read & adress
  set /p filename=
  echo Okay reading and adressing file %filename%
  cd %filedirectory%
  start %filename%
  echo Reading & Adressing %filename%
  goto begin
)