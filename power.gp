#input params:
# * source
# * from

set terminal svg size 800,500
set object 1 rectangle from screen 0,0 to screen 1,1 fillcolor rgb"white" behind
set output 'poland-'.source.'-power.svg'

datafile = source.'.csv'
set datafile separator ","
stats datafile using 1:4 nooutput
max_y = STATS_max_y
stats datafile using (last_value=$4) every ::STATS_records::STATS_records nooutput

last_value_format = "%d MW"
to = 2019
call "label_last_value.fct

set grid
set xtics rotate by 60 right
set xtics 1
set format y "%g MW"  


plot source.'.csv' using 1:4 notitle with linespoints lt 3 lw 4 pt 7 linecolor rgb "blue"

