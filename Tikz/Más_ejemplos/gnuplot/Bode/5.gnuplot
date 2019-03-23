set table "gnuplot/Bode/5.table"; set format "%.5f"
set samples 50.0; set parametric; plot [t=-1:2] [] [] log10(10**t),(t<log10(1/(2.0))? 0:-90)+-90
