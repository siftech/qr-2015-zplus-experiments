set terminal pdfcairo color solid font 'Helvetica,14' enhanced
set boxwidth 0.9 absolute

set key outside top right horizontal noreverse noenhanced autotitles nobox

set style fill   solid 1.00 border lt -1
set style histogram clustered gap 1 title  offset character 0, 0, 0
set style data histograms

set datafile missing '-'

set border 1

#set xtics rotate by -45
set xtics border in scale 0,0 nomirror  offset character 0, 0, 0 autojustify
set xtics norangelimit
set xtics ()

set ytics scale 0,0

set yrange [ 0 : 100 ] noreverse nowriteback

set grid layerdefault   linetype 0 linewidth 1.000,  linetype 0 linewidth 1.000
set grid noxtics nomxtics nox2tics nomx2tics \
         ytics nomytics noy2tics nomy2tics \
         noztics nomztics \
         nocbtics nomcbtics nopolar
