# Sesión 3
## 01-03-2019

---

Para poder escribir rápidamente una fórmula simple, podemos utilizar el entorno `$`:. Ejemplo

    $3x + 2y$

## Entornos minipage

En entornos *minipage*, podemos separar las dos bloques usando:

    \begin{minipage}{.45\linewidth}
        lo que sea...
    \end{minipage}

    \begin{minipage}{.45\linewidth}
        lo que sea...
    \end{minipage}

En el caso de que se quiera añadir más separación entre los minipages, podemos usar `\hfill`.

## Entornos tabbing

Sirve para ir separando elementos en columnas mediantes tabulaciones. El entorno usado es el siguiente:

    \begin{tabbing}

    \end{tabbing}

Un posible ejemplo de esto es el siguiente:

    \begin{tabbing}
    Nombre   \= Apellido    \=   Teléfono \\
    Juan   \>  Gómez \> 3141592 \\
    Pedro  \>  Sáenz \> 2718281
    \end{tabbing}

Un truco para alargar el ancho de las tabulaciones es definir una cabecera más larga con caracteres
basura y luego usando `\kill` para no mostrarlos. Esto nos definirá un ancho deseado.

    \begin{tabbing}
    	Nombrexxxxxxxxxx   \= Apellidoxxxxxxx    \=   Teléfonoxxxxxxxx  \kill
    	Nombre   \> Apellido    \>   Teléfono \\
    	Juan   \>  Gómez \> 3141592 \\
    	Pedro  \>  Sáenz \> 2718281
    \end{tabbing}

## Entorno verse

    \begin{verse}
    En la orilla del rí­o \\
    hay un sapo\\
    voy a cogerlo\\
    y se me escapa.
    \end{verse}

## Entornos tabular

...


## Entornos figure

## Inclusión de pdfs

    \usepackage{pdfpages}


## Otros

### Bibliografía

Se puede construir un archivo `.bib` donde se tiene almacenado un conjunto de datos bibliográficos que se haya usado(base de datos) y hacer referencia a dichos ficheros con `bibtex` en el artículo.

### Report

Es como una especie de libro "mal hecho" y de forma rápida. Se utiliza para cuando surgen ideas puntuales y concisas.
