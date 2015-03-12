load "gp-histogram.gp"
set output "crowding-sensors.pdf"
set xtics rotate by -45
set xlabel "Distribution of num-events"
plot 'crowding-sensors.csv' using \
     2:xtic(1) ti col lc rgb '#0060ad', \
     '' u 3 ti col lc rgb '#ffff80'

