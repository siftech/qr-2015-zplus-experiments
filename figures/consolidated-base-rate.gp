set output "consolidated-base-rate.pdf"
set terminal pdfcairo monochrome solid font 'Helvetica,11'
set lmargin 0
set rmargin 0
set tmargin 0
set bmargin 0
set multiplot layout 1,3 scale 0.90,0.5 # title "False positive probabilities"
set xyplane 0
set hidden3d
unset arrow
unset label
set grid
set logscale x
set logscale y
set nokey
set contour base
set cntrparam levels discrete 0.25, 0.5, 0.75

# set xlabel "False alarm probability" offset 0,-1.5,0 rotate by 90
unset xlabel
set xtics offset 0.75,-0.25,0 rotate by -45 font 'Helvetica,7'
set xrange [0.00001:0.1] noreverse nowriteback

# set ylabel "Attack probability" offset -1,-2.5,0
unset ylabel
set yrange [0.00001:0.1] noreverse nowriteback
set ytics offset 1.75,-0.25,0 rotate by 45 font 'Helvetica,7'

set zrange [0:1]
set ztics 0.2 rotate by -45 font 'Helvetica,7'

f(x,y) = (x**3) * (1 - y) # false positive
g(x,y) = (x**2) * (1 - y) # false positive
h(x,y) = x * (1 - y)

# set title "3 sensors"
splot f(x,y)/(f(x,y) + y) with lines lc rgb '#0060ad'

# set title "2 sensors"
splot g(x,y)/(g(x,y) + y) with lines lc rgb '#0060ad'

# set title "Single sensor"
splot h(x,y)/(h(x,y) + y) with lines lc rgb '#0060ad'
unset multiplot
