set terminal svg size 800,600
set output "frequency.svg"

set title "Frequency response of cheap 40kHz ultrasonic transducer"
set xlabel "TX Frequency (kHz)"
set ylabel "RX Voltage peak-to-peak (V)"
plot '40kHz_transducer_freq_curve.dat' using 1:2 with linespoints linewidth 2 title "Frequency response"

