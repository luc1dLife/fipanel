#!/usr/bin/env bash

#Colors
reset="$(tput sgr0)"
#black="$(tput bold; tput setaf 0)"
blue="$(tput bold; tput setaf 4)"
cyan="$(tput bold; tput setaf 6)"
green="$(tput bold; tput setaf 2)"
purple="$(tput bold; tput setaf 5)"
#red="$(tput bold; tput setaf 1)"
#white="$(tput bold; tput setaf 7)"
#yellow="$(tput bold; tput setaf 3)"
orange="$(tput bold; tput setaf 166)"
#violet="$(tput bold; tput setaf 61)"
host="${blue}$HOSTNAME${reset}"
#header="${cyan}[ ${reset}${green}${reset}${cyan}mattscript @ ${reset}${host}${cyan} ]    ${reset}"

#Arguments
version=${cyan}1.0.0${reset}

license="
${cyan}${reset} mattscript v${version}

        ${purple}Copyright (C) 2018 Matthew A. Brassey${reset}

        This program is free software: you can redistribute it and/or modify
        it under the terms of the GNU General Public License as published by
        the Free Software Foundation, either version 3 of the License, or
        (at your option) any later version.

        This program is distributed in the hope that it will be useful,
        but WITHOUT ANY WARRANTY; without even the implied warranty of
        MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
        GNU General Public License for more details.

        You should have received a copy of the GNU General Public License
        along with this program.  If not, see <http://www.gnu.org/licenses/>.
"

help="
${cyan}Usage:${cyan}${green} ./mattscript.sh ${reset}${purple}[--help|--version]${reset}

${cyan}[options]${reset}${green}
        --license       Show lisense information.
        --about         What is mattscript?${reset}
"

about="
${cyan}${reset} mattscript v${version}

        Is my template for new bash scripts. 
"

#Variables
args=("$@")
endscript="false"
minutes="1"
month=$(date +%b)
today=$(date +%d)

#Expenses 
mortgage='$1,370'
hoa='100'
elec='130'
water='30'
gas='20'
sewer='10'
trash='7'
signature='250'
title='220'
citi='100'
barclay='100'
chase='100'
khols='50'
internet='55'
phone='70'

#Dates
mortdate="2 "
hoadate="2 "
elecdate="15"
waterdate="12"
gasdate="28"
sewerdate="1 "
trashdate="9 "
sigdate="18"
titledate="18"
citidate="15"
barcdate="28"
chasedate="10"
kholsdate="11"
interdate="1 "
phonedate="25"

# [Green] make sure you've paid it [Orange] prepare to pay it
if [[ "$mortdate" -gt "$today" ]]
   then
   mortdate1="${orange}✗ $month $mortdate${reset}"
   mortprice="${orange}$mortgage$(reset)"
   else
   mortdate1="${green}✔ $month $mortdate${reset}"
   mortprice="${green}$mortgage${reset}"
fi

if [[ "$hoadate" -gt "$today" ]]
   then
   hoadate1="${orange}✗ $month $hoadate${reset}"
   hoaprice="${orange}$hoa${reset}"
   else
   hoadate1="${green}✔ $month $hoadate${reset}"
   hoaprice="${green}$hoa${reset}"
fi

if [[ "$elecdate" -gt "$today" ]]
   then
   elecdate1="${orange}✗ $month $elecdate${reset}"
   elecprice="${orange}$elec${reset}"
   else
   elecdate1="${green}✔ $month $elecdate${reset}"
   elecprice="${green}$elec${reset}"
fi

if [[ "$waterdate" -gt "$today" ]]
   then
   waterdate1="${orange}✗ $month $waterdate${reset}"
   waterprice="${orange}$water${reset}"
   else
   waterdate1="${green}✔ $month $waterdate${reset}"
   waterprice="${green}$water${reset}"
fi

if [[ "$gasdate" -gt "$today" ]]
   then
   gasdate1="${orange}✗ $month $gasdate${reset}"
   gasprice="${orange}$gas${reset}"
   else
   gasdate1="${green}✔ $month $gasdate${reset}"
   gasprice="${green}$gas${reset}"
