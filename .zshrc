###		Alejandro García		###


##
## Configuración personal
## Algunos elementos son recabados de internet
## 

# Configuración de ohmyzsh
export ZSH=/home/alex/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(
  sudo
  git
)

source $ZSH/oh-my-zsh.sh

# Extablecer defaults
export BROWSER=/usr/bin/firefox-beta
export EDITOR=/usr/bin/vim
export LANG=es_MX.UTF-8

# Hacer ejecutables mis scripts desde la terminal
export PATH="$HOME/.bin:$HOME/.bin/menu:$PATH"

# Sintaxis remarcada
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Recargar
alias reload='source .zshrc'
# Abreviaciones...
alias ls='ls -CF --color=auto '
alias ll='ls -lisa'
alias lsl="ls -lhFA | less"
alias ..='cd ..'
alias c='clear'
# Básicos de pacaur
alias buscar='pacaur -Ss '
alias instalar='pacaur -S '
alias update='pacaur -Syu'
alias remove='pacaur -R '
alias quitar-huerfanos="sudo pacman -Rs $(pacman -Qtdq)"
alias limpiarcache="paccache -ruk0"
alias depende='pacaur -Qi '
# MPV
alias gif='mpv --vo=vdpau --hwdec=vdpau --no-audio --loop-file'
alias gif300='mpv --vo=vdpau --hwdec=vdpau --no-audio --loop-file --geometry=300'
alias video='mpv --vo=vdpau --hwdec=vdpau --geometry=600'
alias youtube="video --ytdl-format='bestvideo[height<=?1440][vcodec!=vp9]+bestaudio/best' --pause"
alias bluray='video --pause --slang=spa br:// -bluray-device '
# Apagar/Reiniciar
alias apagar='systemctl poweroff'
alias reiniciar='systemctl reboot'
# Otros
alias cp="cp -i"
alias df='df -h'
alias free='free -m'
alias rm='rm -i'
alias htop='htop -u alex'
alias cpu='watch grep \"cpu MHz\" /proc/cpuinfo'
alias gpu='watch nvidia-smi'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias xup='xrdb .Xresources'
alias s='startx'
alias repol="./.config/polybar/launch.sh"
# Cerrar sesión (abruptamente)
alias cerrar='kill -9 -1'
# Ediciones rápidas
alias bspw="vim .config/bspwm/bspwmrc"
alias sxhk="vim .config/sxhkd/sxhkdrc"
alias poly="vim .config/polybar/config"
alias xinit="vim .xinitrc"
alias omenu="vim .config/openbox/menu.xml"
alias ostart="vim .config/openbox/autostart"
alias okey="vim .config/openbox/rc.xml"
# Neofetch
alias neoi="neofetch --backend w3m --source $HOME/Imágenes/Cel --disable resolution de wm wm_theme theme icons"
alias neow="neofetch --backend w3m --source wallpaper --disable resolution de wm wm_theme theme icons"
# Copiar caracteres unicode
alias unic="echo -e '\ue"

## Iniciar X al inicio de sesión
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && \
    exec startx -- -keeptty > ~/.xorg.log 2>&1
