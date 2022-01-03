#input params:
# * source
# * from
# * to

set terminal svg size 800,500
set object 1 rectangle from screen 0,0 to screen 1,1 fillcolor rgb"white" behind
set output 'poland-'.source.'-capacity-factor.svg'

datafile = source.'.csv'
set datafile separator ","
stats datafile using 1:(100*$2*1000/$5/24/365) nooutput
max_y = STATS_max_y
stats datafile using (last_value=100*$2*1000/$5/24/365) every ::STATS_records::STATS_records nooutput

last_value_format = "%2.2f %%%%"
call "label_last_value.fct

set grid
set xtics rotate by 60 right
set xtics 1
set format y "%g %%"  

plot datafile using 1:(100*$2*1000/$5/24/365) notitle with linespoints lt 3 lw 4 pt 7 linecolor rgb "blue"
