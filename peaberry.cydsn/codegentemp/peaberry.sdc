# THIS FILE IS AUTOMATICALLY GENERATED
# Project: J:\Ham Radio\ominaSDR\Hardware\Omnia-basic\firmware\peaberryv2iambic\peaberry.cydsn\peaberry.cyprj
# Date: Fri, 23 Oct 2015 02:07:26 GMT
#set_units -time ns
create_clock -name {CyBUS_CLK(routed)} -period 27.083333333333332 -waveform {0 13.5416666666667} [list [get_pins {ClockBlock/clk_bus}]]
create_clock -name {FRAC_CLK(routed)} -period 541.66666666666663 -waveform {0 270.833333333333} [list [get_pins {ClockBlock/dclk_0}]]
create_clock -name {BEAT_CLK(routed)} -period 1000000 -waveform {0 500000} [list [get_pins {ClockBlock/dclk_5}]]
create_clock -name {CyXTAL} -period 41.666666666666664 -waveform {0 20.8333333333333} [list [get_pins {ClockBlock/xtal}]]
create_clock -name {CyILO} -period 10000 -waveform {0 5000} [list [get_pins {ClockBlock/ilo}] [get_pins {ClockBlock/clk_100k}] [get_pins {ClockBlock/clk_1k}] [get_pins {ClockBlock/clk_32k}]]
create_clock -name {CyPLL_OUT} -period 27.083333333333332 -waveform {0 13.5416666666667} [list [get_pins {ClockBlock/pllout}]]
create_clock -name {CyMASTER_CLK} -period 27.083333333333332 -waveform {0 13.5416666666667} [list [get_pins {ClockBlock/clk_sync}]]
create_generated_clock -name {CyBUS_CLK} -source [get_pins {ClockBlock/clk_sync}] -edges {1 2 3} [list [get_pins {ClockBlock/clk_bus_glb}]]
create_clock -name {CyBUS_CLK(fixed-function)} -period 27.083333333333332 -waveform {0 13.5416666666667} [get_pins {ClockBlock/clk_bus_glb_ff}]
create_generated_clock -name {FRAC_CLK} -source [get_pins {ClockBlock/clk_sync}] -edges {1 21 41} -nominal_period 541.66666666666663 [list [get_pins {ClockBlock/dclk_glb_0}]]
create_generated_clock -name {I2S_CLK} -source [get_pins {ClockBlock/clk_sync}] -edges {1 3 7} [list [get_pins {ClockBlock/dclk_glb_1}]]
create_generated_clock -name {Iambic_Clock_1} -source [get_pins {ClockBlock/clk_sync}] -edges {1 3 5} [list [get_pins {ClockBlock/dclk_glb_2}]]
create_generated_clock -name {Debounce_Clock} -source [get_pins {ClockBlock/clk_sync}] -edges {1 369231 738461} -nominal_period 10000000 [list [get_pins {ClockBlock/dclk_glb_6}]]
create_clock -name {CyIMO} -period 41.666666666666664 -waveform {0 20.8333333333333} [list [get_pins {ClockBlock/imo}]]
create_generated_clock -name {Iambic_Clock_Main} -source [get_pins {ClockBlock/clk_sync}] -edges {1 19 37} -nominal_period 500 [list [get_pins {ClockBlock/dclk_glb_3}]]
create_generated_clock -name {CW_Clock} -source [get_pins {ClockBlock/clk_sync}] -edges {1 3693 7385} -nominal_period 100000 [list [get_pins {ClockBlock/dclk_glb_4}]]
create_clock -name {CW_Clock(fixed-function)} -period 99991.666666666657 -waveform {0 27.0833333333333} -nominal_period 100000 [get_pins {ClockBlock/dclk_glb_ff_4}]
create_generated_clock -name {BEAT_CLK} -source [get_pins {ClockBlock/clk_sync}] -edges {1 36925 73847} -nominal_period 1000000 [list [get_pins {ClockBlock/dclk_glb_5}]]

set_false_path -from [get_pins {__ONE__/q}]

# Component constraints for J:\Ham Radio\ominaSDR\Hardware\Omnia-basic\firmware\peaberryv2iambic\peaberry.cydsn\TopDesign\TopDesign.cysch
# Project: J:\Ham Radio\ominaSDR\Hardware\Omnia-basic\firmware\peaberryv2iambic\peaberry.cydsn\peaberry.cyprj
# Date: Fri, 23 Oct 2015 02:07:14 GMT
