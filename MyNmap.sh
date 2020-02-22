#!/bin/sh
IFS=$'\n\r'
export $NBTarget
export AllIpTab=()



read -p "enter your path to file <IP>.txt" IpFile


#boucle ip in file.txt overrride
cat $IpFile | while  read ligne ; do
  AllIpTab[$index]="$ligne"
  echo ${AllIpTab[$index]}
  ThisTarget=${AllIpTab[$index]}
  index=$(($index+1))
  #nmap section you can add other flag (sC/sS)
  nmap -p- $ThisTarget
  nmap -O $ThisTarget
done
