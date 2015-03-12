load "gp-histogram.gp"
set output "base-rate.pdf"
set size 1,0.75
set xlabel "Attack event probability"

# plot 'base-rate.csv' using \
#       2:xtic(1) ti col, '' u 3 ti col, '' u 4 ti col, '' u 5 ti col

set yrange [ 90 : 100 ] noreverse nowriteback
plot 'base-rate.csv' using \
     2:xtic(1) ti col lc rgb '#0060ad', \
     '' u 3 ti col lc rgb '#ffff80'
