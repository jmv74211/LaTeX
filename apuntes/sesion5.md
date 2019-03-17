# Sesión 5
## 15-03-2019

---

# Beamer

Beamer es una clase de documento especialmente diseñada para presentaciones que utilicen recursos LaTeX

Requiere necesariamente la compilación a través de PDFLaTeX

Estructura básica del preámbulo del documento:

      \documentclass[12pt]{beamer}
      \usepackage{Paquete 1}
      \usepackage{Paquete 2}
      ...
      \mode<presentation>{\usetheme{Madrid}}
      \title{Ejemplo de Presentación en Beamer (I)}
      \author{Asignatura de LaTeX}
      \begin{document}
      \end{document}

## Títulos

Comenzamos colocando el título (tras `\begin{document}` ) con: `\frame{\titlepage}`.

Para cada nueva transparencia, escribimos:

      \begin{frame}[Opciones]
      \frametitle{Título del frame}
      Material del frame
      \end{frame}

En el argumento optativo **[Opciones]** podemos utilizar:
-  `t`, `c`, `b`
- `plain`: Elimina encabezamientos, pies y barras laterales.
Útil para frames que incluyan gráficos de grandes dimensiones.
