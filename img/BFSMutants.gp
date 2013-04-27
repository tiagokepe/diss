reset
set title "Breadth-First Search"
set xlabel "Iteration"
set ylabel "Delay (sec.)"
set key box 
set key left top
set terminal postscript enhanced color      
set output '| ps2pdf - BFSMutants.pdf'                          
#set logscale x 2
#set logscale y 10
#set format y "%2.e"
#[x=16:8192]
plot \
     'BFSMutants.dat'  using ($1):($2)  title "M0"  w linespoints, \
     'BFSMutants.dat'  using ($1):($3)  title "M1"  w linespoints
     
