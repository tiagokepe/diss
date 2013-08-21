set title "First Round"
set terminal png
set output "img/3gen.png"
set style line 1 lt 1 lw 1 pt 3 linecolor rgb "blue"
set xrange [1:3]
set yrange [330 : 345]
set xlabel "Generation number"
set ylabel "Runtime(s)"
plot "data/3gen.dat" u 1:2 title "BA convergence" with linespoints ls 1
