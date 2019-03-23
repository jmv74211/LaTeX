set table "gnuplot/Bode/7.table"; set format "%.5f"
set samples 50.0; set parametric; plot [t=-1:2] [] [] log10(10**t),(t<log10(1/(0.1))? 0:-90)+-(t<log10(1/((10*0.1)))? 0:-90)+2*-90
