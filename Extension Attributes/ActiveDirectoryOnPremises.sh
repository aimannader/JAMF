#!/bin/bash
# Written by Heiko 2018.10.19
# Checks if a computer is on premises by pinging the domain controllers

dnsDOMAIN=$(dsconfigad -show | awk '/Active Directory Domain/{print $NF}')
if ping -c 2 -o $dnsDOMAIN; then
        result="Yes"
else
        result="No"
fi      
echo "<result>$result</result>"