fi

if [[ "$sewerdate" -gt "$today" ]]
   then
   sewerdate1="${orange}✗ $month $sewerdate${reset}"
   sewerprice="${orange}$sewer${reset}"
   else
   sewerdate1="${green}✔ $month $sewerdate${reset}"
   sewerprice="${green}$sewer${reset}"
fi

if [[ "$trashdate" -gt "$today" ]]
   then
   trashdate1="${orange}✗ $month $trashdate${reset}"
   trashprice="${orange}$trash${reset}"
   else
   trashdate1="${green}✔ $month $trashdate${reset}"
   trashprice="${green}$trash${reset}"
fi

if [[ "$sigdate" -gt "$today" ]]
   then
   sigdate1="${orange}✗ $month $sigdate${reset}"
   sigprice="${orange}$signature${reset}"
   else
   sigdate1="${green}✔ $month $sigdate${reset}"
   sigprice="${green}$signature${reset}"
fi

if [[ "$titledate" -gt "$today" ]]
   then
   titledate1="${orange}✗ $month $titledate${reset}"
   titleprice="${orange}$title${reset}"
   else
   titledate1="${green}✔ $month $titledate${reset}"
   titleprice="${green}$title${reset}"
fi

if [[ "$citidate" -gt "$today" ]]
   then
   citidate1="${orange}✗ $month $citidate${reset}"
   citiprice="${orange}$citi${reset}"
   else
   citidate1="${green}✔ $month $citidate${reset}"
   citiprice="${green}$citi${reset}"
fi

if [[ "$barcdate" -gt "$today" ]]
   then
   barcdate1="${orange}✗ $month $barcdate${reset}"
   barcprice="${orange}$barclay${reset}"
   else
   barcdate1="${green}✔ $month $barcdate${reset}"
   barcprice="${green}$barclay${reset}"
fi

if [[ "$chasedate" -gt "$today" ]]
   then
   chasedate1="${orange}✗ $month $chasedate${reset}"
   chaseprice="${orange}$chase${reset}"
   else
   chasedate1="${green}✔ $month $chasedate${reset}"
   chaseprice="${green}$chase${reset}"
fi

if [[ "$kholsdate" -gt "$today" ]]
   then
   kholsdate1="${orange}✗ $month $kholsdate${reset}"
   kholsprice="${orange}$khols${reset}"
   else
   kholsdate1="${green}✔ $month $kholsdate${reset}"
   kholsprice="${green}$khols${reset}"
fi

if [[ "$innterdate" -gt "$today" ]]
   then
   interdate1="${orange}✗ $month $interdate${reset}"
   interprice="${orange}$internet${reset}"
   else
   interdate1="${green}✔ $month $interdate${reset}"
   interprice="${green}$internet${reset}"
fi

if [[ "$phonedate" -gt "$today" ]]
   then
   phonedate1="${orange}✗ $month $phonedate${reset}"
   phoneprice="${orange}$phonenet${reset}"
   else
   phonedate1="${green}✔ $month $phonedate${reset}"
   phoneprice="${green}$phone${reset}"
fi

