set title "Third Round"
set terminal png
set output "img/10gen.png"
set style line 3 lt 1 lw 1 pt 4 linecolor rgb "red"
set xrange [1:10]
set yrange [255 : 330]
set xlabel "Generation number"
set ylabel "Runtime(s)"
plot "data/10gen.dat" u 1:2 title "BA Convergence" with linespoints ls 3
