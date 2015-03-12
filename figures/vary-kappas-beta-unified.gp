load "gp-histogram.gp"
set size 1,0.75
set output "vary-kappas-beta-unified.pdf"
set yrange [ 90 : 100 ] noreverse nowriteback
set xlabel "Virtual sample size ({/Symbol a}+{/Symbol b})"

# plot newhistogram "Unsmoothed", \
#     'vary-kappas-beta-unified.csv' using 2:xtic(1) ti col lc rgb '#0060ad', \
#     '' u 3 ti col lc rgb '#ffff80', \
#   newhistogram "Smoothed", \
#     '' u 4:xtic(1) notitle lc rgb '#0060ad', \
#     '' u 5 notitle lc rgb '#ffff80'

plot 'vary-kappas-beta-unified.csv' using 2:xtic(1) ti col lc rgb '#0060ad', \
     '' u 3 ti col lc rgb '#ffff80', \
