set table "gnuplot/Bode/8.table"; set format "%.5f"
set samples 50.0; set parametric; plot [t=-1:2] [] [] log10(10**t),-180/3.1415957*atan(0.1*10**t)+--180/3.1415957*atan((10*0.1)*10**t)+2*-90
