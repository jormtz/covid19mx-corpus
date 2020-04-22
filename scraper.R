##########
#Paquetes
##########

library(tidyverse)
library(rvest)
library(selectr)
library(xml2)

##########
#Funciones
##########

dame_fecha <- function(pagina){
  #Obtiene la fecha del documento y la devuelve en formato YYYY-MM-DD
  fecha <- html_nodes(pagina, ".border-box") %>% 
    html_nodes("dd") %>% 
    html_text() %>% 
    paste0(collapse = " ") %>% 
    str_replace("Presidencia de la República  ", "") %>% 
    str_replace_all(" de ", " ") %>% 
    as.Date(format="%d %B %Y")
  return(fecha)
}

dame_texto <- function(pagina){
  #Obtiene el texto de la conferencia
  texto <- html_nodes(pagina, ".article-body") %>% 
    html_text() %>% 
    str_replace_all("\r\n\r\n", "\n") %>% 
    str_replace_all("\u200B", "")
  return(texto)
}

dame_archivo <- function(url_doc, directorio_corpus){
  #Crea el documento, lo nombra con su fecha y lo coloca en un directorio especificado  
  if (dir.exists(directorio_corpus) == FALSE){
    dir.create(directorio_corpus)
  }
  pagina <- read_html(url_doc)
  fecha <- dame_fecha(pagina)
  texto <- dame_texto(pagina)
  nombre_archivo = str_c(fecha, ".txt")
  archivo <- file(str_c(directorio_corpus, nombre_archivo, sep="/"), encoding= "utf8")
  writeLines(texto, archivo)
  on.exit(close(archivo))
}

dame_corpus <- function(lista_urls, directorio_destino){
  #Arma el corpus iterando sobre una lista de direcciones URL
  for (direccion in lista_urls) {
    dame_archivo(direccion, directorio_destino)
    Sys.sleep(10)
  }
}

##########
#Armar corpus
##########

#Cargar direcciones URL
urls_informes <- c(readLines("urls_informes.txt"))

#Armar corpus simple
dame_corpus(urls_informes, "corpus_simple")

#Descargar un solo archivo...
#dame_archivo("url", "directorio_destino)

