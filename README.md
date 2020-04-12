# covid19-mx-corpus

Corpus con las versiones estenográficas de los informes diarios sobre coronavirus COVID-19 en México, disponibles en el sitio de la **Presidencia de la República** (https://www.gob.mx/presidencia). 

## Detalles

A cada versión estenográfica le corresponde un documento de texto que tiene por nombre la fecha de su publicación en el sitio de la Presidencia de la República (eg. `2020-02-28.txt`). De momento, no se han eliminado las alusiones a los interlocutores (eg. `HUGO LÓPEZ-GATELL RAMÍREZ, SUBSECRETARIO DE PREVENCIÓN Y PROMOCIÓN DE LA SALUD`), aunque por su formato debería ser posible identificarlas y/o eliminarlas fácilmente con expresiones regulares. El corpus cubre el período comprendido entre el 27 de febrero de 2020 y el 11 de abril de 2020.

Este corpus se creó con el lenguaje de programación R y la ayuda de los paquetes `tidyverse`, `selectr`, `xml2` y `rvest`. El código utilizado para armarlo se encuentra disponible en el archivo [`cuaderno.Rmd`](https://github.com/jormtz/covid19-mx-corpus/blob/master/cuaderno.Rmd), junto con una lista completa de las direcciones URL utilizadas.  
