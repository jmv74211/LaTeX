set table "gnuplot/Bode.tex.preview/3.table"; set format "%.5f"
set samples 50.0; set parametric; plot [t=-1:2] [] [] log10(10**t),(t<log10(1/(0.1))?20*log10(4):+20*log10(4/(0.1))-20*log10(10**t))+(t<log10(1/(10*0.1))?20*log10(1):+20*log10(1*(10*0.1))+20*log10(10**t))+2*20*log10(abs(1/(10**t)))
