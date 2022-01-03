FROM=2000
TO=2020
gnuplot -e "source='wind';from=$FROM;to=$TO" generation.gp
gnuplot -e "source='wind';from=$FROM;to=$TO" power.gp
gnuplot -e "source='wind';from=$FROM;to=$TO" share.gp
gnuplot -e "source='wind';from=2010;to=$TO" capacity-factor.gp
