#时钟信号
set_property PACKAGE_PIN W5 [get_ports CP]							
	set_property IOSTANDARD LVCMOS33 [get_ports CP]
#create_generated_clock -name CP_20ms -source [get_ports CP] -divide_by 2000000 [get_ports CP_20ms]
#create_generated_clock -name CP_1s -source [get_ports CP] -divide_by 100000000 [get_ports CP_1s]

#最左边的开关是异步置零端
set_property PACKAGE_PIN R2 [get_ports {Rst_async_n}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {Rst_async_n}]
#最上面的按键是投入1元
set_property PACKAGE_PIN T18 [get_ports {Button[1]}]						
	set_property IOSTANDARD LVCMOS33 [get_ports {Button[1]}]
#最左边的按键是投入0.5元
set_property PACKAGE_PIN W19 [get_ports {Button[0]}]						
	set_property IOSTANDARD LVCMOS33 [get_ports {Button[0]}]

#若开始工作，则最左边的led灯亮
set_property PACKAGE_PIN L1 [get_ports {led[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]

#投入1元，从左往右数第二盏led灯亮
set_property PACKAGE_PIN P1 [get_ports {led[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]

#投入0.5元，从左往右数第三盏灯亮 
set_property PACKAGE_PIN N3 [get_ports {led[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]

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

#调节管子
set_property PACKAGE_PIN U2 [get_ports {an[0]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}]
set_property PACKAGE_PIN U4 [get_ports {an[1]}]	
    set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}]
set_property PACKAGE_PIN V4 [get_ports {an[2]}]		
    set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}]
set_property PACKAGE_PIN W4 [get_ports {an[3]}]	
    set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}]

