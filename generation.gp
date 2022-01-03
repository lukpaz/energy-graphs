#input params:
# * source
# * from
# * to

set terminal svg size 800,500
set object 1 rectangle from screen 0,0 to screen 1,1 fillcolor rgb"white" behind
set output 'poland-'.source.'-generation.svg'

set xrange [(from-1):(to+1)]
if (exists("ymax")) set yrange[0:ymax]
set grid
set xtics rotate by 60 right
set boxwidth 0.8 relative

set ylabel "GWh" 
set for [i=(from):to] xtics (i)

set datafile separator ","

plot source.'.csv' using 1:2 notitle with boxes fs solid 0.5 lc rgb "blue" 
   
