@echo off
color a
title Command Testing
:begin
echo Welcome to Command Testing
echo.
echo Please enter a command:
set /p command=

if "%command%" == "title" (
  echo What would you like to change the window title to?
  set /p title=
  title %title%
  goto begin
)

echo Invalid command.
goto begin