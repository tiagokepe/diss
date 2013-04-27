reset
set title "TestData Size"
set xlabel "Iteration"
set ylabel "Size (MB)"
set key box 
set key left top
set terminal postscript enhanced color      
set output '| ps2pdf - DataSize.pdf'                          
#set logscale x 2
#set logscale y 10
#set format y "%2.e"
#[x=16:8192]
plot \
     'DataSize.dat'  using ($1):($2)  title "WordCount"  w linespoints, \
     'DataSize.dat'  using ($1):($3)  title "BFS"  w linespoints
     
