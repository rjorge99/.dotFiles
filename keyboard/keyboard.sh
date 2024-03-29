#!/bin/bash
# id=$(xinput | grep 'Translated Set 2 keyboard' | egrep -o 'id=[0-9]*' | egrep -o '[0-9]*')  verificar el uso 

Icon="/home/rjorge99/keyboard/keyboard_enabled.png"
Icoff="/home/rjorge99/keyboard/keyboard_disabled.png"
fconfig=".keyboard" 
id=12

if [ ! -f $fconfig ]; then
  echo "Creating config file"
  echo "enabled" > $fconfig
  var="enabled"
else
  read -r var< $fconfig
  echo "keyboard is : $var"
fi

if [ "$var" = "disabled" ]; then
  notify-send -i $Icon "Enabling keyboard..." \ "ON - Keyboard connected !";
  echo "enable keyboard..."
  xinput enable $id
  echo "enabled" > $fconfig
elif [ "$var" = "enabled" ]; then
  notify-send -i $Icoff "Disabling Keyboard" \ "OFF - Keyboard disconnected";
  echo "disable keyboard"
  xinput disable $id
  echo 'disabled' > $fconfig
fi
