# Introducción a LaTeX para la edición de memorias docentes, libros, artículos y presentaciones
## Autor: Jonathan Martín Valera
### Repositorio creado para el curso de  *Introducción a LaTeX para la edición de memorias docentes, libros, artículos y presentaciones (II ed.)* de cemed de la UGR
#### Fecha de realización: Febrero 2019

---

# Tabla de contenidos

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [Introducción](#introducci%C3%B3n)
  - [¿Qué es TEX?](#%C2%BFqu%C3%A9-es-tex)
  - [¿Qué es LaTeX?](#%C2%BFqu%C3%A9-es-latex)
  - [Editores](#editores)
  - [Ventajas e inconvenientes](#ventajas-e-inconvenientes)
  - [Posibles usos](#posibles-usos)
  - [Ficheros resultantes tras la compilación](#ficheros-resultantes-tras-la-compilaci%C3%B3n)
- [Instalación de TeX Live en Ubuntu](#instalaci%C3%B3n-de-tex-live-en-ubuntu)
- [Manual básico para aprender LaTeX en 139 minutos](#manual-b%C3%A1sico-para-aprender-latex-en-139-minutos)
- [Estructura del fichero de entrada](#estructura-del-fichero-de-entrada)
- [Aspecto del documento](#aspecto-del-documento)
  - [Clase de documento](#clase-de-documento)
  - [Paquetes](#paquetes)
  - [Estilos de página](#estilos-de-p%C3%A1gina)
  - [Inclusión de ficheros](#inclusi%C3%B3n-de-ficheros)
- [Composición de textos](#composici%C3%B3n-de-textos)
  - [Saltos de línea y página](#saltos-de-l%C3%ADnea-y-p%C3%A1gina)
  - [Comillas](#comillas)
  - [Puntos suspensivos](#puntos-suspensivos)
  - [Acentos y caracteres especiales](#acentos-y-caracteres-especiales)
  - [Soporte para otros idiomas](#soporte-para-otros-idiomas)
- [Títulos, capítulos y secciones](#t%C3%ADtulos-cap%C3%ADtulos-y-secciones)
  - [Título del documento](#t%C3%ADtulo-del-documento)
  - [Tabla de índices de contenidos](#tabla-de-%C3%ADndices-de-contenidos)
  - [Referencias cruzadas](#referencias-cruzadas)
  - [Notas al pie de página](#notas-al-pie-de-p%C3%A1gina)
  - [Énfasis del texto](#%C3%A9nfasis-del-texto)
- [Entornos](#entornos)
  - [Listas (itemize, enumerate y description)](#listas-itemize-enumerate-y-description)
  - [Alineación (flushleft, flushright y center)](#alineaci%C3%B3n-flushleft-flushright-y-center)
  - [Citas](#citas)
  - [Resumen (abstract)](#resumen-abstract)
  - [Citas literales (verbatim)](#citas-literales-verbatim)
  - [Elementos deslizantes](#elementos-deslizantes)
  - [Pie de elemento deslizante](#pie-de-elemento-deslizante)
- [Minipáginas](#minip%C3%A1ginas)
- [Tablas](#tablas)
  - [El entorno tabbing](#el-entorno-tabbing)
  - [El entorno tabular](#el-entorno-tabular)
  - [El entorno tabular*](#el-entorno-tabular)
    - [Alineación vertical](#alineaci%C3%B3n-vertical)
    - [Unión de celdas](#uni%C3%B3n-de-celdas)
    - [Dividiendo celdas en diagonal](#dividiendo-celdas-en-diagonal)
    - [Colores](#colores)
  - [El entorno table](#el-entorno-table)
    - [Rotando tablas](#rotando-tablas)
    - [Rotando texto de las celdas](#rotando-texto-de-las-celdas)
    - [Escalado de Tablas](#escalado-de-tablas)
    - [Tablas de ancho fijo](#tablas-de-ancho-fijo)
  - [Tablas largas](#tablas-largas)
- [Figuras](#figuras)
  - [Una sola figura](#una-sola-figura)
    - [Opciones](#opciones)
    - [Figuras flotantes](#figuras-flotantes)
      - [Posición](#posici%C3%B3n)
      - [Pie de figura y referencia](#pie-de-figura-y-referencia)
  - [Sobre formatos](#sobre-formatos)
  - [Conjunto de figuras](#conjunto-de-figuras)
- [Fórmulas matemáticas](#f%C3%B3rmulas-matem%C3%A1ticas)
  - [Agrupación](#agrupaci%C3%B3n)
  - [Más información](#m%C3%A1s-informaci%C3%B3n)
- [Especialidades](#especialidades)
  - [Bibliografía](#bibliograf%C3%ADa)
  - [Cabeceras personalizadas](#cabeceras-personalizadas)
  - [Inclusión de ficheros de texto](#inclusi%C3%B3n-de-ficheros-de-texto)
  - [Uso de gráficos](#uso-de-gr%C3%A1ficos)
  - [Enlaces de hipertexto](#enlaces-de-hipertexto)
- [Más información](#m%C3%A1s-informaci%C3%B3n-1)
- [Referencias](#referencias)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

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

## Ficheros resultantes tras la compilación

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

Enlace --> https://github.com/jmv74211/LaTeX/blob/master/docs/manuales/lshort_spanish.pdf

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

Cuando trabaje en proyectos grandes, puede servirle dividir el fichero
de entrada en varias partes que puede reunir al compilarlo. LaTeX tiene dos órdenes que lo ayudan a hacerlo.

    \include{nombre-de-fichero}

Puede usar esta orden en el cuerpo del documento para insertar el
contenido de otro fichero llamado nombre-de-fichero.tex. Tenga en cuenta que LaTeX comenzará una nueva página antes de procesar el material proveniente de nombre-de-fichero.tex.

---

# Composición de textos

LaTeX se diferencia de otros sistemas de composición en que sólo tiene
que decirle tal estructura. La forma tipográfica del texto se deriva según las
“reglas” dadas en el fichero de clase del documento y en los varios ficheros de
estilo usados.

**La unidad básica de texto es el párrafo**.

## Saltos de línea y página

En casos concretos puede ser necesario ordenar a LaTeX que salte de línea:

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
a LaTeX la opción de no hacer caso de su orden si el resultado tiene mal
aspecto.

**Si realmente quiere iniciar una nueva línea, use la orden “newline”.**

## Comillas

No use " para las comillas como haría con una máquina de escribir.
En tipografía hay comillas especiales de apertura y cierre. En LaTeX, use
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

LaTeX soporta el uso de acentos y caracteres especiales para muchos
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
diferentes plataformas LaTeX emplea el paquete **inputenc**:

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

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig2.3.png)

---

# Títulos, capítulos y secciones

Las siguientes órdenes de sección están disponibles para la clase article:

    \section{...}
    \subsection{...}
    \subsubsection{...}
    \paragraph{...}
    \subparagraph{...}

Si se quiere dividir el documento en partes sin influir en la numeración de secciones o capítulos se puede usar:

    \part{...}

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/part1.png)

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/part2.png)

Cuando trabaje con las clases report o book, estará disponible una orden de sección adicional

    \chapter{...}

Todas las órdenes de sección listadas anteriormente tienen una versión
“estrella”. Se trata de órdenes con el mismo nombre pero seguido de un
asterisco \*. Generan encabezados de sección que no aparecen en el índice general
y que no se numeran. La orden \section{Ayuda}, por ejemplo,
tendría una versión estrella así:

    \section*{Ayuda}

Normalmente los encabezados aparecen en el índice general exactamente
como se introducen en el texto. A veces no es posible, porque el encabezado
es demasiado largo y no cabe en el índice general. La entrada para el índice
general puede indicarse como un argumento opcional antes del encabezado
real.

    \chapter[Título para el índice general]{Un largo
    y aburrido título que aparecerá en el texto}

## Título del documento

El título de todo el documento se genera con la orden:

    \maketitle

El contenido del título tiene que definirse mediante las órdenes:

    \title{...}, \author{...} y opcionalmente \date{...}

Antes de llamar a `\maketitle`, en el argumento de `\author`, puede poner
varios nombres separados por órdenes `\and`.

Un ejemplo de esto puede ser:

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig2.4.png)


## Tabla de índices de contenidos

LaTeX crea un índice general tomando los encabezados de sección y los
números de página del último ciclo de compilación del documento. La orden:

    \tableofcontents

## Referencias cruzadas

En libros, informes y artículos, hay a menudo referencias cruzadas a
figuras, cuadros y trozos especiales de texto. LaTeX proporciona las siguientes
órdenes para referenciar:

    \label{marcador}, \ref{marcador} y \pageref{marcador}

donde **marcador** es un identificador escogido por el usuario. LaTeX rem-
plaza `\ref` por el número de la sección, subsección, figura, tabla o teorema
tras el que se sitúa la orden `\label` correspondiente. `\pageref` imprime el
número de página de la página donde la orden `\label` se sitúa.

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig2.5.png)

## Notas al pie de página

Con la orden:

    \footnote{texto al pie}

Se imprime una nota al pie de la página actual. Deben ponerse las notas 12
tras la parabra u oración a la que se refieren. Las notas que se refieran a una
sentencia o parte de ella deben por tanto ponerse tras la coma o el punto:

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig2.6.png)

## Énfasis del texto

Si un texto se escribe a máquina las palabras importantes se enfatizan
subrayándolas.

    \underline{texto}

En los libros impresos, sin embargo, las palabras se enfatizan componién-
dolas con una fundición cursiva. LaTeX enfatiza texto con la orden:

    \emph{texto}

---

# Entornos

    \begin{entorno}
    texto
    \end{entorno}

Aquí entorno es un nombre de entorno. Los entornos pueden anidarse
uno dentro de otro mientras se mantenga el orden correcto.

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig2.7.png)

## Listas (itemize, enumerate y description)

El entorno `itemize` es adecuado para listas simples, el entorno `enumerate`
para listas enumeradas y el entorno `description` para descripciones.

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig2.8.png)

## Alineación (flushleft, flushright y center)

Los entornos `flushleft` y `flushright` generan párrafos alineados a la
izquierda o a la derecha respectivamente. El entorno center genera texto
centrado. Si no indica los saltos de línea mediante `\\`, LaTeX los determinará
automáticamente.

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig2.9.png)

## Citas

El entorno quote es útil para citas, frases importantes y ejemplos.

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig2.10.png)

## Resumen (abstract)

En publicaciones científicas es habitual empezar con un resumen que
da al lector una idea rápida de lo que puede esperar. LaTeX proporciona el
entorno abstract con este propósito. Normalmente abstract se usa para
documentos compuestos con la clase article.

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig2.11.png)

## Citas literales (verbatim)

El texto encerrado entre `\begin{verbatim}` y `\end{verbatim}` se escri-
birá directamente, como escrito a máquina, con todos los saltos de línea y
espacios, sin ejecutar ninguna orden LaTeX.

Dentro de un párrafo, un comportamiento similar se puede obtener con `\verb+texto+`

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig2.12.png)

## Elementos deslizantes

Actualmente la mayoría de las publicaciones contienen muchas figuras
y cuadros. Estos elementos requieren un tratamiento especial, porque no pueden
dividirse entre dos páginas.Un método posible sería empezar una
nueva página cada vez que una figura o un cuadro es demasiado grande para
encajar en la página actual. Este enfoque dejaría páginas parcialmente vacías,
lo que da mal aspecto.

La solución a este problema es deslizar (dejar flotar) cualquier figura
o cuadro que no encaje en la página actual hacia una página posterior, y
rellenar la página actual con texto del documento. LaTeX ofrece dos entornos
para elementos deslizantes: uno para cuadros y otro para figuras.

Cualquier cosa que vaya dentro de un entorno figure o table se tratará
como deslizante. Ambos entornos admiten un parámetro opcional llamado
*colocador*.

    \begin{figure}[colocador] ó \begin{table}[colocador]

Este parámetro se usa para decir a LaTeX dónde se puede deslizar el
elemento. Se contruye un colocador mediante una cadena de permisos de
deslizamiento. Véase la siguiente cuadro:

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig2.17.png)

**Si LaTeX no coloca los deslizantes como usted esperaba, suele ser
por culpa de un solo deslizante atascado en una de las dos colas.**

Si el deslizante no encaja en el lugar indicado se queda atorado, y
bloquea los deslizantes siguientes. En concreto, no debería nunca jamás usar
la opción [h] —es tan mala que en versiones recientes de LaTeX se sustituye
automáticamente por [ht]—.

## Pie de elemento deslizante

Puede definir un pie para el deslizante.

    \caption{texto del pie}

 LaTeX añadirá un número correlativo y la cadena “Figura” o “Cuadro”.

 Las dos órdenes

    \listoffigures y \listoftables

funcionan análogamente a la orden `\tableofcontents`, imprimiendo un
índice de figuras o cuadros, respectivamente.

Tales índices muestran los pies
completos, así que si tiende a usar pies largos debe tener una versión más
corta del pie para los índices. Se consigue poniendo la versión corta entre
corchetes tras la orden `\caption`.

    \caption[Corto]{LLLLLLLaaaaaaarrrrrrrgggggggoooooo}

Con `\label` y `\ref`, puede crear una referencia al flotante dentro del
texto.

En ciertas circunstancias podrá requerirse el uso de la orden

    \clearpage o incluso de \cleardoublepage

Manda a LaTeX colocar inmediatamente todos los deslizantes que quedan
en las colas y después empezar una página nueva. `\cleardoublepage` incluso
salta a una nueva página a la derecha.

# Minipáginas

El entorno minipage genera una caja que actúa como minicaja, es decir, se trata de una miniversión
de una página que insertamos dentro de una página. Su sintáxis es la siguiente:

    \begin{minipage}}[pos1][long2][pos2]{long1}
    texto
    \end{minipage}

donde:

- `long1` , indica el ancho y es el único argumento obligatorio
- `pos1` , determina la alineación de la caja con respecto al contexto en el que se encuentra y puede ser:
  - **t**: alinea la línea base de la primera línea con la línea base de la línea actual
  - **b**: alinea la línea base de la última línea con la línea base de la línea actual.

  Por defecto, se centra verticalmente la caja. Para enfatizarlo, podemos utilizar la opción c.

- `long2` determina la altura de la caja.
- `pos2` Mediante pos2 podemos determinar dónde se va a colocar el texto dentro de la caja:
  - **t**: en la parte superior de la caja
  - **b**: en la parte inferior de la caja
  - **c**: centrado (verticalmente)
  - **s**: ocupando toda la caja

Un ejemplo puede ser el siguiente:

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.38.png)

El código para generar el ejemplo anterior:

    \begin{minipage}[b]{3cm}
        texto
    \end{minipage}
    Línea actual.
    \begin{minipage}[c]{3cm}
        texto
    \end{minipage}
    Linea actual
    \begin{minipage}[t]{3cm}
        texto
    \end{minipage}

Otra gran utilidad que tiene es la de poner figuras una al lado de otra.

El entorno minipage se puede utilizar dentro de otros entornos como table y figure para colocar el material de manera adecuada.

En el siguiente ejemplo vamos a poner dos figuras del mismo tamaño teniendo cada una de ellas leyenda propia.

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.39.png)

El código para generar esta situación es el siguiente:

    \begin{figure}[htbl!]
        \begin{minipage}[b]{0.5\linewidth} %Una minipágina que cubre la mitad de la página
            \centering
            \includegraphics[width=6cm]{cataratas3.jpg}
            \caption{Cataratas de Iguazú (Argentina)} \label{figura1}
        \end{minipage}
        \hspace{0.5cm} % Si queremos tener un poco de espacio entre las dos figuras
        \begin{minipage}[b]{0.5\linewidth}
            \centering
            \includegraphics[width=6cm]{casascolores.jpg}
            \caption{Casas de colores en La Boca (Argentina)} \label{figura2}
        \end{minipage}
    \end{figure}

En el siguiente ejemplo volvemos a colocar las dos figuras juntas pero cada una con un tamaño distinto y las dos aunadas en una misma leyenda:

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.40.png)

El código para generar esto es el siguiente:

    \begin{figure}[htbl!]
        \centering
        \begin{minipage}[c]{8cm}
            \includegraphics[width=8cm]{cataratas3.jpg}
        \end{minipage}
        \begin{minipage}[r]{2cm}
            \includegraphics[width=2cm]{casascolores.jpg}
        \end{minipage}
        \caption{Fotos de Argentina}\label{figures} \label{figura3}
    \end{figure}

Otro ejemplo:

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/ejemplo_minipage.png)


---

# Tablas

## El entorno tabbing

Este entorno de trabajo no genera exáctamente tablas, pero permite presentar
texto encolumnado, de manera similar a como lo harı́a un tabulador.

Del entorno de trabajo se entra y se sale mediante los comandos `\begin{tabbing}`
y `\end{tabbing}` respectivamente. Cuenta con los siguientes comandos:

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.6.png)

Un ejemplo podría ser el siguiente:

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.7.png)

También podemos fijar el ancho de las columnas:

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.8.png)

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.9.png)


## El entorno tabular

El entorno tabular se usa para componer tablas con líneas opcionales horizontales
o verticales. LaTeX determina el ancho de las columnas automáticamente.

    \begin{tabular}[pos]{espec}

El argumento `espec` de la orden define el formato de la tabla. Use un **l** para una columna de texto
alineado por la *izquierda*, **r** para alineación por la *derecha* y **c** para texto *centrado*.

Si el texto de una columna es demasiado ancha para la página, LaTeX no
lo partirá automáticamente. Mediante `p{anchura}` puede definir un tipo
de columna especial que partirá el texto como en un párrafo normal.

El argumento `pos` indica la posición vertical de la tabla relativa a la base
del texto alrededor. Use una de las letras **t** , **b** o **c** para indicar alineación
por lo *alto*, por lo *bajo* o por el *centro*, respectivamente.

En un entorno tabular, `&` salta a la columna siguiente, `\\` comienza un
nuevo renglón y `\hline` inserta una línea horizontal.

Puede añadir líneas
parciales usando `\cline{j-i}`, donde j e i son los números de las columnas
sobre las que debería extenderse la línea.

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig2.13.png)

El separador de columnas puede indicarse con el constructo `@{...}` .
Esta orden elimina el espacio entre columnas y lo remplaza con lo que se
ponga entre las llaves. Un uso común de esta orden se explica abajo en un
problema de alineación de decimales. Otra aplicación posible es suprimir el
espacio adicional de una tabla mediante `@{}` .

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig2.14.png)

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig2.15.png)

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig2.16.png)

-----------------------------
Este entorno de trabajo nos permite trabajar con muchas más posibilidades que
el entorno tabbing. Tiene dos formatos posibles que son los siguientes:

    \begin{tabular}[posición]{columnas}
    columna 1 & columna 2 & columna n \\
    ...
    ...
    ...
    \end{tabular}
    ó
    \begin{tabular*}{ancho}[posición]{columnas}
    columna 1 & columna 2 & columna n \\
    ...
    ...
    ...
    \end{tabular*}

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.10.png)

**Ejemplo 1**

Tabla básica sin borde. Al poner:

    \begin{tabular}{l c r}
    columna 1 & columna 2 & columna 3 \\
    col 1 & col 2 & col 3\\
    \end{tabular}

Veremos entonces la primer columna alineada a izquierda, la segunda centrada y
la tercera alineada a derecha:

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.11.png)

**Ejemplo 2**

Tabla básica con borde doble en el exterior y simple adentro. Al poner:

    \begin{tabular}{||l | c | r||}
    \hline
    \hline
    columna 1 & columna 2 & columna 3 \\
    \hline
    col 1 & col 2 & col 3\\
    \hline
    \end{tabular}

Veremos entonces:

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.12.png)


## El entorno tabular*

Veamos un pequeño ejemplo:

`@{\extracolsep {longitud}}` Nos permite establecer un espacio en blanco entre
columnas de la longuitud dada.

    \begin{tabular*}{10 cm}{|l|l@{\extracolsep{\fill}}r|}
    \hline
    &Desde&Hasta\\
    \hline
    Ruta 2&Buenos Aires & Mar del Plata\\
    Ruta 7&Buenos Aires &Mendoza\\
    \hline
    \end{tabular*}

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.13.png)


### Alineación vertical

**Alineación de la parte superior de la tabla con la base del texto**

    Hola mundo
    \begin{tabular}[t]{|l |c |r|}
    \hline
    pos 1 & pos 2 & pos 3 \\
    \hline
    posición 1 & posición 2 & posición 3 \\
    \hline
    \end{tabular}

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.14.png)

**Alineación del centro de la tabla con la base del texto**

    Hola mundo
    \begin{tabular}[c]{|l| r| c|}
    \hline
    pos 1 & pos 2 & pos 3 \\
    \hline
    posición 1 & posición 2 & posición 3 \\
    \hline
    \end{tabular}

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.15.png)

**Alineación de la base de la tabla con la base del texto**

    Hola mundo
    \begin{tabular}[b]{| l | c| r |}
    \hline
    pos 1 & pos 2 & pos 3 \\
    \hline
    posición 1 & posición 2 & posición 3 \\
    \hline
    \end{tabular}

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.16.png)

Alineación diferenciada en una misma columna

    \begin{tabular}{|l|l|}
    \hline
    celda 1 &celda 2\\
    \hline
    celda 3 &\makebox[2.5cm][c]{celda 4}\\
    \hline
    celda 5 &\makebox[2.5cm][r]{celda 6}\\
    \hline
    \end{tabular}

Obtenemos como resultado:

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.17.png)

### Unión de celdas

Si queremos unir varias **columnas**, debemos usar el comando `multicolum`. Este
tiene la siguiente sintaxis:

    \multicolumn{columnas}{posición}{texto}

- columnas: Indica cuantas columnas tendrá de ancho la celda.
- posición: Indica la alineación del texto.
- texto: Indica el contenido de la celda.

**Ejemplo**

    \begin{tabular}{|c|c|c|}
    \hline
    \multicolumn{3}{|c|}{multicolumna 1-3}\\
    \hline
    \multicolumn{2}{|c|}{multicolumna 1-2} & columna3\\
    \hline
    columna 1 & \multicolumn{2}{|c|}{multicolumna 2-3}\\
    \hline
    \end{tabular}

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.18.png)

Si queremos unir varias **filas** debemos usar el comando `multirow`. Este tiene la siguiente sintaxis:

    \multirow{filas}{ancho}[movimiento vertical]{texto}

Además el paquete “multirow” debe ser declarado al principio del documento.

    \usepackage{multirow}

- columnas: Indica cuantas filas tendrá de alto la celda.
- ancho: Indica el ancho de la columna, si se pone asterisco
tendrá el ancho por defecto.
- movimiento vertical: Sirve para alinear el texto verticalmente(opcional).
- texto: Indica el contenido de la celda.

**Ejemplo**

    \begin{tabular}{|c|c|c|}
    \hline
    \multirow{3}{4cm}{multifila 1-3} & \multirow{2}{*}[3 mm]
    {multifila 1-2} & columna 3\\
    \cline{3-3}
    & & \multirow{2}{*}[-3 mm]{multifila 2-3}\\
    \cline{2-2}
    & columna 2 & \\
    \hline
    \end{tabular}

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.19.png)

### Dividiendo celdas en diagonal

Para poder hacer divisiones diagonales en las tablas debemos usar el paquete
`slashbox`, por lo tanto debemos agregar en el encabezado del archivo fuente la
siguiente declaración:

    \usepackage{slashbox}

Cuando tenemos que dividir una celda usamos el siguiente comando:

    \backslashbox{izquierda}{derecha}

Donde “izquierda” y “derecha” será el contenido de la celda a cada lado de la
lı́nea diagonal.

**Ejemplo**

    \begin{tabular}{|l|r|r|r|}
    \hline
    \backslashbox{origen}{destino} & Buenos Aires & Córdoba & Rosario \\
    \hline
    Buenos Aires & 0 Km & 716 Km & 318 Km\\
    \hline
    Córdoba & 716 Km & 0 Km & 398 Km\\
    \hline
    Rosario & 318 Km & 398 Km & 0Km\\
    \hline
    \end{tabular}

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.20.png)

### Colores

Para colorear las columnas disponemos del comando `columncolor`, el mismo
posee la siguiente sintaxis:

    \columncolor[color model]{color}[left overhang][right overhang]


![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.21.png)

El comando columncolor solo puede ser usado en la definición de una columna
o con el entorno multicolumn. El modo de usarlo es:

    >{\columncolor[model color]{color} ...}

**Ejemplo: Distintos modelos de color**

    \definecolor{micolor}{rgb}{0,1,0.5}
    \begin{tabular}{|>{\columncolor[rgb]{0.7,0,0.7}} c |
    >{\columncolor[cmyk]{0.8,0.5,0.4,0.1}}c |
    >{\columncolor[gray]{0.7}}c |
    >{\columncolor{blue}}c |
    >{\columncolor{micolor}} c|}
    \hline
    Col 1 & Col 2 & Col 3 & Col 4 & Col 5 \\
    \hline
    rgb & cmyk & gray & predefinido & definido por nosotros\\
    \hline
    \end{tabular}

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.22.png)

**Ejemplo: Coloreando el entorno multicolumn**

    \begin{tabular}{|c|c|}
    \hline
    \multicolumn{2}{|>{\columncolor{red}}c|}{multicolumna 1-2}\\
    \hline
    \multicolumn{1}{|>{\columncolor{green}}c|}{columna 1} &
    \multicolumn{1}{|>{\columncolor{yellow}}c|}{columna 2}\\
    \hline
    \end{tabular}

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.23.png)

**Ejemplo: Determinando el ancho del color**

    \begin{tabular}{| >{\columncolor[rgb]{1,1,0}}l |
    >{\columncolor[rgb]{0,1,1}[0cm][0cm]} l |
    >{\columncolor[rgb]{1,0,1}[.5\tabcolsep][.5\tabcolsep]} l|}
    \hline
    Enrique & Cerse\\
    \hline
    Clara & Boya\\
    \hline
    Ana & Conda\\
    \hline
    \end{tabular}

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.24.png)

**Ejemplo: Filas en color**

La sintaxis es similar a la de las columnas, pero más sencilla:

    \rowcolor[model color]{color}

Los parámetros `model color` y `color` tienen los mismos significados que en
`columncolor`.

    \begin{tabular}{|l|l|}
    \hline
    \rowcolor[cmyk]{1,1,0,0}Abraham & Lapuerta\\
    \hline
    \rowcolor[rgb]{0,1,1}Roque & Fort\\
    \hline
    \rowcolor[gray]{0.9}Eva & Dirse\\
    \hline
    \end{tabular}

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.25.png)

**Ejemplo: Coloreando celdas individuales**

El paquete `colortbl` también permite colorear las celdas una a una.La sintáxis es la siguiente:

    \cellcolor[modelo color]{color}

    \begin{tabular}{|l|l|}
    \hline
    \cellcolor[cmyk]{1,1,0,0}Abraham & \cellcolor{red}Lapuerta\\
    \hline
    \cellcolor[rgb]{0,1,1}Roque & \cellcolor{blue}Fort\\
    \hline
    \cellcolor[gray]{0.9}Eva & \cellcolor{green}Dirse\\
    \hline
    \end{tabular}

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.26.png)  

## El entorno table

Si nosotros generásemos una tabla con el entorno tabular, esta intentará ubicarse
debajo del texto en el que se encuentra en el código fuente, si no entrase en
la página actual se colocará en la siguiente, dejando en blanco el espacio en la
hoja anterior. Esto no quedarı́a muy bien, pero lo podemos solucionar con el
entorno “table”, que lo que hace es convertir la tabla en flotante. Su sintaxis es
la siguiente:

    \begin{table}[posición]
    \begin{tabular}
    ...
    ...
    ...
    \end{tabular}
    \caption[Descripción corta]{Descripción larga}
    \end{table}

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.27.png)

**Ejemplo**

    \begin{table}[!hbt]
    \begin{center}
    \begin{tabular}{|l|l|}
    \hline
    Nombre & Apellido\\
    \hline
    Juan & Perez\\
    José & Lopez\\
    Carlos & Garcı́a\\
    \hline
    \end{tabular}
    \caption{Listado de alumnos}
    \end{center}
    \end{table}

Y obtendremos:

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.28.png)

### Rotando tablas

Si queremos rotar una tabla ( o algunas otras
cosas) debemos usar el paquete `rotating`, por lo tanto debemos agregar en el
encabezado del archivo fuente la siguiente declaración:

    \usepackage{rotating}

La primer opción es usar el entorno `sydeways`, lo que hace simplemente es rotar
la tabla 90

\begin{center}
\begin{sideways}
\begin{tabular}{|l|r|r|}
\hline
&columna 1&columna 2\\
\hline
fila 1 & $a_{11}$ & $a_{12}$\\
\hline
fila 2 & $a_{21}$ & $a_{22}$\\
\hline
\end{tabular}
\end{sideways}
\end{center}

Como resultado conseguimos lo siguiente:

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.29.png)

### Rotando texto de las celdas

Para rotar el texto de una celda también podemos usar el entorno `sideways`.

    \begin{center}
    \begin{tabular}{|l|r|r|}
    \hline
    &\begin{sideways}columna 1\end{sideways}&\begin{sideways}columna 2
    \end{sideways}\\
    \hline
    fila 1 & $a_{11}$ & $a_{12}$\\
    \hline
    fila 2 & $a_{21}$ & $a_{22}$\\
    \hline
    \end{tabular}
    \end{center}

Como resultado obtenemos lo siguiente:

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.30.png)

### Escalado de Tablas

El comando `scalebox`. Este comando permite escalar una tabla, tiene el siguiente formato:

    \scalebox{escala horizonal}[escala vertical]{argumento}

Donde:

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.31.png)

**Ejemplo: Especificando diferentes escalas para el ancho y alto de la tabla.**

    \scalebox{1.5}[2]{
    \begin{tabular}{|r|l|l|}
    \hline
    &columna 1&columna 2\\
    \hline
    fila 1& celda 1&celda 2\\
    \hline
    fila 2& celda 3&celda 4\\
    \hline
    \end{tabular}}

Obtenemos como resultado:

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.32.png)

**Ejemplo: Especificando una misma escala para el ancho y alto de la tabla.**

    \scalebox{0.5}{
    \begin{tabular}{|r|l|l|}
    \hline
    &columna 1&columna 2\\
    \hline
    fila 1& celda 1&celda 2\\
    \hline
    fila 2& celda 3&celda 4\\
    \hline
    \end{tabular}}

Obtenemos como resultado:

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.33.png)

### Tablas de ancho fijo

El paquete `tabularx` permite definir el ancho de una tabla de la misma manera que con el entorno tabular*.

Para poder usar el paquete tabularx, previamente debemos declararlo en el encabezado:

    \usepackage{tabularx}

El entorno tabularx solo se aplicará a las columnas indicadas con la letra “X”.

    \begin{tabularx}{5cm}{|X|r|}
    \hline
    Alumno & Padrón\\
    \hline
    Carlos Gardel & 80546\\
    \hline
    Anı́bal Troilo & 80547\\
    \hline
    Homero Manzi\footnote{El paquete \emph{tabularx} permite el uso de
    notas al pie} & 80548\\
    \hline
    Enrique Santos Discépolo & 80549\\
    \hline
    \end{tabularx}

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.36.png)

El paquete tabularx, sólo permite que el texto de las columnas cuyo ancho se ajustan automáticamente quede alineado a izquierda. Para corregir este inconveniente, existe el paquete `tabulary`.

Como siempre debemos declarar el paquete en el encabezado:

    \usepackege{tabulary}

Veamos un ejemplo:

    \begin{tabulary}{10cm}{|L|C|R|J|}
    \hline
    Ejemplo de celda alineada a izquierda& Ejemplo de celda con texto
    centrado & Ejemplo de celda alineada a derecha & Ejemplo de celda
    contexto justificado\\
    \hline
    \end{tabulary}

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.37.png)

El paquete `tabularx` tiene problemas de compatibilidad con el entorno `verbatim`.

## Tablas largas

Si intentásemos crear un tabla que ocupe más de una página, verı́amos que
LaTeX la genera de manera errónea. Es por este motivo que se creó el entorno `longtable`. Para poder usarlo, debemos definir en la cabecera del documento:

    \usepackage{longtable}usepackage{longtable}

El entorno `longtable` se puede ver como una mezcla de los entornos `tabular` y
`table` (que veremos más adelante). Las columnas se definen de igual manera
que en el entorno `tabular` y las filas se separan por `\\`, con la salvedad que se
puede poner una unidad de longitud después del comando por ejemplo:

    \\[3cm]

Esto generará un salto de lı́nea de la medida especificada entre corchetes. No se
permite alinear la tabla con respecto al texto con los argumentos [t], [b] o [c]
como en el entorno tabular.

Acepta los siguientes comandos:

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.34.png)

    \begin{longtable}{|l|l|}
    \hline
    \multicolumn{2}{|c|}{Primera fila de primera hoja} \\
    \hline
    \endfirsthead
    \hline
    \multicolumn{2}{|c|}{Primera fila de todas las hojas} \\
    \hline
    \endhead
    \hline
    \multicolumn{2}{|c|}{Última fila de la última hoja\footnotemark[2]
    }\\
    \hline
    \caption{Tabla larga}
    \endlastfoot
    \hline
    \multicolumn{2}{|c|}{Última fila de todas hojas} \\
    \hline
    \endfoot
    \footnotetext[2]{footnote del pie de tabla.}
    uno & dos\\[4cm]
    \hline
    tres\footnote{footnote, no puede ser usado en el entorno
    ‘‘tabular’’.} & cuatro\\
    \hline
    cinco & seis\\[2cm]
    \end{longtable}

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.35.png)

---

# Figuras

Para insertar figuras nos hacen falta dos cosas:

-   El paquete [`graphicx`](https://ctan.org/pkg/graphicx)[^graphicx]
-   El comando `\includegraphics[opciones]{ruta}`.

Vamos a dividir esta entrada en dos partes: insertar una única figura e
insertar una figura formada por subfiguras.

## Una sola figura

Añadir una figura es superfácil. Solo tenemos que hacer:

```latex
\includegraphics{ruta_a_la_figura}
```

No hace falta ni siquiera que le pongamos la extensión, él buscará la
imagen correspondiente. Evidentemente, esto tiene un problema: nos
pondrá la imagen *ahí mismo* y de su tamaño original. Lo primero aun
no lo podemos solucionar pero el tamaño podemos ajustarlo con las
opciones.

### Opciones

Las opciones son lo que le pasamos al comando entre los corchetes y nos
permiten controlar cosas de la imagen. Aquí os recopilo las que yo uso
más:

-   `height`: la altura que debe tener la figura, escalará el gráfico
    hasta que tenga esta altura
-   `width`: la anchura que debe tener la figura, escalará el gráfico
    hasta que tenga esta anchura
-   `scale`: cuánto hay que escalar la figura, sobre 1
-   `angle`: cuánto hay que girar la figura, en grados

Por ejemplo, si queremos reducir la figura a la mitad y girarla 90
grados hacemos:

```latex
\includegraphics[angle=90,scale=0.5]{ruta_a_la_figura}
```

Es interesante utilizar `height` y `width` en combinación con las
[longitudes que define LaTeX](https://en.wikibooks.org/wiki/LaTeX/Lengths),
por ejemplo, para que una figura tenga la anchura del texto haríamos:

```latex
\includegraphics[width=\textwidth]{ruta_a_la_figura}
```

Podemos modificar también esta longitud, por ejemplo, para que sea un
70% de la anchura del texto:

```latex
\includegraphics[width=0.7\textwidth]{ruta_a_la_figura}
```

La ventaja de este sistema es que si cambiamos los márgenes
la figura se adaptará sola. Ahora vamos a ver cómo gestionamos la
posición de la figura.

### Figuras flotantes

Esto nos permite, aparte de ponerle un pie de figura y una referencia,
decidir su posición en la hoja. También tenemos la opción de [rodear la
imagen de
texto](http://texblog.org/2010/05/13/wrap-text-around-figures-and-tables/)
con el entorno `wrapfigure`, os lo dejo de deberes.

#### Posición

Cuando digo decidir no digo *la versión Word* de decidir. LaTeX de por
sí pone las figuras donde mejor quedan (según él) y nosotros le damos
sugerencias de lo que preferimos. Podemos obligarle a poner las figuras
en determinado lugar, pero no suele ser muy buena idea, es mejor
reservar esta opción para los casos extremos. Esta es la sintaxis:

```latex
\begin{figure}[posición]
  \includegraphics[opciones]{ruta}
\end{figure}
```

La opción `posición` puede tomar estos valores:

-   `h` (*here*), le decimos que ponga la imagen más o menos aquí
-   `t` (*top*), preferiblemente en la parte superior de la página
-   `b` (*bottom*), preferiblemente en la parte inferior de la página
-   `p` (*page*), que junte los objetos flotantes en una página
-   `!` que ignore sus reglas internas de posicionamiento
-   `H` que ponga la imagen *justo aquí*, similar a `h!` y con muchas
    papeletas de hacer cosas rarunas

Estas opciones se pueden combinar, por ejemplo, `tb` solo probará arriba
y abajo. El orden no afecta. Otra cosa a tener en cuenta es la
alineación de la figura. Por defecto se alinean a la izquierda, podemos
cambiarla con los siguientes comandos:

-   `\centering`: para centrar
-   [`\raggedleft`](http://printwiki.org/Ragged_Left): para alinear a la
    derecha
-   `\raggedright`: para alinear a la izquierda

que pondríamos dentro del entorno `figure` antes de insertar la imagen:

```latex
\begin{figure}[posición]
  \centering
  \includegraphics[opciones]{ruta}
\end{figure}
```

#### Pie de figura y referencia

Como hemos dicho, el entorno `figure` nos permite también poner un pie
de figura y una etiqueta a la figura:

```latex
\begin{figure}[posición]
  \includegraphics[opciones]{ruta}
  \caption{Pie de figura}
  \label{etiqueta}
\end{figure}
```

La etiqueta sirve para hacer referencia a la figura en el texto con el
comando `\ref{etiqueta}`, por ejemplo:

```latex
\begin{figure}[h]
  \includegraphics[scale=0.7]{Figuras/gatos}
  \caption{Unos gatos molones}
  \label{fig:gatos}
\end{figure}

Como se ve en la Figura \ref{fig:gatos}, hay gatos negros y blancos
```


LaTeX nos numerará las figuras correctamente el solito y citará la
figura correspondiente cuando se lo pidamos. Una idea inteligente es
etiquetar las cosas de manera que luego no nos volvamos locos porque no
sabemos si una determinada etiqueta hace referencia a una ecuación, a
una tabla o a un capítulo. Cada uno aquí tiene sus maneras, una opción
podría ser:

-   `fig:` para las figuras
-   `eq:` para las ecuaciones
-   `sec:` para las secciones

Tampoco hay que obsesionarse, claro, mientras seamos coherentes.

## Sobre formatos

Una última nota antes de pasar a hablar de múltiples figuras. Cuando
hablábamos de compiladores dijimos que LaTeX se puede compilar a *dvi* y
*pdf* dependiendo de si usamos `latex` o `pdflatex` (o las otras
opciones con y sin `la`). Para las imágenes esto es importante: `latex`
solo compilará si las imágenes están en formato *eps*; `pdflatex`, en
cambio, acepta *pdf*, *png* y *jpg*. El caso del formato *eps* al
compilar a *pdf* es especial, técnicamente no metemos la imagen en
*eps*, sino que por detrás se llama al programa
[`epstopdf`](https://www.ctan.org/pkg/epstopdf), se convierte a *pdf* y
se inserta. En general se hace solo, pero depende del programa, Pandoc,
por ejemplo, [no lo
hace](https://github.com/jgm/pandoc/commit/a9628d0745784f6f99edfca008d64dcffeb74bc8).
Os lo digo porque tengo compañeros de curro *convencidísimos* de que
ellos meten las imágenes en *eps* en sus documentos a pesar de que
tienen una carpeta llena de *pdfs* con nombres del tipo
`figure-eps-converted-to.pdf`. Y les gritan a los otros en plan: *¿Pero
cómo metes eso en* pdf *? ¿No ves que pierdes calidad?* Una cosa
interesante de `epstopdf` es que lo podemos usar aparte en la terminal,
por ejemplo:

```bash
epstopdf archivo.eps
```

nos creará `archivo.pdf`.
[Aquí](https://ondahostil.wordpress.com/2016/05/31/lo-que-he-aprendido-bucle-para-pasar-de-eps-a-pdf-en-cmd/)
hice un bucle y todo que me convertía todas las imágenes de la
carpeta.

## Conjunto de figuras

Ahora vamos a ver cómo hay que hacer si queremos incluir una figura
formada por subfiguras, es decir, que un grupo de figuras que van juntas
y comparten pie de figura. Para esto se usaba primero el paquete
`subfigure`, luego [`subfig`](http://www.ctan.org/pkg/subfig) y ahora se
supone que debe usarse
[`subcaption`](https://www.ctan.org/pkg/subcaption). Resulta que
`subfig` tiene problemas con `hyperref` (el paquete de hacer
hipervínculos) y `subcaption` no. Además, `subcaption` no es compatible
con ninguno de los dos anteriores. El paquete `subcaption` define el
entorno `subfigure`, que se usa a su vez dentro del entorno `figure`.
Tiene esta pinta:

```latex
\begin{subfigure}[posición]{ancho}
  % Contenido
\end{subfigure}
```

Dentro del entorno `subfigure` escribimos exactamente lo mismo
que pondríamos dentro del entorno `figure`. Por ejemplo, si quisiéramos
poner dos imágenes en paralelo haríamos algo así:

```latex
\documentclass{article}
% Necesitamos los paquetes graphicx, caption y subcaption
\usepackage{graphicx}
\usepackage{caption}
\usepackage{subcaption}
\begin{document}
  \begin{figure}
    \centering
	\begin{subfigure}[h]{0.45\textwidth}
      \includegraphics\[width=\textwidth\]{figura1}
	  \caption{Pie de figura1}
	  \label{fig:figura1}
	\end{subfigure}
    \begin{subfigure}[h]{0.45\textwidth}
      \includegraphics[width=\textwidth]{figura2}
	  \caption{Pie de figura2}
	  \label{fig:figura2}
	\end{subfigure}
    \caption{Pie general}
  \end{figure}
\end{document}
```

Referencia de esta sección: https://github.com/Ondiz/cursoLatex/blob/master/Contenido/Markdown/04.Figuras.md

---

# Fórmulas matemáticas

Hay dos posibildades: escribir las matemáticas dentro de un párrafo, en el mismo renglón
que el resto del texto, o partir el párrafo para componer las matemáticas
aparte, destacadas.

 El texto matemático dentro del párrafo se introduce entre
\( y \), , entre $ y $, o entre `\begin{math}` y `\end{math}`.

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig3.1.png)

Si quiere que sus ecuaciones o fórmulas matemáticas más grandes se
sitúen destacadas aparte del resto del párrafo, es preferible aislarlas.
Para ello, puede encerrarlas entre \[ y \], entre `\begin{displaymath}` y
`\end{displaymath}`, o entre `\begin{equation}` y `\end{equation}`.

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig3.2.png)

Si quiere que LaTeX enumere sus ecuaciones, puede usar el entorno
equation. Puede etiquetar mediante `\label` la ecuación con un número
y referirse a éste desde otro lugar del texto usando `\ref` o la orden `\eqref`
del paquete amsmath:

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig3.3.png)

Observe las diferencias de estilo entre las ecuaciones en párrafo y las
aisladas:

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig3.4.png)

Si quiere componer texto normal dentro de una fórmula
(tipo redondo y espaciado normal) entonces tiene que introducir el
texto usando las órdenes `\textrm{...}`

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig3.5.png)

## Agrupación

La mayoría de las órdenes en modo matemático actúan sólo sobre el
siguiente carácter, así que si quiere que una orden afecte a varios caracteres,
debe agruparlos juntos entre llaves: `{...}`.

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig3.6.png)

## Más información

Para más información acerca de estructuras, teoremas, símbolos ... matemáticos, se puede consultar este **[manual](https://github.com/jmv74211/LaTeX/blob/master/docs/lshort_spanish.pdf)** en el capítulo 3, donde se aborda con más profundidad todos estos temas.

También se puede consultar este **[manual](https://github.com/jmv74211/LaTeX/blob/master/docs/Matemáticas/Fórmulas_matemáticas.pdf)**

---

# Especialidades

## Bibliografía

Puede crear una bibliografía con el entorno `thebibliography`. Cada
entrada empieza con

    \bibitem[etiqueta]{marcador}

El marcador se usa para citar el libro o artículo desde el documento.

    \cite{marcador}

Si no usa la opción etiqueta, las entradas se numerarán automáticamente.
El parámetro tras la orden `\begin{thebibliography}` define cuánto espacio
reservar para el número de las etiquetas. En el próximo ejemplo, `{99}` dice a
LaTeX que espere que ninguno de esos números será más ancho que el número
99.

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.1.png)

## Cabeceras personalizadas

El objetivo de personalizar cabeceras y pies es conseguir que funcionen
los nombres de sección y capítulo.

LaTeX realiza esto en dos etapas. En la
definición de la cabecera y el pie, use las órdenes `\rightmark` y `\leftmark`
para representar la sección y el capítulo actual, respectivamente. Los valores
de estas dos órdenes se sobrescribirán cada vez que se procese una orden de
capítulo o sección.

La figura 4.1 muestra una configuración posible para el paquete fancyhdr
que hace que las cabeceras aparezcan como en **[este](https://github.com/jmv74211/LaTeX/blob/master/docs/lshort_spanish.pdf)** libro.

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.2.png)

## Inclusión de ficheros de texto

El paquete `verbatim` proporciona la orden:

    \verbatiminput{nombrefichero}

**que le permite incluir un fichero de texto en su documento como si
estuviera dentro de un entorno verbatim**.

Como el paquete `verbatim` es parte del lote ‘tools’, debería encontrarse
pre-instalado en la mayoría de los sistemas.

## Uso de gráficos

Incluir gráficos en un documento funciona mejor con el paquete `graphicx`. Usando la opción del controlador especial pdftex el paquete trabajará también con pdf LaTeX:

    \usepackage[pdftex]{color,graphicx}

Para incluir el gráfico en el documento:

    \includegraphics[clave=valor, . . . ]{fichero}

El parámetro opcional acepta
una lista separada por comas de `claves` y `valores` asociados. Las `claves`
pueden usarse para alterar la anchura, altura y giro del gráfico incluido.

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.3.png)

El siguiente código de ejemplo puede ayudar a aclarar las cosas:

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.3.png)

## Enlaces de hipertexto

El paquete `hyperref` se ocupará de convertir todas las referencias internas
de su documento en hiperenlaces. Para que esto funcione automáticamente
se requiere algo de magia, así que tendrá que poner:

    \usepackage[pdftex]{hyperref}

Para controlar el comportamiento del paquete `hyperref` se dispone de
muchas opciones:

- `\usepackage[pdftex]{hyperref}`
-  En líneas individuales con la orden `\hypersetup{opciones}`

![img](https://raw.githubusercontent.com/jmv74211/LaTeX/master/images/fig4.5.png)

Al crear PDFs destinados a la impresión, los enlaces coloreados no son
buenos pues acaban siendo grises (y, por tanto, difíciles de leer) en la salida
final. Puede usar cuadros de color, que no se imprimen:

    \usepackage{hyperref}
    \hypersetup{colorlinks=false}

Cuando quiera proporcionar información para la sección Document Info
del fichero PDF:

    \usepackage[pdfauthor={Ludoviko Lazaro Zamenhof},%
    pdftitle={Esperanto: lingvo internacia},%
    pdftex]{hyperref}

Además de los hiperenlaces automáticos para referencias cruzadas, es
posible empotrar enlaces explícitos usando:

    \href{destino}{texto}

El autor de un artículo puede querer que sus lectores le envíen fácilmente
mensajes electrónicos usando la orden `\href` dentro de la orden `\author` en
la página del título del documento:

    \author{Mary Oetiker $<$\href{mailto:mary@oetiker.ch}%
    {mary@oetiker.ch}$>$

---

# Más información

Para más información, se puede consultar la documentación adicional:

- Todo tipo de [plantillas](https://es.overleaf.com/latex/templates/) para LaTeX.

- [Manual básico de LaTeX](https://github.com/jmv74211/LaTeX/blob/master/docs/manuales/lshort_spanish.pdf)

- [Funcionamiento básico de látex](https://github.com/jmv74211/LaTeX/blob/master/docs/1.%20Latex:Funcionamiento%20b%C3%A1sico.pdf)

- [Listas y tablas](https://github.com/jmv74211/LaTeX/blob/master/docs/2.%20Listas%20y%20tablas.pdf)

- [Fórmulas matemáticas](https://github.com/jmv74211/LaTeX/blob/master/docs/3.%20F%C3%B3rmulas%20matem%C3%A1ticas.pdf)

- [Clases de documentos y estructuras](https://github.com/jmv74211/LaTeX/blob/master/docs/4.%20Clases%20de%20documentos%20y%20estructura.pdf)

- [Inclusión de gráficos y elementos flotantes](https://github.com/jmv74211/LaTeX/blob/master/docs/5.%20Inclusi%C3%B3n%20de%20gr%C3%A1ficos%20y%20elementos%20flotantes.pdf)

- [Referencias, Bibliografı́a, Notas al Pie y al Margen](https://github.com/jmv74211/LaTeX/blob/master/docs/6.%20Referencias%2C%20Bibliograf%C4%B1%CC%81a%2C%20Notas%20al%20Pie%20y%20al%20Margen.pdf)

- [Manipulación de Cajas; Escritura a Varias Columnas](https://github.com/jmv74211/LaTeX/blob/master/docs/7.%20Manipulaci%C3%B3n%20de%20Cajas%3B%20Escritura%20a%20Varias%20Columnas.pdf)

- [Nociones de Programación LaTeX](https://github.com/jmv74211/LaTeX/blob/master/docs/8.%20Nociones%20de%20Programaci%C3%B3n%20LaTeX.pdf)

- [Colores](https://github.com/jmv74211/LaTeX/blob/master/docs/9.%20Colores.pdf)

- [Conceptos avanzados sobre estructura de tablas](https://github.com/jmv74211/LaTeX/blob/master/docs/10.%20Conceptos%20avanzados%20sobre%20estructura%20de%20tablas.pdf)

- [Títulos y formatos con el paquete titlesec](https://github.com/jmv74211/LaTeX/blob/master/docs/11.%20T%C3%ADtulos%20y%20formatos%20con%20el%20paquete%20titlesec.pdf)

- [Gráficos con paquete bardiag](https://github.com/jmv74211/LaTeX/blob/master/docs/12.%20Gr%C3%A1ficos%20con%20paquete%20bardiag.pdf)

- [Presentaciones en LaTeX con Beamer](https://github.com/jmv74211/LaTeX/blob/master/docs/13.%20Presentaciones%20en%20LaTeX%20con%20Beamer.pdf)

---

# Referencias

[1] Tobias OetikerHubert Partl, Irene Hyna y Elisabeth Schlegl, Versión 5.03: Agosto 2014, La introducción no-tan-corta a LaTeX, disponible en https://github.com/jmv74211/LaTeX/blob/master/docs/manuales/lshort_spanish.pdf

[2] Raúl Mata Botana, agosto 2008, Tablas en LaTeX, disponible en: https://github.com/jmv74211/LaTeX/blob/master/docs/tablas/tablas.pdf

[3] Figuras: Ondiz-github, disponible en https://github.com/Ondiz/cursoLatex/blob/master/Contenido/Markdown/04.Figuras.md
