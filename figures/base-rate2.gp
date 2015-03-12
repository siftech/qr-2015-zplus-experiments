set output "2report-base-rate.pdf"
set terminal pdfcairo monochrome solid font 'Helvetica,14'

unset arrow
unset label
# set key off
set grid
set zrange [0:1]
set yrange [0.00001:0.1]
set xrange [0.00001:0.1]
set palette gray
set logscale x
set logscale y
set xtics offset 0.75,-0.25,0
set ytics offset 1.25,-0.75,0
set ztics 0.2
set xlabel "False alarm probability" offset 0,-1.5,0
set ylabel "Attack probability" offset -1,-2.5,0
set zlabel "False positive probability" rotate by 90 offset 1,-1,0
# set title "Fusion false positive" #\nz = f(x,y)/(f(x,y) + y)"

f(x,y) = (x**2) * (1 - y) # false positive
g(x,y) = x * (1 - y)
splot f(x,y)/(f(x,y) + y) title "Fusion false positive" ls 11 lw 1 lc 1, \
      g(x,y)/(g(x,y) + y) title "Single sensor false positive" ls 14 lw 1 lc 3



