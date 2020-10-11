# covid19mx-corpus

Corpus con las versiones estenográficas de los informes diarios sobre coronavirus COVID-19 en México presentados por Hugo López-Gatell, disponibles en el sitio de la **Presidencia de la República** (https://www.gob.mx/presidencia). 

## Detalles

A cada versión estenográfica le corresponde un documento de texto que tiene por nombre la fecha de su publicación en el sitio de la Presidencia de la República (eg. `2020-02-28.txt`). De momento, no se han eliminado las alusiones a los interlocutores (eg. `HUGO LÓPEZ-GATELL RAMÍREZ, SUBSECRETARIO DE PREVENCIÓN Y PROMOCIÓN DE LA SALUD`), aunque por su formato debería ser posible identificarlas y/o eliminarlas fácilmente con expresiones regulares. El corpus se actualiza más o menos regularmente y contiene las informes presentados entre los meses de febrero y octubre de 2020.

Este corpus se creó con el lenguaje de programación R y la ayuda de los paquetes `tidyverse`, `selectr`, `xml2` y `rvest`. El código utilizado para armarlo está disponible en el archivo `scraper.R`. La lista completa de las direcciones URL utilizadas se encuentra en el archivo `urls_informes.txt`. 

El sitio de la Presidencia de la República comparte su contenido públicamente, a menos de que se indique lo contrario (cf. https://www.gob.mx/terminos). Los contenidos de este repositorio se distribuyen bajo la licencia [Creative Commons CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.es).

¿Quieres explorar el corpus sin necesidad de programar? Prueba con [Voyant Tools](https://voyant-tools.org/) o [AntConc](https://www.laurenceanthony.net/software/antconc/).