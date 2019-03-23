set table "gnuplot/Bode/6.table"; set format "%.5f"
set samples 50.0; set parametric; plot [t=-1:2] [] [] log10(10**t),-180/3.1415957*atan(2*10**t)+-90
