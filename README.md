# Introducción a LaTeX para la edición de memorias docentes, libros, artículos y presentaciones
## Autor: Jonathan Martín Valera
### Repositorio creado para el curso de  *Introducción a LaTeX para la edición de memorias docentes, libros, artículos y presentaciones (II ed.)* de cemed de la UGR
#### Fecha de realización: Febrero 2019

---

# Introducción

## ¿Qué es TEX?

TEX es un programa destinado a la composición de documentos que contienen texto y fórmulas matemáticas con calidad de imprenta creado por Donald Knuth en 1978.

**NO** es un editor de texto sino un procesador de macros y lenguaje de programación.

## ¿Qué es LaTeX?

LaTeX es un conjunto de macros para TEX debido originalmente a Leslie Lamport para facilitar el uso de TEX.

LaTeX está disponible en la mayoría de las plataformas usuales. La distribuciones más populares son:

- MiKTEX (MS Windows)
- MacTEX (OSX)
- TEXLive

## Editores

El programa (editor) que usemos para escribir un documento es independiente de LaTeX aunque existen algunos editores más adaptados a su uso que incluyen atajos para algunas acciones usuales.

Los más comunes son:

- Texniccenter
- TeXstudio
- Texworks
- Texmaker
- WinEdt
- ...

## Ventajas e inconvenientes

| Ventajas                                                           | Inconvenientes               |
|-------------                                                       |----------------             |
|  Composición de fórmulas                                           |  El diseño de un documento(nuevo) es difícil si los predefinidos no se ajustan a loque necesitamos           |
|  Calidad de imprenta                                               | Detección y manejo de errores               |
|  Facilidad para gestionarbibliografías, notas,referencias, etc.    | Separación de contenido y forma                  |                
|  Muchos paquetes adicionales                                       | |
|  Independiente de la plataforma: Unix, Windows,OSX,..              | |
|  Software libre                                                    | |
|  Salida postscript, PDF...                                         | |
|  Separación de contenido y forma                                    | ||

## Posibles usos

- Artículos
- exámenes, ejercicios
- cartas, informes
- libros,apuntes,
- posters, presentaciones, etc

### Ficheros resultantes tras la compilación

`.tex` El documento fuente es un fichero de texto que contiene tanto el texto como las instrucciones para formatear ese texto. Se puede crear con cualquier editor de textos.

Al compilar se obtienen varios documentos:

- `.aux` Fichero auxiliar que contiene la información sobre las referencias, la bibliografía, el índice, etc..

- `-toc`: Almacena todas las cabeceras de sección. Es leído en la siguiente compilación para producir el índice general.

- `dvi, .pdf` Posibles resultados de la compilación.

- `.log` Mensajes del compilador..toc, .lof, .lot Información relativa a índices, lista de figuras y lista de tablas.

- `.bib, .bbl, .blg, .bst` Ficheros relacionados con la bibliografía.

---

# Instalación de TeX Live en Ubuntu

**texlive** es nuestra distribución preferida de LaTeX. Resulta penoso ver como con nuestra instalación de Ubuntu, si instalamos texlive con `apt-get`, casi siempre instalamos una versión antigua de nuestro LaTeX.

Para evitarlo podemos hacer una instalación manual de texlive por medio de las siguientes instrucciones. Lo primero es instalar perl-tk:

    sudo apt-get install perl-tk

