@echo off

title THE TTM ENGINE

set TTI_PLAYCOOKIE=User
set TTI_GAMESERVER=127.0.0.1
set ttiUsername=username

rem Read the contents of PPYTHON_PATH into %PPYTHON_PATH%:
set /P PPYTHON_PATH=<PPYTHON_PATH

rem Get the user input:
set /P ttiUsername="Username: "
title TTM Client (%ttiUsername%)
set /P TTI_GAMESERVER="Gameserver (DEFAULT: localhost): " || ^

rem Export the environment variables:
set TTI_PLAYCOOKIE=%ttiUsername%

echo ===============================
echo Starting Toontown...
echo ppython: %PPYTHON_PATH%
echo Username: %ttiUsername%
echo Gameserver: %TTI_GAMESERVER%
echo ===============================

%PPYTHON_PATH% -m toontown.toonbase.ClientStart
pause

goto server
