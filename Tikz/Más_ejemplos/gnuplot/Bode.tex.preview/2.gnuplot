set table "gnuplot/Bode.tex.preview/2.table"; set format "%.5f"
set samples 50.0; set parametric; plot [t=-1:1.35] [] [] log10(10**t),20*log10(abs(4/sqrt(1+(2.0*10**t)**2)))+20*log10(abs(1/(10**t)))
