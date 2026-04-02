## Clock signal (100 MHz)
set_property PACKAGE_PIN W5 [get_ports clk_in1_0]
    set_property IOSTANDARD LVCMOS33 [get_ports clk_in1_0]
    create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk_in1_0]

## Switches (sw_0[7:0])
set_property PACKAGE_PIN V17 [get_ports {sw_0[0]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {sw_0[0]}]
set_property PACKAGE_PIN V16 [get_ports {sw_0[1]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {sw_0[1]}]
set_property PACKAGE_PIN W16 [get_ports {sw_0[2]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {sw_0[2]}]
set_property PACKAGE_PIN W17 [get_ports {sw_0[3]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {sw_0[3]}]
set_property PACKAGE_PIN W15 [get_ports {sw_0[4]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {sw_0[4]}]
set_property PACKAGE_PIN V15 [get_ports {sw_0[5]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {sw_0[5]}]
set_property PACKAGE_PIN W14 [get_ports {sw_0[6]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {sw_0[6]}]
set_property PACKAGE_PIN W13 [get_ports {sw_0[7]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {sw_0[7]}]

## PWM Output (Pmod Header JA, Pin 1)
set_property PACKAGE_PIN J1 [get_ports pwm_out_0]
    set_property IOSTANDARD LVCMOS33 [get_ports pwm_out_0]

## Configuration bits for Basys 3
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
