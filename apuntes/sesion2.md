# Sesión 2
## 22-02-2019

---

# Estilos de párrafo

      \setlength{\parindent}{0em} % Tabulación de un párrafo nuevo
      \setlength{\parskip}{1em}   % Distancia en blanco entre un párrafo y otro.
      \setlength{\columnsep}{1em} % Margen izquierdo de columnas
      \renewcommand{\baselinestretch}{1.5} % Interlineado. Espacio entre dos renglones.

---

# Enumeración

Paquete para poder configurar las enumeraciones.

    \usepackage{enumerate}


# Colores para el texto

Para usar colores para el texto.

    \usepackage[usenames,dvipsnames]{xcolor}

Colores predefinidos: https://en.wikibooks.org/wiki/LaTeX/Colors

Podemos definir una serie de colores:

    \definecolor{webgreen}{rgb}{0, 0.5, 0} % less intense green
    \definecolor{webblue}{rgb}{0, 0, 0.5}  % less intense blue
    \definecolor{webred}{rgb}{0.5, 0, 0}   % less intense red
    \definecolor{dblackcolor}{rgb}{0.0,0.0,0.0}
    \definecolor{dbluecolor}{rgb}{.01,.02,0.7}
    \definecolor{dredcolor}{rgb}{0.8,0,0}
    \definecolor{dgraycolor}{rgb}{0.30,0.3,0.30}
    \definecolor{RojoAnayelRey}{rgb}{1,.25,.25}

# Definir nuevo comando en látex

Se define con:

    \newcommand{\HRule}{\rule{\linewidth}{1mm}}

El ejemplo anterior crearía una nueva línea cada vez que se use la orden \HRule

# Tamaños de letra

    \tiny
    \scriptsize
    \footnotesize
    \small
    \normalsize
    \large
    \Large
    \LARGE
    \huge
    \Huge

# Estilos de letra

- Negrita

      \textbf{texto en negrita}

- Itálica

      \textit{texto en cursiva}

- Máquina

      \texttt{Texto en tipografía de máquina}

# Título de un trabajo

Se puede definir mediante `\title` antes del *begindocument* y podemos ubicarlo en cualquier parte del documento haciendo uso de la orden:

    \maketitle

# Secciones

Podemos definir el número de inicio de la sección haciendo uso de:

    \setcounter{section}{-1} % Las secciones empezarían por 0.

Definimos las secciones con:

    \section{Nombre sección}

# Enumeraciones

Se desarrollan dentro de un entorno.

- Lista no enumerada con cuadraditos

      \begin{itemize}
        \item item1
        \item item2
        \begin{itemize}
          \item item2.1
          \item item2.2
        \end{itemize}
        \item item3
      \end{itemize}

    Podemos indicar la etiqueta del item usando las órdenes:

          \renewcommand{\labelitemi}{$-$} % Primer nivel de anidamiento
          \renewcommand{\labelitemii}{$\cdot$} % Segundo nivel de anidamiento

- Lista ordenada numéricamente

      \begin{enumerate}
        \item item1
        \item item2
        \begin{enumeratee}
          \item item2.1
          \item item2.2
        \end{enumerate}
        \item item3
      \end{enumerate}

    Podemos indicar la etiqueta del item usando las órdenes:

      \begin{enumerate}[<Símbolo o símbolos>]
      \begin{enumerate}[ {<Símbolo o símbolos>} ]


   En el siguiente ejemplo vamos a continuar el orden numérico de la lista anterior.


    \newcounter{mx} % creamos un contador con el nombre "nx".

    Primera lista de la compra:

    \begin{enumerate}[(A)]
    \item Manzanas.
    \item Plátanos.
    \item Fresas.
    \setcounter{mx}{\value{enumi}} % le damos al contador el valor de la enumeración.
    \end{enumerate}

    Segunda lista de la compra:

    \begin{enumerate}[(A)]
      \setcounter{enumi}{\value{mx}} % reiniciamos la enumeración con el valor del contador.
    \item Limones.
    \item Naranjas.
    \item Pomelos.
    \end{enumerate}    



# Referencias cruzadas

Creamos la referencia con:

    \ref{en:cien} % Sintáxis recomendada: en = enumerate : lo que sea

Usamos la referencia con:

    \label{en:cien}

*Nota: Para usar comillas simples en LaTeX, tenemos que usar comienzo de comilla grave y cerrar con comilla simple.*

vspace se utiliza para añadir un espacio vertical y hspace para añadir espacio horizontal.

      \vspace{4cm}
      \hspace{1cm}

`\hrule`: Línea horizontal
