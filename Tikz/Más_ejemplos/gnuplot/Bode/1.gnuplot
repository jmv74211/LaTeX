set table "gnuplot/Bode/1.table"; set format "%.5f"
set samples 50.0; set parametric; plot [t=-1:1.35] [] [] log10(10**t),(t<log10(1/(2.0))?20*log10(4):+20*log10(4/(2.0))-20*log10(10**t))+20*log10(abs(1/(10**t)))
