:: Copyright (c) 2021 yuk7 <yukx00@gmail.com>
:: Released under the MIT license
:: http://opensource.org/licenses/mit-license.php
@echo off
cd /d %~dp0

takeown /F %WINDIR%\Fonts\msgothic.ttc /A
icacls %WINDIR%\Fonts\msgothic.ttc /grant Administrators:F
move /Y %WINDIR%\Fonts\msgothic.ttc %WINDIR%\Fonts\msgothic.ttc.old
copy /Y MeiryoKe_Mod.ttc %WINDIR%\Fonts\msgothic.ttc

echo.
echo Please Reboot the computer...
pause
shutdown -r -t 0
