:: Copyright (c) 2021 yuk7 <yukx00@gmail.com>
:: Released under the MIT license
:: http://opensource.org/licenses/mit-license.php

@echo off
CD /d %~dp0

net session > nul 2>&1
if %ERRORLEVEL% neq 0 goto uac
goto script

:uac
mshta "javascript: var shell = new ActiveXObject('shell.application'); shell.ShellExecute('%~nx0', '', '', 'runas', 1);close();"
exit

:script
cd /d %~dp0

takeown /F %WINDIR%\Fonts\msgothic.ttc /A
icacls %WINDIR%\Fonts\msgothic.ttc /grant Administrators:F
move /Y %WINDIR%\Fonts\msgothic.ttc %WINDIR%\Fonts\msgothic.ttc.old
copy /Y modded.ttc %WINDIR%\Fonts\msgothic.ttc

echo.
echo Please Reboot the computer...
pause
shutdown -r -t 0