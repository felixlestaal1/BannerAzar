#!/bin/bash

function show_banner() {
  # Lista todos los archivos de la carpeta banners
  banners=(banners/*)
  
  # Selecciona un banner aleatorio de la lista,banners=(banners/*), 
  #Se está utilizando el patrón glob banners/* para obtener una lista de todos los archivos en el directorio banners.
  banner=${banners[$RANDOM % ${#banners[@]}]}
  
  # Imprime el banner en la consola
  cat $banner
}

# Llama a la función show_banner para mostrar un banner aleatorio
show_banner
