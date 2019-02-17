onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib midterm_1_practice_opt

do {wave.do}

view wave
view structure
view signals

do {midterm_1_practice.udo}

run -all

quit -force
