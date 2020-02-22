#!/bin/sh
IFS=$'\n\r'
export $NBTarget
export AllIpTab=()



read -p "enter your path to file <IP>.txt" IpFile
#boucle ip in file.txt overrride
cat $IpFile | while  read ligne ; do
 
 # echo ${AllIpTab[$ligne]}
  AllIpTab[$index]="$ligne"
  echo ${AllIpTab[$index]}
  ThisTarget=${AllIpTab[$index]}
  index=$(($index+1))
  #nmap section you can add other flag (sC/sS)
  nmap -p- $ThisTarget
  nmap -O $ThisTarget
done




  ##boucle nmap
#  for x in `seq 1 $NBIP`;
 # do
  #  read -p "enter your ip $I  ===========++>:" IP
   # nmap -p- $IP
    #nmap -O $IP
    #I=$(($I + 1))
 # done
