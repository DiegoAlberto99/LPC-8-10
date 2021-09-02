#!/bin/bash
#Diego

	for file in $(ls);
	do
	  if [[ -d $file ]];
	  then
	    echo directorio: $file
	  else
	    if [[ -x $file ]];
	    then
	      echo Programas: $file
	    else
	      echo Archivos: $file
	    fi
	  fi
	done