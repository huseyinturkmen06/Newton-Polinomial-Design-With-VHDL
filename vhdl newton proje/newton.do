vcom newton.vhd
vsim newton
add wave *

force x0 -3.0 0
force x1 -2.0 0
force x2 -1.0 0
force x3 0.0 0
force x4 1.0 0
force x5 2.0 0
force x6 3.0 0
force x7 4.0 0

force y0 -245.0 0
force y1 -33.0 0
force y2 -1.0 0
force y3 1.0 0
force y4 3.0 0
force y5 35.0 0
force y6 247.0 0
force y7 1029.0 0



run 50 ns