Seguidamente nos podemos descargar el instalador desde este [enlace](https://www.tug.org/texlive/acquire-netinstall.html).

Tras descargar y descomprimir el archivo, se abrirá una ventana titulada **Install-tl** con la que se puede adecuar a voluntad las condiciones de la instalación. Recomendamos firmemente hacer sólo un cambio, y no dejar de hacerlo: pulsar en el botón “Cambiar” del último apartado titulado “Crear enlaces simbólicos en los directorios de sistema”, pulsar en el botón adjunto al epígrafe “crear enlaces simbólicos en los directorios estándar” (se pondrá rojo) de la pequeña subventanita que se abrirá y finalmente pulsar en el botón de ésta “Aceptar”. Con ello mandamos crear los importantísimos enlaces simbólicos (esto se hace ya automáticamente):

    ficheros ejecutables en: /usr/local/bin
    páginas de manual en: /usr/local/share/man
    información en: /usr/local/share/info

[Referencia](https://wildunix.es/posts/instalar-tex-live-en-ubuntu-mac-os-y-windows/)

# Manual básico para aprender LaTeX en 139 minutos

Enlace --> https://tobi.oetiker.ch/lshort/lshort.pdf

---

# Estructura del fichero de entrada

Cuando LaTeX procesa un fichero de entrada, espera que siga una
cierta estructura. Así, todo fichero de entrada ha de comenzar con la orden

    \documentclass{...}

Esto indica qué tipo de documento pretende usted escribir. Después, puede
incluir órdenes que influyen el estilo de todo el documento, o puede cargar
paquetes que añaden nuevas prestaciones al sistema LaTeX. Para cargar un
paquete use la orden:

    \usepackage{...}

Cuando todo el trabajo de preparación está hecho, comience a escribir el
cuerpo del texto con la orden

    \begin{document}

El área entre **\documentclass** y **\begin{document}** se llama preámbulo.
Ahora escriba el texto mezclado con órdenes LaTeX útiles. Al final del
documento añada la orden

    \end{document}

que dice a LaTeX que termine el trabajo. Cualquier cosa que siga a esta orden
será ignorada por LaTeX.

---

# Aspecto del documento

## Clase de documento

La primera información que LaTeX necesita saber cuando procesa un
fichero de entrada es el tipo de documento que el autor quiere crear. Esto se indica con la orden \documentclass.

    \documentclass[opciones]{clase}

Aquí `clase` indica el tipo de documento por crear.La distribución de
LaTeX proporciona clases adicionales para otros documentos, incluyendo cartas y diapositivas (presentaciones).El Cuadro 1.1 lista
las clases de documentos explicadas en esta introducción.

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig1.1.png)

El parámetro `opciones` personaliza el comportamiento de la clase. Las opciones tienen que separarse por comas.Las opciones más comunes para las clases de documento habituales se listan en el Cuadro 1.2.


![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig1.2.png)

Ejemplo: Un fichero de entrada para un documento LaTeX podría empezar con la línea:

    \documentclass[11pt,twoside,a4paper]{article}

que manda a LaTeX componer el documento como un artículo con un tamaño de fundición básica de once puntos, y producir un documento adecuado para imprimir a doble cara en papel A4.

## Paquetes

Mientras escribe su documento, probablemente halle que hay algunas
áreas donde el LaTeX básico no puede resolver su problema. Si quiere incluir gráficos, texto en color o código fuente de un fichero en su documento, necesita mejorar las capacidades de LaTeX. Tales mejoras se introducen con paquetes. Los paquetes se activan con la orden:

    \usepackage[opciones]{paquete}

donde paquete es el nombre del paquete y opciones es una lista de palabras clave que activan funciones especiales del paquete.

La orden `texdoc` se usa para acceder a información sobre paquetes.

## Estilos de página

LaTeX soporta tres combinaciones predefinidas de cabeceras y pies de página, llamadas estilos de página. El parámetro estilo de la orden define cuál emplearse.

    \pagestyle{estilo}

El cuadro 1.3 lista los estilos de página predefinidos.

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig1.3.png)

También es posible cambiar el estilo de la página actual con la orden:

    \thispagestyle{estilo}

## Inclusión de ficheros

uando trabaje en proyectos grandes, puede servirle dividir el fichero
de entrada en varias partes que puede reunir al compilarlo. LaTeX tiene dos órdenes que lo ayudan a hacerlo.

    \include{nombre-de-fichero}

Puede usar esta orden en el cuerpo del documento para insertar el
contenido de otro fichero llamado nombre-de-fichero.tex. Tenga en cuenta que LaTeX comenzará una nueva página antes de procesar el material proveniente de nombre-de-fichero.tex.

---

# Composición de textos

L A TEX se diferencia de otros sistemas de composición en que sólo tiene
que decirle tal estructura. La forma tipográfica del texto se deriva según las
“reglas” dadas en el fichero de clase del documento y en los varios ficheros de
estilo usados.

