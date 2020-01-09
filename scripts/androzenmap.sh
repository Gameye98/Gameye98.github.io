#!/bin/sh
#bismillah

#colour
R='\033[1;31m'
B='\033[1;34m'
C='\033[0;36m'
G='\033[1;32m'
W='\033[1;37m'
Y='\033[1;33m'

#banner
clear
echo $B"      ###########################################"
echo $B"      ##   $Y" AndroZenmap ver 1.1 "$B               ##  "                                        
echo $B"      ##     $G" Author "$B": "$R" Holmes"$B                 ## "                                             
echo $B"      ##     $G" Codename "$B": "$R"Minyak rambut "$B        ##"                                             
echo $B"      ##     $G" Team "$B": "$R"Androsec1337 cyber team "$B  ## "                      
echo $B"      ########################################### "

  echo
  echo
  echo $B"    [$R"01"$B]$G ITENSE SCAN"
  echo $B"    [$R"02"$B]$G ITENSE SCAN PLUS UDP "
  echo $B"    [$R"03"$B]$G ITENSE SCAN,ALL TCP PORTS "
  echo $B"    [$R"04"$B]$G ITENSE SCAN NO PING "
  echo $B"    [$R"05"$B]$G PING SCAN"
  echo $B"    [$R"06"$B]$G QUICK SCAN  "
  echo $B"    [$R"07"$B]$G QUICK SCAN PLUS  "
  echo $B"    [$R"08"$B]$G QUICK TRACEROUTE   "
  echo $B"    [$R"09"$B]$G REGULER SCAN"
  echo $B"    [$R"10"$B]$G SHOW COMPREHENSIVE SCAN "
  echo $B"    [$R"99"$B]$G EXIT  "
  echo 
  echo -n $B"   [$R"AndroZenmap"$B]$B: "
read mm

if [ $mm = "1" ] || [ $mm = "01" ];
then 
echo
echo $C "Please input IP target or host "
echo -n $R " IP Target or Host$B : " 
read target
nmap -T4 -A -v $target
elif [ $mm = "2" ] || [ $mm = "02" ];
then 
echo
echo -e $C "Please input IP target or host "
echo -ne $R " IP Target or Host$B : " 
read target
nmap -sS -sU -T4 -A -v $target
elif [ $mm = "3" ] || [ $mm = "03" ];
then 
echo
echo $C "Please input IP target or host "
echo -n $R " IP Target or Host$B : " 
read target
nmap -p 1-65535 -T4 -A -v $target
elif [ $mm = "4" ] || [ $mm = "04" ];
then 
echo
echo $C "Please input IP target or host "
echo -n $R " IP Target or Host$B : " 
read target
nmap -T4 -A -v -Pn $target
elif [ $mm = "5" ] || [ $mm = "05" ];
then 
echo
echo $C "Please input IP target or host "
echo -n $R " IP Target or Host$B : " 
read target
nmap -sn $target
elif [ $mm = "6" ] || [ $mm = "06" ];
then 
echo
echo $C "Please input IP target or host "
echo -n $R " IP Target or Host$B : " 
read target
nmap -T4 -F $target
elif [ $mm = "7" ] || [ $mm = "07" ];
then 
echo
echo $C "Please input IP target or host "
echo -n $R " IP Target or Host$B : " 
read target
nmap -sV -T4 -O -F --version-light $target
elif [ $mm = "8" ] || [ $mm = "08" ];
then 
echo
echo $C "Please input IP target or host "
echo -n $R " IP Target or Host$B : " 
read target
nmap -sn --traceroute $target
elif [ $mm = "9" ] || [ $mm = "09" ];
then 
echo
echo $C "Please input IP target or host "
echo -n $R " IP Target or Host$B : " 
read target
nmap $target
elif [ $mm = "10" ];
then 
echo
echo $C "Please input IP target or host "
echo -n $R " IP Target or Host$B : " 
read target
nmap -sS -sU -T4 -A -v -PE -PP -PS80,443 -PA3389 -PU40125 -PY -g 53 --script "default or (discovery and safe)" $target
elif [ $mm = "99" ];
then
clear
echo $G" Exiting..... bye bye"
sleep 1
exit 

else
clear
echo $Y" Wrong Input..."
sleep 1
cd /..
sh $0
fi