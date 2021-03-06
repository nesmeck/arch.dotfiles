#!/bin/sh
#
# This script is an edit of ufetch
#

## INFO
hostname="$(hostname)"
os='Arch Linux'
kernel="$(uname -r)"
uptime="$(uptime -p | sed 's/up //')"
packages="$(pacaur -Q | wc -l)"
shell="$(basename ${SHELL})"
if [ -z "${WM}" ]; then
	WM="$(tail -n 1 "${HOME}/.xinitrc" | cut -d ' ' -f 2)"
fi


## DEFINE COLORS
# Don't change
bc="$(tput bold)"	# bold
c0="$(tput setaf 0)"	# black
c1="$(tput setaf 1)"	# red
c2="$(tput setaf 2)"	# green
c3="$(tput setaf 3)"	# yellow
c4="$(tput setaf 4)"	# blue
c5="$(tput setaf 5)"	# magenta
c6="$(tput setaf 6)"	# cyan
c7="$(tput setaf 7)"	# white
rc="$(tput sgr0)"	# reset

# You can change these
nc="${rc}${bc}${c1}"	# user and hostname
ic="${rc}"	        # info
fc="${rc}${c7}${bc}"	# first color
sc="${rc}${bc}${c3}"	# second color
tc="${rc}${bc}${c2}"    # third color

## OUTPUT
cat <<EOF
${fc}        .;:;:.          ${nc}${USER}${ic}@${nc}${hostname}
${fc}        ::;:;:          ${fc}OS${fc}       ${ic}${os}
${sc}      _ ${fc}';:;;'     ${fc}     Kernel ${fc}  ${ic}${kernel}
${sc}      >'. ||  _         ${fc}Pkgs ${fc}    ${ic}${packages}
${sc}       '>\||.'<         ${fc}WM ${fc}      ${ic}${WM}
${sc}        '>|/ <'         ${fc}SHELL ${fc}   ${ic}${shell}
${sc}         '||/'${rc}
EOF


#█▓▒░ colors
printf "\n\t"
i=0
while [ $i -le 6 ]
do
  printf "\e[$((i+41))m\e[$((i+30))m█▓▒░"
  i=$(($i+1))
done
printf "\e[37m█\e[0m▒░\n\n"
