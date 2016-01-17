#!/bin/bash

if  [ -z "$1" ] && [ -z "$2" ]; then
  echo "Enter file path to check spelling and language (spanish | english)";
  else
    if [[ $2  = "english" ]];
      then
          aspell --master=english  -c $1;
    else
          aspell --master=spanish  -c $1;
  fi
  
  # Actualizamos repositorio con diccionarios.
  cp  /home/$USER/.aspell.es.pws  ./
  cp  /home/$USER/.aspell.en.pws  ./

  git init
  git add .
  git commit -m "Update your personal dictionary."
  git push origin master
fi
