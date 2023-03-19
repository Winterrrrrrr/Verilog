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
set_property PACKAGE_PIN L1 [get_ports {led[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]

#投入1元，从左往右数第二盏led灯亮
set_property PACKAGE_PIN P1 [get_ports {led[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]

#投入0.5元，从左往右数第三盏灯亮 
set_property PACKAGE_PIN N3 [get_ports {led[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]

#若输出饮料，则最右边的led灯亮
set_property PACKAGE_PIN U16 [get_ports {led[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]

#若找零，则从右往左数第二盏led灯亮
set_property PACKAGE_PIN E19 [get_ports {led[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]


