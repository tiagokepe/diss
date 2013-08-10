set title "All rounds"
set terminal png
set output "img/all.png"
set style line 1 lt 1 lw 1 pt 3 linecolor rgb "blue"
set style line 2 lt 1 lw 1 pt 2 linecolor rgb "green"
set style line 3 lt 1 lw 1 pt 4 linecolor rgb "red"
set xrange [1:10]
set yrange [265 : 380]
set xlabel "Generation number"
set ylabel "Execution time(s)"
plot "data/all.dat" u 1:2 title "10 generations" with linespoints ls 3, \
     "data/all.dat" u 3:4 title "6 generations" w lp ls 2, \
     "data/all.dat" u 5:6 title "3 generations" w lp ls 1