#Left Side
lefthome="${purple}Home:${reset}"
left1="${cyan}[ ${reset}${blue}Mortgage:${reset}${orange} $mortprice${reset}${cyan} ]────────────────╼[ ${reset}$mortdate1${cyan} ]${reset} •"
left2="${cyan}[ ${reset}${blue}HOA:${reset}${orange} $hoaprice${reset}${cyan} ]───────────────────────╼[ ${reset}$hoadate1${cyan} ]${reset} •"
left3="${cyan}[ ${reset}${blue}Electric:${reset}${orange} $elecprice${reset}${cyan} ]─────────────────╼[ ${reset}$elecdate1${cyan} ]${reset} •"
left4="${cyan}[ ${reset}${blue}Water:${reset}${orange} $waterprice${reset}${cyan} ]────────────────────╼[ ${reset}$waterdate1${cyan} ]${reset} •"
left5="${cyan}[ ${reset}${blue}Gas:${reset}${orange} $gasprice${reset}${cyan} ]─────────────────────╼[ ${reset}$gasdate1${cyan} ]${reset} •"
left6="${cyan}[ ${reset}${blue}Sewer:${reset}${orange} $sewerprice${reset}${cyan} ]──────────────────╼[ ${reset}$sewerdate1${cyan} ]${reset} •"
left7="${cyan}[ ${reset}${blue}Trash:${reset}${orange} $trashprice${reset}${cyan} ]──────────────────╼[ ${reset}$trashdate1${cyan} ]${reset} •"
blank1="                                           •"
leftloans="${purple}Loans:${reset}                                    •"
left8="${cyan}[ ${reset}${blue}Signature:${reset}${orange} $sigprice${reset}${cyan} ]─────────╼[ ${reset}$sigdate1${cyan} ]${reset} •"
leftcredit="${purple}Credit:${reset}                               •"
left9="${cyan}[ ${reset}${blue}Title:${reset}${orange} $titleprice${reset}${cyan} ]────────────╼[ ${reset}$titledate1${cyan} ]${reset} •"
blank2="                                       •"
left10="${cyan}[ ${reset}${blue}Citi:${reset}${orange} $titleprice${reset}${cyan} ]──────────╼[ ${reset}$citidate1${cyan} ]${reset} •"
left11="${cyan}[ ${reset}${blue}Barclay:${reset}${orange} $barcprice${reset}${cyan} ]──────╼[ ${reset}$barcdate1${cyan} ]${reset} •"
left12="${cyan}[ ${reset}${blue}Chase:${reset}${orange} $chaseprice${reset}${cyan} ]───────╼[ ${reset}$chasedate1${cyan} ]${reset} •"
left13="${cyan}[ ${reset}${blue}Khols:${reset}${orange} $kholsprice${reset}${cyan} ]───────╼[ ${reset}$kholsdate1${cyan} ]${reset} •"
blank3="                                 •"
leftservices="${purple}Services:${reset}                       •"
left14="${cyan}[ ${reset}${blue}Internet:${reset}${orange} $interprice${reset}${cyan} ]─╼[ ${reset}$interdate1${cyan} ]${reset} •"
left15="${cyan}[ ${reset}${blue}Phone:${reset}${orange} $interprice${reset}${cyan} ]───╼[ ${reset}$interdate1${cyan} ]${reset} •"
blank4="                             •"
blank5="                            •"
#Right Side


IFS='
'

#Functions
function panel() {
       start=$SECONDS
       clear
       echo ""
echo '
'$lefthome'  
'$left1'
'$left2'
'$left3'
'$left4'
'$left5'
'$left6'
'$left7' 
'$blank1'
'$leftloans'
'$left8'
'$left9'
'$blank2'  
'$leftcredit'
'$left10'
'$left11'
'$left12'
'$left13'
'$blank3'      
'$leftservices'
'$left14'
'$left15'
'$blank4'
'$blank5''

#Sleep sequence
       completed
       secs=$((minutes * 60))
       while [ $secs -gt 0 ]; do
          echo -ne "${blue}╰────╼${reset}${green} Re-launch in:${reset} ${cyan}$secs\\033[0Ks    \\r${reset}"
          sleep 1
          : $((secs--))
       done
}

function completed(){
      duration=$(( SECONDS - start ))
      echo "${blue}╭────╼${reset}${purple} Completed in: ${reset}${cyan}$duration${reset}${cyan}s${reset}    •"
}

#Arguments
for ((arg=0;arg<"${#args[@]}";arg++)); do
        [ "${args[$arg]}" == "--version" ] && echo "${version}" && exit
        [ "${args[$arg]}" == "--help" ] && echo "${help}" && exit
        [ "${args[$arg]}" == "--license" ] && echo "${license}" && exit
        [ "${args[$arg]}" == "--about" ] && echo "${about}" && exit
        #[ "${args[$arg]}" == "--" ] && echo ${args[$arg]}
done

#Activate panel
while [ $endscript = "false" ]
do
        panel
done
