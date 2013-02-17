#! /bin/bash

# notes defined here, except integers
export q=55
export w=57
export e=59
export r=60
export t=62
export y=64
export u=65
export i=67
export o=69
export p=71

tone () {
  local note="$1"
  if test "$note" -eq 0; then
    gpio -g mode 18 in
  else
    local period="$(perl -e"printf'%.0f',600000/440/2**(( $note-69)/12 )")"
    gpio -g mode 18 pwm
    gpio pwmr "$(( period ))"
    gpio -g pwm 18 "$(( period/2 ))"
    gpio pwm-ms
  fi
    echo -e ""
}

while :
do
    read -n 1 key
    case "$key" in
        q) note=$q;;
        2) note=56;;
        w) note=$w;;
        3) note=58;;
        e) note=$e;;
        r) note=$r;;
        5) note=61;;
        t) note=$t;;
        6) note=63;;
        y) note=$y;;
        u) note=$u;;
        8) note=66;;
        i) note=$i;;
        o) note=$o;;
        p) note=$p;;
        "[") note=72;;
        a) note=0;;
    esac
    tone $note
    sleep 0.1
    tone 0
done
