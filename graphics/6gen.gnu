set title "Second Round"
set terminal png
set output "img/6gen.png"
set style line 2 lt 1 lw 1 pt 2 linecolor rgb "green"
set xrange [1:6]
set yrange [310 : 385]
set xlabel "Generation number"
set ylabel "Runtime(s)"
plot "data/6gen.dat" u 1:2 title "BA performance" with linespoints ls 2