**La unidad básica de texto es el párrafo**.

## Saltos de línea y página

En casos concretos puede ser necesario ordenar a L A TEX que salte de línea:

    \\ ó \newline

comienza una nueva línea sin comenzar un nuevo párrafo.

    \\*

además prohíbe un salto de página tras el salto forzado de línea.

    \newpage

comienza una nueva página.

    \linebreak[n], \nolinebreak[n], \pagebreak[n], \nopagebreak[n]

producen un salto de línea, impiden un salto de línea, producen un salto
de página, o impiden un salto de página, respectivamene. Permiten al autor
ajustar sus efectos mediante el argumento opcional n, al que puede asignarse
un número entre cero y cuatro. Poniendo n a un valor menor que 4, deja
a L A TEX la opción de no hacer caso de su orden si el resultado tiene mal
aspecto.

**Si realmente quiere iniciar una nueva línea, use la orden “newline”.**

## Comillas

No use " para las comillas como haría con una máquina de escribir.
En tipografía hay comillas especiales de apertura y cierre. En L A TEX, use
dos \` (acentos graves) para abrir comillas y dos ' (apóstrofos) para cerrar
comillas inglesas. Para comillas inglesas simples basta con poner una de cada
una.

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/comillas1.png)

Tenga en cuenta que el apóstrofo aparece en el código fuente anterior
como un acento agudo (simétrico al grave).
En la tipografía española, las comillas tradicionales son « y ». La versión
española debería ser así:

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/comillas2.png)

## Puntos suspensivos

En una máquina de escribir, una coma o un punto ocupa el mismo espacio
que cualquier otra letra. En tipografía, estos caracteres ocupan muy poco
espacio y casi se pegan a la letra anterior. En tipografía española esto no es
un problema, porque los ‘puntos suspensivos’ van casi juntos. En tipografía
inglesa no, así que en lugar de escribir tres puntos use la orden:

    \ldots

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/ldots.png)

## Acentos y caracteres especiales

L A TEX soporta el uso de acentos y caracteres especiales para muchos
idiomas. El cuadro 2.2 muestra todo tipo de acentos aplicados a la letra o.
Por supuesto también funcionan con otras letras (vocales o consonantes).
Para situar un acento sobre una i o una j, hay que quitar sus puntos.
Esto se consigue escribiendo \i y \j.

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig2.2.png)

## Soporte para otros idiomas

Si su sistema ya está configurado adecuadamente, puede activar el paquete
babel añadiendo la orden:

    \usepackage[idioma]{babel}

Babel activará automáticamente las reglas de silabación para el idioma que escoja.

Si carga babel con múltiples idiomas:

    \usepackage[idiomaA,idiomaB]{babel}

entonces el último idioma en la lista de opciones será el activo (es decir, idiomaB); puede usar la orden para cambiar el idioma activo.

    \selectlanguage{idiomaA}

La mayoría de los sistemas de ordenador modernos le permiten escribir
letras de diferentes alfabetos directamente desde el teclado. Para manejar
varias codificaciones de entrada usadas por diferentes grupos de idiomas en
diferentes plataformas L A TEX emplea el paquete **inputenc**:

    \usepackage[codificación]{inputenc}

Si tiene un documento multilingüe con codificaciones que entran en
conflicto, considere el uso de unicode a través de la codificación **utf-8**.

    \usepackage[utf8]{inputenc}


Cuando se requieren caracteres
acentuados, TEX los crea combinando un carácter normal con un acento.
Aunque el resultado parece perfecto, este enfoque impide que la silabación au-
tomática funcione en palabras que contienen caracteres acentuados. Además,
algunas letras latinas no pueden crearse combinando un carácter normal con
un acento; sin mencionar los casos de alfabetos no latinos, como el griego o
el cirílico.

Para evitar estos inconvenientes, se crearon varias fundiciones de 8 bites
similares a CM. Las fundiciones Extended Cork (EC) en la codificación
**T1** contienen letras y signos de puntuación para la mayoría de los idiomas
europeos basados en el alfabeto latino.

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig2.3.png

---
