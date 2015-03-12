load "gp-histogram.gp"
set output "point-distributions.pdf"
set size 1,0.7
# set xlabel "Translations of qualitative probabilities"

plot \
  newhistogram '3 sensors per event', \
    'point-distributions.csv' using 2:xtic(1) ti col lc rgb '#0060ad', \
    '' u 3 ti col lc rgb '#ffff80', \
  newhistogram '2 sensors per event', \
    '' u 4:xtic(1) notitle lc rgb '#0060ad', \
    '' u 5 notitle lc rgb '#ffff80'
