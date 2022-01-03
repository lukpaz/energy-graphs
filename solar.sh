FROM=2010
TO=2020
gnuplot -e "source='solar';from=$FROM;to=$TO" generation.gp
gnuplot -e "source='solar';from=$FROM;to=$TO" power.gp
gnuplot -e "source='solar';from=$FROM;to=$TO" share.gp
gnuplot -e "source='solar';from=$FROM;to=$TO" capacity-factor.gp

