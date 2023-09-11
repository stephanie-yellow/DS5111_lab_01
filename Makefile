default:
	cat Makefile

synthetic_data.csv:
	wget synthetic_data.csv https://gist.github.com/Niarfe/25100a860cbb660150a3fec87378d8ac

square_wave.png:
	gnuplot -e "set datafile separator ','; set term png; set outp
t '<output>.png'; plot 'synthetic_data.csv' using 1:2 with lines"

fibonachi.png:
	gnuplot -e "set datafile separator ','; set term png; set output
t '<output>.png'; plot 'synthetic_data.csv' using 1:3 with lines"

clean:
	rm -f synthetic_data.csv square_wave.png fibonachi.png

all_images:
	make square_wave.png
	make fibonachi.png


