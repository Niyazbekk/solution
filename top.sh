#! /bin/bash

read W

gawk '$9=="404" || $9=="403"' log.txt | gawk '{print $7}' |  sort -k7 | uniq -c | sort -nr | awk '{ $(NF+1) = "-"; $(NF+1) = $1; $1 = NR "."; $(NF+1) = "-" ; printf "%s %.1f%\n" , $0 ,$(NF+1) = 100 * $4 /87 "%"}' | head -"$W"


