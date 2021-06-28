:: Copyright (c) 2021 yuk7 <yukx00@gmail.com>
:: Released under the MIT license
:: http://opensource.org/licenses/mit-license.php
@echo off
cd /d %~dp0

takeown /F %WINDIR%\Fonts\msgothic.ttc /A
icacls %WINDIR%\Fonts\msgothic.ttc /grant Administrators:F
move %WINDIR%\Fonts\msgothic.ttc %WINDIR%\Fonts\msgothic.ttc.old
move MeiryoKe_Mod.ttc %WINDIR%\Fonts\msgothic.ttc