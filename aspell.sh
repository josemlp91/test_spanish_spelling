#!/bin/bash

if  [ -z "$1" ] && [ -z "$2" ]; then
  echo "Especifique ruta del archivo a revisar ortografia y idioma (spanish | english)";
  else
    if [[ $2  = "english" ]];
      then
        aspell --master=english  -c $1;
    else
          aspell --master=spanish  -c $1;
  fi
fi
