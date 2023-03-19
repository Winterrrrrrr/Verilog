#从右往左数
#第三个拨码开关是EN
#第二个拨码开关是D1
#第一个拨码开关是D0
set_property PACKAGE_PIN W16 [get_ports {EN}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {EN}]
set_property PACKAGE_PIN V16 [get_ports {D1}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {D1}]
set_property PACKAGE_PIN V17 [get_ports {D0}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {D0}]

#给开关加个led指示灯
set_property PACKAGE_PIN U16 [get_ports {led[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
set_property PACKAGE_PIN E19 [get_ports {led[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
set_property PACKAGE_PIN U19 [get_ports {led[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]

#数码管
set_property PACKAGE_PIN W7 [get_ports {a_to_g[6]}]			
    set_property IOSTANDARD LVCMOS33 [get_ports {a_to_g[6]}]
set_property PACKAGE_PIN W6 [get_ports {a_to_g[5]}]	
    set_property IOSTANDARD LVCMOS33 [get_ports {a_to_g[5]}]
set_property PACKAGE_PIN U8 [get_ports {a_to_g[4]}]	
    set_property IOSTANDARD LVCMOS33 [get_ports {a_to_g[4]}]
set_property PACKAGE_PIN V8 [get_ports {a_to_g[3]}]	
    set_property IOSTANDARD LVCMOS33 [get_ports {a_to_g[3]}]
set_property PACKAGE_PIN U5 [get_ports {a_to_g[2]}]	
    set_property IOSTANDARD LVCMOS33 [get_ports {a_to_g[2]}]
set_property PACKAGE_PIN V5 [get_ports {a_to_g[1]}]	
    set_property IOSTANDARD LVCMOS33 [get_ports {a_to_g[1]}]
set_property PACKAGE_PIN U7 [get_ports {a_to_g[0]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {a_to_g[0]}]

#只让最后一个管子亮
set_property PACKAGE_PIN U2 [get_ports {AN[0]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {AN[0]}]
set_property PACKAGE_PIN U4 [get_ports {AN[1]}]	
    set_property IOSTANDARD LVCMOS33 [get_ports {AN[1]}]
set_property PACKAGE_PIN V4 [get_ports {AN[2]}]		
    set_property IOSTANDARD LVCMOS33 [get_ports {AN[2]}]
set_property PACKAGE_PIN W4 [get_ports {AN[3]}]	
    set_property IOSTANDARD LVCMOS33 [get_ports {AN[3]}]





