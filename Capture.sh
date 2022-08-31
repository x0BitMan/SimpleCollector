#!/bin/bash
#  [+] This Script is Written By @x0BitMan - #Salem 64Bit
#  [+] For Catching Websites Informations
mkdir capturd 2> /dev/null
CatchError(){
        echo -e "\n  [~!] Usage: $0 <website link file>\n Contact with [ x0BitMan.t.me ] For Some Information or Request\n"
        exit
}
if [ $# -lt 1 ]; then
        CatchError
else
        Catch=$(wc -l $1 | cut -d" " -f1)
        printf "  [+] Detected $Catch Line.\n"
        if [ $Catch -eq 0 ]; then
                exit
        else
                x0BitMan="cat $1"
                for data in `${x0BitMan}`
                do
                        whois $data > capturd/Captured.$data.txt
                done
        fi
        exit
fi
