@echo off
setlocal enabledelayedexpansion

set argCount=0
for %%x in (%*) do (
   set /A argCount+=1
   set "argVec[!argCount!]=%%~x"
)
::
echo [92mCompile.bat by "github.com/Amrinder-S" [0m
for /L %%i in (1,1,%argCount%) do (
echo [91mCompiling[0m [92m!argVec[%%i]! [0m [91m to [0m [92m!argVec[%%i]:~0,-4!.exe [0m
c++ !argVec[%%i]! -o !argVec[%%i]:~0,-4!.exe > nul
)
:: To add selection (y/n) if we want to execute the compiled programs or not.
:: Also to add an installer.bat to install this batch script in path